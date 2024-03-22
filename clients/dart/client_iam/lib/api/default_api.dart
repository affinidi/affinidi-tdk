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

  /// Performs an HTTP 'DELETE /v1/auth/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthAdminProxyDeleteWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/admin/{proxy+}'
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
  Future<void> v1AuthAdminProxyDelete(String proxy,) async {
    final response = await v1AuthAdminProxyDeleteWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/auth/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthAdminProxyGetWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/admin/{proxy+}'
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
  Future<void> v1AuthAdminProxyGet(String proxy,) async {
    final response = await v1AuthAdminProxyGetWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /v1/auth/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthAdminProxyPatchWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/admin/{proxy+}'
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
  Future<void> v1AuthAdminProxyPatch(String proxy,) async {
    final response = await v1AuthAdminProxyPatchWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/auth/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthAdminProxyPostWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/admin/{proxy+}'
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
  Future<void> v1AuthAdminProxyPost(String proxy,) async {
    final response = await v1AuthAdminProxyPostWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /v1/auth/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthAdminProxyPutWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/admin/{proxy+}'
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
  Future<void> v1AuthAdminProxyPut(String proxy,) async {
    final response = await v1AuthAdminProxyPutWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /v1/idp/ui/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpUiProxyDeleteWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/ui/{proxy+}'
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
  Future<void> v1IdpUiProxyDelete(String proxy,) async {
    final response = await v1IdpUiProxyDeleteWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/idp/ui/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpUiProxyGetWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/ui/{proxy+}'
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
  Future<void> v1IdpUiProxyGet(String proxy,) async {
    final response = await v1IdpUiProxyGetWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /v1/idp/ui/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpUiProxyPatchWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/ui/{proxy+}'
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
  Future<void> v1IdpUiProxyPatch(String proxy,) async {
    final response = await v1IdpUiProxyPatchWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/idp/ui/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpUiProxyPostWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/ui/{proxy+}'
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
  Future<void> v1IdpUiProxyPost(String proxy,) async {
    final response = await v1IdpUiProxyPostWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /v1/idp/ui/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpUiProxyPutWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/ui/{proxy+}'
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
  Future<void> v1IdpUiProxyPut(String proxy,) async {
    final response = await v1IdpUiProxyPutWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
