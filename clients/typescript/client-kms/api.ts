/* tslint:disable */
/* eslint-disable */
/**
 * KeyManagementService
 * Affinidi Key Management Service
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: nucleus.team@affinidi.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import type { Configuration } from './configuration';
import type { AxiosPromise, AxiosInstance, RawAxiosRequestConfig } from 'axios';
import globalAxios from 'axios';
// Some imports not used depending on template conditions
// @ts-ignore
import {
  DUMMY_BASE_URL,
  assertParamExists,
  setApiKeyToObject,
  setBasicAuthToObject,
  setBearerAuthToObject,
  setOAuthToObject,
  setSearchParams,
  serializeDataIfNeeded,
  toPathString,
  createRequestFunction,
} from './common';
import type { RequestArgs } from './base';
// @ts-ignore
import {
  BASE_PATH,
  COLLECTION_FORMATS,
  BaseAPI,
  RequiredError,
  operationServerMap,
} from './base';

/**
 * DTO contains configuration to create a key from the seed
 * @export
 * @interface CreateKeysConfigInputDto
 */
export interface CreateKeysConfigInputDto {
  /**
   *
   * @type {string}
   * @memberof CreateKeysConfigInputDto
   */
  derivationPath: string;
}
/**
 * DTO contains result of key config creation
 * @export
 * @interface CreateKeysConfigResultDto
 */
export interface CreateKeysConfigResultDto {
  /**
   * id of the key record
   * @type {string}
   * @memberof CreateKeysConfigResultDto
   */
  id?: string;
  /**
   * ARI of the key record
   * @type {string}
   * @memberof CreateKeysConfigResultDto
   */
  ari?: string;
  /**
   * id of the parent seed record
   * @type {string}
   * @memberof CreateKeysConfigResultDto
   */
  seedId?: string;
  /**
   * ARI of the parent seed record
   * @type {string}
   * @memberof CreateKeysConfigResultDto
   */
  seedAri?: string;
  /**
   * public key of the key config in HEX format
   * @type {string}
   * @memberof CreateKeysConfigResultDto
   */
  publicKeyHex?: string;
}
/**
 * DTO contains a result of the seed record creation
 * @export
 * @interface CreateSeedResultDto
 */
export interface CreateSeedResultDto {
  /**
   * id of the seed record
   * @type {string}
   * @memberof CreateSeedResultDto
   */
  id?: string;
  /**
   * ARI of the seed record
   * @type {string}
   * @memberof CreateSeedResultDto
   */
  ari?: string;
}
/**
 * DTO contains data to be decrypted
 * @export
 * @interface DecryptByPrivateKeyInputDto
 */
export interface DecryptByPrivateKeyInputDto {
  /**
   *
   * @type {string}
   * @memberof DecryptByPrivateKeyInputDto
   */
  encryptedData: string;
}
/**
 * DTO contains decrypted data
 * @export
 * @interface DecryptByPrivateKeyResultDto
 */
export interface DecryptByPrivateKeyResultDto {
  /**
   *
   * @type {string}
   * @memberof DecryptByPrivateKeyResultDto
   */
  decryptedData: string;
}
/**
 * Detail of an error
 * @export
 * @interface ErrorDetail
 */
export interface ErrorDetail {
  /**
   *
   * @type {string}
   * @memberof ErrorDetail
   */
  message?: string;
}
/**
 * DTO contains a result of the seed exporting
 * @export
 * @interface ExportSeedResultDto
 */
export interface ExportSeedResultDto {
  /**
   * mnemonic of the seed
   * @type {string}
   * @memberof ExportSeedResultDto
   */
  mnemonic?: string;
}
/**
 * DTO contains key record
 * @export
 * @interface GetKeyResultDto
 */
export interface GetKeyResultDto {
  /**
   * id of the key record
   * @type {string}
   * @memberof GetKeyResultDto
   */
  id?: string;
  /**
   * id of the project
   * @type {string}
   * @memberof GetKeyResultDto
   */
  projectId?: string;
  /**
   * ARI of the key record
   * @type {string}
   * @memberof GetKeyResultDto
   */
  ari?: string;
  /**
   * algorithm of the key record
   * @type {string}
   * @memberof GetKeyResultDto
   */
  algorithm?: string;
  /**
   * did method of the key record
   * @type {string}
   * @memberof GetKeyResultDto
   */
  didMethod?: string;
  /**
   * derivation path of the key record
   * @type {string}
   * @memberof GetKeyResultDto
   */
  derivationPath?: string;
  /**
   * id of the parent seed record
   * @type {string}
   * @memberof GetKeyResultDto
   */
  seedId?: string;
  /**
   * ARI of the parent seed record
   * @type {string}
   * @memberof GetKeyResultDto
   */
  seedAri?: string;
  /**
   * public key of the key config in HEX format
   * @type {string}
   * @memberof GetKeyResultDto
   */
  publicKeyHex?: string;
}
/**
 * DTO contains seed record
 * @export
 * @interface GetSeedResultDto
 */
export interface GetSeedResultDto {
  /**
   *
   * @type {string}
   * @memberof GetSeedResultDto
   */
  id?: string;
  /**
   *
   * @type {string}
   * @memberof GetSeedResultDto
   */
  projectId?: string;
  /**
   * ARI of the seed record
   * @type {string}
   * @memberof GetSeedResultDto
   */
  ari?: string;
}
/**
 * DTO contains the seed entropy as mnemonic that is imported into the system
 * @export
 * @interface ImportSeedMnemonicInputDto
 */
export interface ImportSeedMnemonicInputDto {
  /**
   *
   * @type {string}
   * @memberof ImportSeedMnemonicInputDto
   */
  mnemonic?: string;
}
/**
 * DTO contains the seed entropy as hex string that is imported into the system
 * @export
 * @interface ImportSeedRawInputDto
 */
export interface ImportSeedRawInputDto {
  /**
   *
   * @type {string}
   * @memberof ImportSeedRawInputDto
   */
  seedHex?: string;
}
/**
 * DTO contains list of seed records
 * @export
 * @interface ListSeedResultDto
 */
export interface ListSeedResultDto {
  /**
   *
   * @type {Array<ListSeedResultDtoRecordsInner>}
   * @memberof ListSeedResultDto
   */
  records?: Array<ListSeedResultDtoRecordsInner>;
}
/**
 *
 * @export
 * @interface ListSeedResultDtoRecordsInner
 */
export interface ListSeedResultDtoRecordsInner {
  /**
   *
   * @type {string}
   * @memberof ListSeedResultDtoRecordsInner
   */
  id?: string;
  /**
   *
   * @type {string}
   * @memberof ListSeedResultDtoRecordsInner
   */
  projectId?: string;
  /**
   * ARI of the seed record
   * @type {string}
   * @memberof ListSeedResultDtoRecordsInner
   */
  ari?: string;
}
/**
 * Error object
 * @export
 * @interface ModelError
 */
export interface ModelError {
  /**
   *
   * @type {string}
   * @memberof ModelError
   */
  errorCode?: string;
  /**
   *
   * @type {string}
   * @memberof ModelError
   */
  errorMessage?: string;
  /**
   *
   * @type {string}
   * @memberof ModelError
   */
  message?: string;
  /**
   *
   * @type {string}
   * @memberof ModelError
   */
  name?: string;
  /**
   *
   * @type {string}
   * @memberof ModelError
   */
  traceId?: string;
  /**
   *
   * @type {Array<ErrorDetail>}
   * @memberof ModelError
   */
  details?: Array<ErrorDetail>;
}
/**
 * DTO contains params to sign credential
 * @export
 * @interface SignCredentialInputDto
 */
export interface SignCredentialInputDto {
  /**
   *
   * @type {object}
   * @memberof SignCredentialInputDto
   */
  unsignedCredential: object;
}
/**
 * DTO contains signed credential
 * @export
 * @interface SignCredentialResultDto
 */
export interface SignCredentialResultDto {
  /**
   *
   * @type {object}
   * @memberof SignCredentialResultDto
   */
  signedCredential: object;
}
/**
 * DTO contains buffer in hex format to be signed
 * @export
 * @interface SignInputDto
 */
export interface SignInputDto {
  /**
   * data in hex format to be signed
   * @type {string}
   * @memberof SignInputDto
   */
  buffer: string;
  /**
   * type of returned signature, default is hex
   * @type {string}
   * @memberof SignInputDto
   */
  signatureType?: SignInputDtoSignatureTypeEnum;
}

export const SignInputDtoSignatureTypeEnum = {
  Hex: 'HEX',
  Rsv: 'RSV',
} as const;

export type SignInputDtoSignatureTypeEnum =
  (typeof SignInputDtoSignatureTypeEnum)[keyof typeof SignInputDtoSignatureTypeEnum];

/**
 * DTO contains parts of JWT to be signed
 * @export
 * @interface SignJwtInputDto
 */
export interface SignJwtInputDto {
  /**
   *
   * @type {object}
   * @memberof SignJwtInputDto
   */
  header: object;
  /**
   *
   * @type {object}
   * @memberof SignJwtInputDto
   */
  payload: object;
}
/**
 * DTO contains signed jwt
 * @export
 * @interface SignJwtResultDto
 */
export interface SignJwtResultDto {
  /**
   *
   * @type {string}
   * @memberof SignJwtResultDto
   */
  jwt: string;
}
/**
 * DTO contains signed buffer
 * @export
 * @interface SignResultDto
 */
export interface SignResultDto {
  /**
   * signature in hex format or RSV jsoned format
   * @type {string}
   * @memberof SignResultDto
   */
  signature: string;
}