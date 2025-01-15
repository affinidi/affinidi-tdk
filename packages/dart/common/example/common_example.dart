import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

void main() {
  final Environment local = Environment.environments[EnvironmentType.local]!;
  final Environment development =
      Environment.environments[EnvironmentType.development]!;

  final localApiGwUrl = Environment.fetchApiGwUrl(local);
  final devApiGwUrl = Environment.fetchApiGwUrl(development);
  final prodApiGwUrl = Environment.fetchApiGwUrl(); // Defaults to prod
  print("Local API Gateway URL: $localApiGwUrl");
  print("Development API Gateway URL: $devApiGwUrl");
  print("Production API Gateway URL: $prodApiGwUrl");

  final localWebVaultUrl = VaultUtils.fetchWebVaultUrl(local);
  final devWebVaultUrl = VaultUtils.fetchWebVaultUrl(development);
  final prodWebVaultUrl = VaultUtils.fetchWebVaultUrl(); // Defaults to prod
  print("Local Web Vault URL: $localWebVaultUrl");
  print("Development Web Vault URL: $devWebVaultUrl");
  print("Production Web Vault URL: $prodWebVaultUrl");
}
