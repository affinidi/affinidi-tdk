import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';

/// Abstract class for consumer authentication provider.
abstract class ConsumerAuthProviderAbstract
    implements ConsumerAuthProviderInterface {
  static ConsumerAuthProviderAbstract? _instance;

  /// Singleton getter for the instance
  static ConsumerAuthProviderAbstract get instance {
    if (_instance == null) {
      throw StateError('ConsumerAuthProviderAbstract instance not set.');
    }
    return _instance!;
  }

  static set instance(ConsumerAuthProviderAbstract instance) {
    _instance = instance;
  }
}
