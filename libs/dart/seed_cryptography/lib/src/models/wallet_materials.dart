class WalletMaterials {
  String encryptedSeed;
  String encryptionKey;

  WalletMaterials({
    required this.encryptedSeed,
    required this.encryptionKey,
  });

  factory WalletMaterials.fromJson(Map<String, dynamic> json) {
    return WalletMaterials(
      encryptedSeed: json['encryptedSeed'],
      encryptionKey: json['encryptionKey'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'encryptedSeed': encryptedSeed,
      'encryptionKey': encryptionKey,
    };
  }
}
