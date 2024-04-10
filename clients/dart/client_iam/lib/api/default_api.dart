//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'DELETE /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyDeleteWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyDelete(String proxy,) async {
    final response = await v1AuthProxyDeleteWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyGetWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyGet(String proxy,) async {
    final response = await v1AuthProxyGetWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyPatchWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyPatch(String proxy,) async {
    final response = await v1AuthProxyPatchWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyPostWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyPost(String proxy,) async {
    final response = await v1AuthProxyPostWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyPutWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyPut(String proxy,) async {
    final response = await v1AuthProxyPutWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyDeleteWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyDelete(String proxy,) async {
    final response = await v1IdpProxyDeleteWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyGetWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyGet(String proxy,) async {
    final response = await v1IdpProxyGetWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyPatchWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyPatch(String proxy,) async {
    final response = await v1IdpProxyPatchWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyPostWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyPost(String proxy,) async {
    final response = await v1IdpProxyPostWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyPutWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyPut(String proxy,) async {
    final response = await v1IdpProxyPutWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
