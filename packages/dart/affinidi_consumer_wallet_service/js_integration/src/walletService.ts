import { VCV1Unsigned } from '@affinidi/vc-common'

import { KeysService, DidDocumentService } from '@affinidi/common'
import { AffinidiWalletV6, Types } from '@affinidi/wallet-react-native-sdk'
import { Buffer } from 'buffer'
import encode from 'base64url'
import { VPV1Unsigned } from '@affinidi/wallet-core-sdk'
import base58 from 'bs58'
import secp256k1 from 'secp256k1'
import base64url from 'base64url'
import * as jose from "jose";
import Ajv from "ajv"
import { AxiosError } from "axios";
import jsonwebtoken from "jsonwebtoken";
import { importJWK, jwtVerify } from 'jose'

type NetworkMemberWithCognito = Awaited<ReturnType<(typeof AffinidiWalletV6)['completeLogInPasswordless']>>
type NetworkMemberWithoutCognito = Awaited<ReturnType<(typeof AffinidiWalletV6)['createWallet']>>

globalThis.Buffer = Buffer

const OLD_SCHEMA_DOMAIN = 'https://schema.affinidi.com'
const DEFAULT_SCHEMA_DOMAIN = 'https://schema.affinidi.io'
const DEFAULT_KEY_ALGO_TYPE = 'ecdsa'
const MULTIBASE_ENCODED_BASE58_IDENTIFIER = 'z'

type Wallet = NetworkMemberWithCognito | NetworkMemberWithoutCognito

function encodeObjectToJWT(object: {
  header: Record<string, string>
  payload: Record<string, unknown>
  signature: Buffer
}): string {
  const { header, payload, signature } = object

  if (!payload || !header || !signature) {
    throw new Error(
      'The JWT is not complete, header / payload / signature are missing',
    )
  }

  return [
    encode(JSON.stringify(header)),
    encode(JSON.stringify(payload)),
    encode(signature),
  ].join('.')
}

function signJWT(
  input: {
    header: Record<string, string>
    payload: Record<string, unknown>
  },
  ks: KeysService,
): string {
  const { header, payload } = input

  const toSign = [
    encode(JSON.stringify(header)),
    encode(JSON.stringify(payload)),
  ].join('.')

  const buffer = Buffer.from(toSign)
  const digest = KeysService.sha256(buffer)
  const signature = ks.sign(digest)

  return encodeObjectToJWT({ header, payload, signature })
}
async function signAssertion(
  ks: KeysService,
  did: string,
  kid: string,
  aud: string,
) {
  const issueTimeS = Math.floor(new Date().getTime() / 1000)
  const payload = {
    iss: did,
    sub: did,
    aud,
    jti: 'test',
    exp: issueTimeS + 5 * 60,
    iat: issueTimeS,
  }
  const header = {
    alg: 'ES256K',
    kid,
  }

  return signJWT({ header, payload }, ks)
}

export class WalletService {
  constructor() {
    this.wallet = {} as Wallet
  }

  private coreOptions: Types.SdkOptions = {
    env: 'dev',
    skipAnchoringForElemMethod: true,
    accessApiKey: 'fake-api-key-hash',
    didMethod: 'key',
  }

  private wallet: Wallet | null

  public async createWallet(key: string) {
    this.wallet = proxifyPropertyAccess(await AffinidiWalletV6.createWallet(this.coreOptions, key))
    return this
  }

  public async openWalletByEncryptedSeed(encryptedSeed: string, encryptionKey: string) {
    this.wallet = proxifyPropertyAccess(
      await AffinidiWalletV6.openWalletByEncryptedSeed(this.coreOptions, encryptedSeed, encryptionKey),
    )
    return this
  }

  public closeWallet() {
    this.wallet = null
    return this;
  }

  public async signUnsignedPresentation({
    vp,
    challenge,
    domain,
  }: {
    vp: VPV1Unsigned
    challenge: string
    domain: string
  }) {
    return this.wallet!.signUnsignedPresentation(vp, challenge, domain)
  }

  public signUnsignedCredential(unsignedCredential: VCV1Unsigned) {
    return this.wallet!.signUnsignedCredential(unsignedCredential, DEFAULT_KEY_ALGO_TYPE)
  }

  public get did() {
    return this.wallet!.did
  }

  public get encryptedSeed() {
    return this.wallet!.encryptedSeed
  }

  public get password() {
    return this.wallet!.password
  }
}

interface JwtPayloadExtended extends jsonwebtoken.JwtPayload {
  client_id?: string;
}

const proxifyPropertyAccess = <T extends {}>(initialTarget: T) =>
  new Proxy(initialTarget, {
    get(target, property) {
      if (property in target) {
        return Reflect.get(target, property)
      } else {
        throw new Error('Property is not initialized!')
      }
    },
  })