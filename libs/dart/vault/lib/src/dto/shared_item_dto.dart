import 'dart:typed_data';

/// DTO for shared item information.
class SharedItemsDto {
  /// Creates a new instance of [SharedItemsDto].
  ///
  /// [kek] - Key encryption key for the shared items.
  /// [ownerProfileId] - Unique identifier of the profile that owns the items.
  /// [ownerProfileDID] - Decentralized identifier of the profile that owns the items.
  /// [itemIds] - List of item IDs (files/folders) that are shared.
  const SharedItemsDto({
    required this.kek,
    required this.ownerProfileId,
    required this.ownerProfileDID,
    required this.itemIds,
  });

  /// Key encryption key for accessing the shared items.
  final Uint8List kek;

  /// Unique identifier of the profile that owns the items.
  final String ownerProfileId;

  /// Decentralized identifier of the profile that owns the items.
  final String ownerProfileDID;

  /// List of node IDs (files/folders) that are shared.
  final List<String> itemIds;
}
