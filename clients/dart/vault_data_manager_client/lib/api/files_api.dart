//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FilesApi {
  FilesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the details of a scanned file using the textract jobId
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scannedFileJobId (required):
  ///   Scanned file jobId.
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<Response> getScannedFileInfoWithHttpInfo(String scannedFileJobId, { String? exclusiveStartKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/scanned-files/{scannedFileJobId}'
      .replaceAll('{scannedFileJobId}', scannedFileJobId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (exclusiveStartKey != null) {
      queryParams.addAll(_queryParams('', 'exclusiveStartKey', exclusiveStartKey));
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

  /// Get the details of a scanned file using the textract jobId
  ///
  /// Parameters:
  ///
  /// * [String] scannedFileJobId (required):
  ///   Scanned file jobId.
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<GetScannedFileInfoOK?> getScannedFileInfo(String scannedFileJobId, { String? exclusiveStartKey, }) async {
    final response = await getScannedFileInfoWithHttpInfo(scannedFileJobId,  exclusiveStartKey: exclusiveStartKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetScannedFileInfoOK',) as GetScannedFileInfoOK;
    
    }
    return null;
  }

  /// List all the the scanned files with all the details, e.g. status and jobId
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listScannedFilesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/scanned-files/';

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

  /// List all the the scanned files with all the details, e.g. status and jobId
  Future<ListScannedFilesOK?> listScannedFiles() async {
    final response = await listScannedFilesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListScannedFilesOK',) as ListScannedFilesOK;
    
    }
    return null;
  }

  /// Start a scan of the file under this node and provide a textract job
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   Description for nodeId.
  ///
  /// * [StartFileScanInput] startFileScanInput (required):
  ///   StartFileScan
  Future<Response> startFileScanWithHttpInfo(String nodeId, StartFileScanInput startFileScanInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}/file/scan'
      .replaceAll('{nodeId}', nodeId);

    // ignore: prefer_final_locals
    Object? postBody = startFileScanInput;

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

  /// Start a scan of the file under this node and provide a textract job
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   Description for nodeId.
  ///
  /// * [StartFileScanInput] startFileScanInput (required):
  ///   StartFileScan
  Future<StartFileScanOK?> startFileScan(String nodeId, StartFileScanInput startFileScanInput,) async {
    final response = await startFileScanWithHttpInfo(nodeId, startFileScanInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartFileScanOK',) as StartFileScanOK;
    
    }
    return null;
  }
}
