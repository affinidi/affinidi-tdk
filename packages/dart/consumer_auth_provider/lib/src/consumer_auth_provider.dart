import 'base_consumer_auth_provider.dart';
import 'consumer_auth_provider_abstract.dart';
import 'consumer_auth_provider_interface.dart';

class ConsumerAuthProvider implements ConsumerAuthProviderInterface {
  ConsumerAuthProvider({
    required String encryptedSeed,
    required String encryptionKey,
  }) {
    ConsumerAuthProviderAbstract.instance = BaseConsumerAuthProvider(
      encryptedSeed: encryptedSeed,
      encryptionKey: encryptionKey,
    );
  }

  @override
  Future<String> fetchConsumerToken() async {
    return await ConsumerAuthProviderAbstract.instance.fetchConsumerToken();
  }
}
