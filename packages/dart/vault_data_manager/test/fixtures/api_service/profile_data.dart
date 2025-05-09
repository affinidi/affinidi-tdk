// ignore_for_file: inference_failure_on_collection_literal

const profileData = {
  'person': {
    'properties': {
      'email': {
        'name': 'New cloud one',
        'value': 'kostiantyn.s@affinidi.com',
        'vlock': 3
      },
      'givenName': {'name': 'New cloud one', 'value': 'Kostya', 'vlock': 2},
      'familyName': {'value': null, 'source': 'file:some-id', 'vlock': 1},
      'middleName': {'value': null, 'source': 'file:some-id', 'vlock': 1},
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
      'addresses': {'items': [], 'vlock': 1}
    }
  },
  'categories': {
    'properties': {
      'behaviors': {
        'properties': {
          'interests': {'items': [], 'vlock': 1}
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
          'favoriteBrands': {'items': [], 'vlock': 1}
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
