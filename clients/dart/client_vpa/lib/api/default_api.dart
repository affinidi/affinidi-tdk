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

  /// Performs an HTTP 'DELETE /v1/login/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1LoginAdminProxyDeleteWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/admin/{proxy+}'
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
  Future<void> v1LoginAdminProxyDelete(String proxy,) async {
    final response = await v1LoginAdminProxyDeleteWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/login/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1LoginAdminProxyGetWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/admin/{proxy+}'
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
  Future<void> v1LoginAdminProxyGet(String proxy,) async {
    final response = await v1LoginAdminProxyGetWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /v1/login/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1LoginAdminProxyPatchWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/admin/{proxy+}'
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
  Future<void> v1LoginAdminProxyPatch(String proxy,) async {
    final response = await v1LoginAdminProxyPatchWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/login/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1LoginAdminProxyPostWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/admin/{proxy+}'
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
  Future<void> v1LoginAdminProxyPost(String proxy,) async {
    final response = await v1LoginAdminProxyPostWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /v1/login/admin/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1LoginAdminProxyPutWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/admin/{proxy+}'
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
  Future<void> v1LoginAdminProxyPut(String proxy,) async {
    final response = await v1LoginAdminProxyPutWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
