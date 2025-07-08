import 'dart:math';

String generateRandomString(int length) {
  const alphabet = 'abcdefghijklmnopqrstuvwxyz';
  final rand = Random();

  return List.generate(
      length, (index) => alphabet[rand.nextInt(alphabet.length)]).join();
}

String replaceBaseDomain(String originalBasePath, String newDomain) {
  final originalUrl = Uri.parse(originalBasePath);
  final newDomainUrl = Uri.parse(newDomain);

  return newDomainUrl
      .replace(
        path: originalUrl.path,
        query: originalUrl.hasQuery ? originalUrl.query : null,
        fragment: originalUrl.hasFragment ? originalUrl.fragment : null,
      )
      .toString();
}
