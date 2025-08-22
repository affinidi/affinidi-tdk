enum MediatorType {
  local,
  affinidiPublic,
  affinidiHosted,
}

class MediatorConfig {
  /// CHANGE THIS to switch between mediators
  static const MediatorType useMediator = MediatorType.affinidiHosted;

  /// Get the current mediator DID based on configuration
  static String get mediatorDid {
    switch (useMediator) {
      case MediatorType.local:
        return 'did:web:localhost%3A7037:mediator:v1:.well-known';
      case MediatorType.affinidiPublic:
        return 'did:web:euw1.mediator.affinidi.io:.well-known';
      case MediatorType.affinidiHosted:
        return 'did:web:ed39392b-8b24-49b1-9884-efc9fb1fc3f8.atlas.affinidi.io';
    }
  }

  /// Get mediator description for logging
  static String get mediatorDescription {
    switch (useMediator) {
      case MediatorType.local:
        return 'Local Mediator (localhost:7037)';
      case MediatorType.affinidiPublic:
        return 'Affinidi Public Mediator (euw1.mediator.affinidi.io)';
      case MediatorType.affinidiHosted:
        return 'Affinidi Hosted Mediator (ed39392b...atlas.affinidi.io)';
    }
  }

  /// Check if we should accept self-signed certificates
  static bool shouldAcceptCertificate(String host) {
    // Always accept for localhost
    if (host == 'localhost' || host == '127.0.0.1') {
      return true;
    }

    // Accept for Affinidi services
    if (host.endsWith('.affinidi.io')) {
      return true;
    }

    return false;
  }
}
