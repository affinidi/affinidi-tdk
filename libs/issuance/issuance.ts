import { Cwe } from './helpers/cwe'
import { parse } from 'did-resolver'
import { randomBytes } from 'crypto'

export interface IIssuanceParams {
  projectScopedToken: string
  apiGatewayUrl: string
}

export interface IBuildUnsignedCredentialInput {
  jsonLdContextUrl?: string
  jsonSchemaUrl?: string
  id: string
  credentialType: string
  holderId: string
  credentialSubject: Record<string, any>
  issuanceDate: string
  expirationDate?: string
}

export interface IUnsignedW3cCredential {
  context: { [key: string]: any }
  id: string
  credentialType: string[]
  holder: { [key: string]: any }
  credentialSubject: { [key: string]: any }
  issuanceDate: string
  expirationDate?: string | undefined
  credentialSchema?: { [key: string]: any }
}

export interface IBuildUnsignedVCInput {
  /**
   * @deprecated credentialType is deprecated.
   Use "typeName", "jsonLdContextUrl" and "jsonSchemaUrl" instead.
   */
  credentialType?: string
  /** Optional only if type defined */
  jsonLdContextUrl?: string
  /** Optional only if type defined */
  jsonSchemaUrl?: string
  /** Required when type field is not given, will be used as a type of cred when passed */
  typeName?: string

  credentialSubject?: { [key: string]: any }

  /**
   * @deprecated data is deprecated.
   * Use "credentialSubject" instead.
   */
  data?: { [key: string]: any }

  /**
   * @pattern ^did:.*$
   */
  holderDid: string

  expiresAt?: string | undefined
}

export class Issuance {
  private readonly authProvider
  private readonly apiGatewayUrl: string = ''
  private readonly cwe: Cwe

  constructor({ authProvider, apiGatewayUrl }: { [key: string]: any }) {
    this.authProvider = authProvider
    this.apiGatewayUrl = apiGatewayUrl
    this.cwe = new Cwe({
      authProvider: this.authProvider,
      apiGatewayUrl: this.apiGatewayUrl,
    })
  }

  private buildUnsignedCredential = ({
    credentialSubject,
    jsonLdContextUrl,
    jsonSchemaUrl,
    expirationDate,
    issuanceDate,
    holderId,
    credentialType: credType,
    id,
  }: IBuildUnsignedCredentialInput): IUnsignedW3cCredential => ({
    context: ['https://www.w3.org/2018/credentials/v1', jsonLdContextUrl],
    id,
    credentialType: ['VerifiableCredential', credType],
    holder: {
      id: holderId,
    },
    credentialSubject,
    ...(jsonSchemaUrl && {
      credentialSchema: {
        id: jsonSchemaUrl,
        type: 'JsonSchemaValidator2018',
      },
    }),
    issuanceDate,
    expirationDate,
  })

  public async buildUnsignedVC(input: any): Promise<{ [key: string]: any }> {
    const {
      credentialSubject,
      holderDid,
      expiresAt,
      typeName,
      credentialType,
      data,
      jsonLdContextUrl,
      jsonSchemaUrl,
    }: IBuildUnsignedVCInput = input

    if ((data && credentialSubject) || (!data && !credentialSubject)) {
      throw new Error('"data" or "credentialSubject" must be provided')
    }

    const {
      context,
      credentialType: credType,
      ...unsignedCredentialRaw
    } = this.buildUnsignedCredential({
      credentialSubject: credentialSubject ?? { data },
      jsonLdContextUrl,
      jsonSchemaUrl,
      expirationDate: expiresAt ? new Date(expiresAt).toISOString() : undefined,
      issuanceDate: new Date().toISOString(),
      holderId: parse(holderDid)!.did,
      credentialType: typeName || (credentialType as string),
      id: `claimId:${randomBytes(8).toString('hex')}`, // This import was originally from @affinidi/common
    })

    const unsignedCredential = {
      ...unsignedCredentialRaw,
      type: credType,
      '@context': context,
    }

    return { unsignedCredential }
  }

  public async issueVC(
    vc: any,
    walletId: string,
  ): Promise<{ [key: string]: any }> {
    const signedCredential = await this.cwe.signCredential(walletId, vc)

    return signedCredential
  }
}
