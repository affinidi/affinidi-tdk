import 'package:affinidi_tdk_cryptography_dart/affinidi_tdk_cryptography.dart';

abstract class CryptographyServiceAbstract
    implements CryptographyServiceInterface {
  static CryptographyServiceAbstract? _instance;

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
