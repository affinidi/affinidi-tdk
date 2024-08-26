//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WalletApi {
  WalletApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// creates a wallet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateWalletInput] createWalletInput:
  ///   CreateWallet
  Future<Response> createWalletWithHttpInfo({ CreateWalletInput? createWalletInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets';

    // ignore: prefer_final_locals
    Object? postBody = createWalletInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// creates a wallet
  ///
  /// Parameters:
  ///
  /// * [CreateWalletInput] createWalletInput:
  ///   CreateWallet
  Future<CreateWalletResponse?> createWallet({ CreateWalletInput? createWalletInput, }) async {
    final response = await createWalletWithHttpInfo( createWalletInput: createWalletInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateWalletResponse',) as CreateWalletResponse;
    
    }
    return null;
  }

  /// delete wallet by walletId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  Future<Response> deleteWalletWithHttpInfo(String walletId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets/{walletId}'
      .replaceAll('{walletId}', walletId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// delete wallet by walletId
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  Future<void> deleteWallet(String walletId,) async {
    final response = await deleteWalletWithHttpInfo(walletId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// get wallet details using wallet Id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  Future<Response> getWalletWithHttpInfo(String walletId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets/{walletId}'
      .replaceAll('{walletId}', walletId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// get wallet details using wallet Id.
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  Future<WalletDto?> getWallet(String walletId,) async {
    final response = await getWalletWithHttpInfo(walletId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WalletDto',) as WalletDto;
    
    }
    return null;
  }

  /// lists all wallets
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] didType:
  Future<Response> listWalletsWithHttpInfo({ String? didType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (didType != null) {
      queryParams.addAll(_queryParams('', 'didType', didType));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// lists all wallets
  ///
  /// Parameters:
  ///
  /// * [String] didType:
  Future<WalletsListDto?> listWallets({ String? didType, }) async {
    final response = await listWalletsWithHttpInfo( didType: didType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WalletsListDto',) as WalletsListDto;
    
    }
    return null;
  }

  /// signs credential with the wallet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  ///
  /// * [SignCredentialInputDto] signCredentialInputDto (required):
  ///   SignCredential
  Future<Response> signCredentialWithHttpInfo(String walletId, SignCredentialInputDto signCredentialInputDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets/{walletId}/sign-credential'
      .replaceAll('{walletId}', walletId);

    // ignore: prefer_final_locals
    Object? postBody = signCredentialInputDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// signs credential with the wallet
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  ///
  /// * [SignCredentialInputDto] signCredentialInputDto (required):
  ///   SignCredential
  Future<SignCredentialResultDto?> signCredential(String walletId, SignCredentialInputDto signCredentialInputDto,) async {
    final response = await signCredentialWithHttpInfo(walletId, signCredentialInputDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SignCredentialResultDto',) as SignCredentialResultDto;
    
    }
    return null;
  }

  /// signs a jwt token with the wallet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet.
  ///
  /// * [SignJwtToken] signJwtToken (required):
  ///   SignJwtToken
  Future<Response> signJwtTokenWithHttpInfo(String walletId, SignJwtToken signJwtToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets/{walletId}/sign-jwt'
      .replaceAll('{walletId}', walletId);

    // ignore: prefer_final_locals
    Object? postBody = signJwtToken;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// signs a jwt token with the wallet
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet.
  ///
  /// * [SignJwtToken] signJwtToken (required):
  ///   SignJwtToken
  Future<SignJwtTokenOK?> signJwtToken(String walletId, SignJwtToken signJwtToken,) async {
    final response = await signJwtTokenWithHttpInfo(walletId, signJwtToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SignJwtTokenOK',) as SignJwtTokenOK;
    
    }
    return null;
  }

  /// update wallet details using wallet Id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  ///
  /// * [UpdateWalletInput] updateWalletInput (required):
  ///   UpdateWallet
  Future<Response> updateWalletWithHttpInfo(String walletId, UpdateWalletInput updateWalletInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets/{walletId}'
      .replaceAll('{walletId}', walletId);

    // ignore: prefer_final_locals
    Object? postBody = updateWalletInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// update wallet details using wallet Id.
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  ///
  /// * [UpdateWalletInput] updateWalletInput (required):
  ///   UpdateWallet
  Future<WalletDto?> updateWallet(String walletId, UpdateWalletInput updateWalletInput,) async {
    final response = await updateWalletWithHttpInfo(walletId, updateWalletInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WalletDto',) as WalletDto;
    
    }
    return null;
  }
}
