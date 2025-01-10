import 'package:basic_token_provider/basic_token_provider.dart';

Future<void> main() async {
  final authProvider = ConsumerTokenProvider();
  final token = await authProvider.getToken();
  print('Consumer token: $token');
}
