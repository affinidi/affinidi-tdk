import { PEX, IPresentationDefinition as PresentationDefinition } from '@sphereon/pex'
import { PresentationSubmission } from '@sphereon/pex-models'
import { VerifiableCredential } from 'models/verifiableCredential'
import { VerifiablePresentation } from 'models/verifiablePresentation'
import { nanoid } from 'nanoid'

export class PexProcessor {
  private isEvaluatedWithOutErrors(result: any): boolean {
    const { errors, warnings } = result
    return errors?.length === 0 && warnings?.length === 0
  }

  matchVcsWithPresentationDefinition(input: {
    presentationDefinition: PresentationDefinition
    allVcs: VerifiableCredential[]
  }): { matchedVCs : VerifiableCredential[], requiredCredentialsPresent: boolean}  {
    const pex = new PEX()
    const { verifiableCredential, areRequiredCredentialsPresent,  warnings, errors} = pex.selectFrom(input.presentationDefinition as any, input.allVcs as any[])

    if (!this.isEvaluatedWithOutErrors({warnings, errors}) || areRequiredCredentialsPresent === 'error') {
      throw "Not enough VCs";
    }

    const matchedVCs: VerifiableCredential[] = []
    for (const vc of verifiableCredential as unknown as VerifiableCredential[]) {
      if (vc.id && matchedVCs.some(matchedVC => matchedVC.id === vc.id)) {
        continue
      }

      matchedVCs.push(vc as VerifiableCredential)
    }

    return ({matchedVCs, requiredCredentialsPresent : true });
  }

  generateVpTokenFromMatchedVcs(input: {
    presentationDefinition: PresentationDefinition
    matchedVcs: VerifiableCredential[]
    holderDid: string
  }):
    | {
      unsignedVpToken: VerifiablePresentation
      presentationSubmission: PresentationSubmission
    }
    | undefined {
    const pex = new PEX()
    const { verifiableCredential } = pex.selectFrom(input.presentationDefinition, input.matchedVcs as any[])

    if (!verifiableCredential?.length) {
      return
    }

    const { presentationSubmission } = pex.presentationFrom(input.presentationDefinition, verifiableCredential, {
      holderDID: input.holderDid,
    })

    const unsignedVpToken: VerifiablePresentation = {
      id: `claimId:${nanoid()}`,
      type: ['VerifiablePresentation'],
      '@context': ['https://www.w3.org/2018/credentials/v1'],
      verifiableCredential: verifiableCredential as unknown as VerifiableCredential[],
      holder: {
        id: input.holderDid,
      },
    }

    return { unsignedVpToken, presentationSubmission }
  }
}
