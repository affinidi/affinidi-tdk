/// Represents storage consumption information for the vault.
///
/// Provides information about the amount of storage space being used,
/// measured in megabytes.
class VaultFileConsumption {
  /// The amount of storage space used, in megabytes
  final double sizeInMB;

  /// Creates a new vault consumption instance with the specified size in MB.
  VaultFileConsumption({
    required this.sizeInMB,
  });

  /// Creates a new vault consumption instance from a size in bytes.
  ///
  /// Converts the provided bytes to megabytes automatically.
  factory VaultFileConsumption.fromBytes(int bytes) {
    return VaultFileConsumption(
      sizeInMB: bytes / (1024 * 1024),
    );
  }

  /// Converts the vault consumption data to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'sizeInMB': sizeInMB,
    };
  }

  /// Creates a new vault consumption instance from a JSON map.
  factory VaultFileConsumption.fromJson(Map<String, dynamic> json) {
    return VaultFileConsumption(
      sizeInMB: json['sizeInMB'] as double,
    );
  }
}
