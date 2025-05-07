// ignore_for_file: inference_failure_on_collection_literal

class NodeResponseFixtures {
  static const profile = {
    'name': 'New cloud one',
    'description': '4 test',
    'status': 'CREATED',
    'createdAt': '2024-12-03T15:59:02.646Z',
    'modifiedAt': '2024-12-03T15:59:02.646Z',
    'createdBy': 'did:key:zQ3shoJMELyuS5AMUYrUTKBwZWRVCPKNp7rhUUAw4GWPkTwoV',
    'modifiedBy': 'did:key:zQ3shoJMELyuS5AMUYrUTKBwZWRVCPKNp7rhUUAw4GWPkTwoV',
    'consumerId': 'did:key:zQ3shoJMELyuS5AMUYrUTKBwZWRVCPKNp7rhUUAw4GWPkTwoV',
    'fileCount': 0,
    'profileCount': 0,
    'folderCount': 0,
    'vcCount': 0,
    'schema': 'primary.schema',
    'parentNodeId': 'NzY3ZjY=',
    'profileId': 'NzY3ZjYjV2dFR2U=',
    'type': 'PROFILE',
    'nodeId': 'NzY3ZjYjV2dFR2U=',
    'edekInfo': {
      'dekekId':
          '784c56d02c07485b17e294a251abe9477c01f3df07a3a4fdf87cc813341eab7e',
      'edek':
          'ydDNrwc7IUO5i8CeUHGNd5dUJDKZLSoAKxuwc5MfAknf0Bmmx8TNYyoumPSoUjXg6A0dqULRaUpg5ocQKWNHkg=='
    },
    'metadata': '{"pictureURI":""}'
  };

  static const unableToHardDelete = {
    'name': 'OperationNotAllowedError',
    'traceId': '1-67d33bf3-352100223ebf0e3a19448a3a',
    'message': 'OperationNotAllowedError',
    'details': [
      {
        'issue': 'Node with children cannot be operated for HARD_DELETE',
        'field': 'fileCount',
        'value': '1'
      }
    ]
  };

  static const profileList = {
    'nodes': [
      {
        'name': 'My profile',
        'description': 'a profile with personal data',
        'status': 'CREATED',
        'createdAt': '2025-03-03T13:59:40.752Z',
        'modifiedAt': '2025-03-03T13:59:40.752Z',
        'createdBy':
            'did:key:zQ3shoazRuJj9YPg2e87Aa5E7QvURishMSchgwt5gNJ6ogcbG',
        'modifiedBy':
            'did:key:zQ3shoazRuJj9YPg2e87Aa5E7QvURishMSchgwt5gNJ6ogcbG',
        'consumerId':
            'did:key:zQ3shoazRuJj9YPg2e87Aa5E7QvURishMSchgwt5gNJ6ogcbG',
        'fileCount': 0,
        'profileCount': 0,
        'folderCount': 0,
        'vcCount': 0,
        'schema': 'primary.schema',
        'parentNodeId': 'NzY3ZjY=',
        'profileId': 'NzY3ZjYjamJKb2s=',
        'type': 'PROFILE',
        'nodeId': 'NzY3ZjYjamJKb2s=',
        'edekInfo': {
          'dekekId':
              '78074741dbb0dfd22bf767e53f78c2a4144223c45d303d1da49dc98ccdfb65e0',
          'edek':
              'gslUIJZNIT4wS3HJhRELPtj1oemXzKk0XW/p1C5idaYZKS6Chj3GtTDwItdVnD/x3q2b0jrkoEN5TLrTVQGibw=='
        },
        'metadata': '{"pictureURI":""}'
      }
    ]
  };

  static const emptyList = {
    'nodes': [],
  };
}
