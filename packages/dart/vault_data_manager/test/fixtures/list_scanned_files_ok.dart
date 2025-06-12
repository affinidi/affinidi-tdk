import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:built_collection/built_collection.dart';

final listScannedFilesOKScannedFilesInnerBuilder =
    ListScannedFilesOKScannedFilesInnerBuilder()
      ..jobId = 'job_id'
      ..status = 'COMPLETED'
      ..profileId = 'profile_id'
      ..nodeId = 'node_id'
      ..createdAt = '2025-04-24T13:06:33.235Z'
      ..name = 'file_name';

final listScannedFilesOKScannedFilesInner =
    listScannedFilesOKScannedFilesInnerBuilder.build();

final ListBuilder<ListScannedFilesOKScannedFilesInner> listScannedFilesBuilder =
    ListBuilder()
      ..add(listScannedFilesOKScannedFilesInner)
      ..add(listScannedFilesOKScannedFilesInner);

final listScannedFilesOkBuilder = ListScannedFilesOKBuilder()
  ..scannedFiles = listScannedFilesBuilder;

final listScannedFilesOk = listScannedFilesOkBuilder.build();
