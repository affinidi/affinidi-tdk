// ignore_for_file: inference_failure_on_collection_literal

import 'dart:convert';

class NodeResponseFixtures {
  static const String profileNodeId = 'NzY3ZjYjV2dFR2U=';
  static const String rootNodeId = 'NzY3ZjY=';
  static const String testNodeId = 'test-node-id';
  static const String testFolderId = 'test-folder-id';
  static const String childNodeId1 = 'NzY3ZjYjY2hpbGQx';
  static const String childNodeId2 = 'NzY3ZjYjY2hpbGQy';

  static final profileList = {
    'nodes': [
      {
        'name': 'My profile',
        'description': 'Test profile',
        'status': 'CREATED',
        'createdAt': '2025-03-03T13:59:40.752Z',
        'modifiedAt': '2025-03-03T13:59:40.752Z',
        'createdBy': 'did:key:test',
        'modifiedBy': 'did:key:test',
        'consumerId': 'did:key:test',
        'fileCount': 0,
        'profileCount': 0,
        'folderCount': 0,
        'vcCount': 0,
        'schema': 'primary.schema',
        'parentNodeId': rootNodeId,
        'profileId': profileNodeId,
        'type': 'PROFILE',
        'nodeId': profileNodeId,
        'edekInfo': {'dekekId': 'test-dekek-id', 'edek': 'test-edek'},
        'metadata': jsonEncode({'pictureURI': ''})
      }
    ]
  };

  static final emptyList = {'nodes': []};

  static final profile = {
    'name': 'My profile',
    'description': 'Test profile',
    'status': 'CREATED',
    'createdAt': '2025-03-03T13:59:40.752Z',
    'modifiedAt': '2025-03-03T13:59:40.752Z',
    'createdBy': 'did:key:test',
    'modifiedBy': 'did:key:test',
    'consumerId': 'did:key:test',
    'fileCount': 0,
    'profileCount': 0,
    'folderCount': 0,
    'vcCount': 0,
    'schema': 'primary.schema',
    'parentNodeId': rootNodeId,
    'profileId': profileNodeId,
    'type': 'PROFILE',
    'nodeId': profileNodeId,
    'edekInfo': {'dekekId': 'test-dekek-id', 'edek': 'test-edek'},
    'metadata': jsonEncode({'pictureURI': ''})
  };

  static final unableToHardDelete = {
    'code': 'unable_to_hard_delete',
    'message': 'Unable to hard delete node',
  };

  static const children = {
    'nodes': [
      {
        'name': 'Child Node 1',
        'description': 'First child node',
        'status': 'CREATED',
        'createdAt': '2025-03-03T13:59:40.752Z',
        'modifiedAt': '2025-03-03T13:59:40.752Z',
        'createdBy': 'did:key:test',
        'modifiedBy': 'did:key:test',
        'consumerId': 'did:key:test',
        'fileCount': 0,
        'profileCount': 0,
        'folderCount': 0,
        'vcCount': 0,
        'schema': 'primary.schema',
        'parentNodeId': rootNodeId,
        'type': 'FOLDER',
        'nodeId': childNodeId1,
      },
      {
        'name': 'Child Node 2',
        'description': 'Second child node',
        'status': 'CREATED',
        'createdAt': '2025-03-03T13:59:40.752Z',
        'modifiedAt': '2025-03-03T13:59:40.752Z',
        'createdBy': 'did:key:test',
        'modifiedBy': 'did:key:test',
        'consumerId': 'did:key:test',
        'fileCount': 0,
        'profileCount': 0,
        'folderCount': 0,
        'vcCount': 0,
        'schema': 'primary.schema',
        'parentNodeId': rootNodeId,
        'type': 'FOLDER',
        'nodeId': childNodeId2,
      }
    ]
  };
}
