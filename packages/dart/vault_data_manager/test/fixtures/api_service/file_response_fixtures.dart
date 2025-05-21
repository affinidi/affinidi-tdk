// ignore_for_file: inference_failure_on_collection_literal

class FileResponseFixtures {
  static const String testFileName = 'test.txt';
  static const String testVcName = 'test.vc';

  static const scannedFilesList = {
    'scannedFiles': [
      {
        'jobId':
            'ff61913ffb889000a8fd8bfcb7a94c3f1fdef272c9f5aff93c4aeabda4e7c038',
        'status': 'COMPLETED',
        'profileId': 'NzY3ZjYjV2dFR2U=',
        'nodeId': 'NzY3ZjYjV2dFR2UjMGxVV1U=',
        'createdAt': '2025-03-13T19:29:40.181Z',
        'name': 'test_file_2.pdf'
      }
    ]
  };

  static const scanJobStarted = {
    'jobId': 'ff61913ffb889000a8fd8bfcb7a94c3f1fdef272c9f5aff93c4aeabda4e7c038',
    'status': 'STARTED'
  };

  static const emptyScannedFilesList = {
    'scannedFiles': [],
  };
}
