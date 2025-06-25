import 'dart:math';

String generateRandomString(int length) {
  const alphabet = 'abcdefghijklmnopqrstuvwxyz';
  final rand = Random();

  return List.generate(
      length, (index) => alphabet[rand.nextInt(alphabet.length)]).join();
}
