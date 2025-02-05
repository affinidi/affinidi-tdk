import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';

/// Abstract class for cryptography services.
abstract class CryptographyServiceAbstract
    implements CryptographyServiceInterface {
  static CryptographyServiceAbstract? _instance;

  /// Gets the singleton instance of the cryptography service.
  static CryptographyServiceAbstract get instance {
    if (_instance == null) {
      throw StateError('CryptographyServiceAbstract instance not set.');
    }
    return _instance!;
  }

  static set instance(CryptographyServiceAbstract instance) {
    _instance = instance;
  }
}
