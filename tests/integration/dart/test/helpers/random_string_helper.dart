import 'dart:math';

String generateRandomString(int length) {
  const alphabet = 'abcdefghijklmnopqrstuvwxyz';
  final rand = Random();
  String result = '';

  for (int i = 0; i < length; i++) {
    result += alphabet[rand.nextInt(alphabet.length)];
  }

  return result;
}
