import 'dart:convert';

import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:built_value/json_object.dart';

final JsonObject scannedDataJson = JsonObject(
  jsonEncode(
    {
      'person': {
        'properties': {
          'givenName': {
            'name': 'givenName',
            'type': 'string',
            'alternatives': ['John']
          },
          'familyName': {
            'name': 'familyName',
            'type': 'string',
            'alternatives': ['Doe']
          }
        },
        'name': 'person',
        'type': 'object'
      },
      'categories': {
        'properties': {
          'music': {
            'properties': {
              'playlists': {
                'name': 'playlists',
                'type': 'array',
                'items': [
                  {
                    'properties': {
                      'name': {
                        'name': 'name',
                        'type': 'string',
                        'alternatives': ['something']
                      }
                    },
                    'type': 'object'
                  }
                ]
              }
            },
            'name': 'music',
            'type': 'object'
          }
        },
        'name': 'categories',
        'type': 'object'
      }
    },
  ),
);

final getScannedFileInfoOKBuilder = GetScannedFileInfoOKBuilder()
  ..jobId = 'job_id'
  ..status = 'COMPLETED'
  ..profileId = 'profile_id'
  ..nodeId = 'node_id'
  ..createdAt = '2025-03-13T14:12:29.439Z'
  ..name = 'Person Information Form_compressed.pdf'
  ..data = scannedDataJson;

final getScannedFileInfoOK = getScannedFileInfoOKBuilder.build();
