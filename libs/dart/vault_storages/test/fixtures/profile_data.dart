// ignore_for_file: inference_failure_on_collection_literal

import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';

final profileDataJson = {
  'person': {
    'properties': {
      'email': {'value': null, 'source': 'file:some-id', 'vlock': 1},
      'givenName': {'name': 'Test cloud', 'value': 'Olena', 'vlock': 6},
      'familyName': {'name': 'Test cloud', 'value': 'Family name', 'vlock': 33},
      'middleName': {'name': 'Test cloud', 'value': 'middle name', 'vlock': 2},
      'nickname': {'value': null, 'source': 'file:some-id', 'vlock': 1},
      'picture': {
        'properties': {
          'url': {'value': null, 'source': 'file:some-id', 'vlock': 1},
          'caption': {'value': null, 'source': 'file:some-id', 'vlock': 1}
        }
      },
      'birthdate': {'value': null, 'source': 'file:some-id', 'vlock': 1},
      'gender': {'value': null, 'source': 'file:some-id', 'vlock': 1},
      'phoneNumber': {'value': null, 'source': 'file:some-id', 'vlock': 1},
      'occupation': {'value': null, 'source': 'file:some-id', 'vlock': 1},
      'highestEducationLevel': {
        'value': null,
        'source': 'file:some-id',
        'vlock': 1
      },
      'addresses': {
        'items': [
          {
            'name': 'item',
            'properties': {
              'addressType': {
                'name': 'Test cloud',
                'value': 'home',
                'vlock': 1
              },
              'postalCode': {'name': 'Test cloud', 'value': 'code', 'vlock': 1}
            },
            'vlock': 1
          }
        ],
        'vlock': 3
      }
    },
  },
  'categories': {
    'properties': {
      'behaviors': {
        'properties': {
          'interests': {
            'items': [
              {
                'name': 'item',
                'properties': {
                  'interest': {
                    'name': 'Test cloud',
                    'value': 'travel',
                    'vlock': 1
                  }
                },
                'vlock': 1
              }
            ],
            'vlock': 2
          }
        }
      },
      'identityDocuments': {
        'properties': {
          'paperIdentityDocuments': {'items': [], 'vlock': 1}
        }
      },
      'fashion': {
        'properties': {
          'mattersMost': {'value': null, 'source': 'file:some-id', 'vlock': 1},
          'favoriteBrands': {
            'items': [
              {
                'name': 'item',
                'properties': {
                  'favoriteBrand': {
                    'name': 'Test cloud',
                    'value': 'brand name',
                    'vlock': 16
                  }
                },
                'vlock': 1
              }
            ],
            'vlock': 17
          }
        }
      },
      'travel': {
        'properties': {
          'frequentDestinations': {'items': [], 'vlock': 1},
          'travelStyle': {'value': null, 'source': 'file:some-id', 'vlock': 1}
        }
      },
      'movies': {
        'properties': {
          'favoriteGenres': {'items': [], 'vlock': 1},
          'favoriteActors': {'items': [], 'vlock': 1},
          'moodStates': {'items': [], 'vlock': 1}
        }
      },
      'music': {
        'properties': {
          'favoriteGenres': {'items': [], 'vlock': 1},
          'moodStates': {'items': [], 'vlock': 1},
          'playlists': {'items': [], 'vlock': 1}
        }
      },
      'fitness': {
        'properties': {
          'activities': {'items': [], 'vlock': 1},
          'fitnessGoals': {'items': [], 'vlock': 1}
        }
      },
      'sports': {
        'properties': {
          'interests': {'items': [], 'vlock': 1}
        }
      },
      'memberOf': {
        'properties': {
          'membership': {'items': [], 'vlock': 1}
        }
      }
    }
  }
};

final profileData = ProfileData.fromJson(profileDataJson);
