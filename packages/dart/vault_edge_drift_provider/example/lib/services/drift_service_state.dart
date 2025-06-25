import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';

/// State class for the drift service
class DriftServiceState {
  final Database? database;
  final EdgeDriftProfileRepository? profileRepository;
  final EdgeDriftFileRepository? fileRepository;
  final List<EdgeProfile> profiles;
  final List<ItemData> currentItems;
  final String? selectedProfileId;
  final String? currentFolderId;
  final String status;
  final String? error;

  const DriftServiceState({
    this.database,
    this.profileRepository,
    this.fileRepository,
    this.profiles = const [],
    this.currentItems = const [],
    this.selectedProfileId,
    this.currentFolderId,
    this.status = 'Initializing...',
    this.error,
  });

  DriftServiceState copyWith({
    Database? database,
    EdgeDriftProfileRepository? profileRepository,
    EdgeDriftFileRepository? fileRepository,
    List<EdgeProfile>? profiles,
    List<ItemData>? currentItems,
    String? selectedProfileId,
    String? currentFolderId,
    String? status,
    String? error,
  }) {
    return DriftServiceState(
      database: database ?? this.database,
      profileRepository: profileRepository ?? this.profileRepository,
      fileRepository: fileRepository ?? this.fileRepository,
      profiles: profiles ?? this.profiles,
      currentItems: currentItems ?? this.currentItems,
      selectedProfileId: selectedProfileId ?? this.selectedProfileId,
      currentFolderId: currentFolderId ?? this.currentFolderId,
      status: status ?? this.status,
      error: error ?? this.error,
    );
  }
}
