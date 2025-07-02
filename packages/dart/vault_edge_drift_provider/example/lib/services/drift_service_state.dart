import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';

/// State class for the drift service
class DriftServiceState {
  /// The database instance
  final Database? database;

  /// The profile repository
  final EdgeDriftProfileRepository? profileRepository;

  /// The file repository
  final EdgeDriftFileRepository? fileRepository;

  /// List of profiles
  final List<EdgeProfile> profiles;

  /// List of current items in the folder
  final List<Item> currentItems;

  /// ID of the selected profile
  final String? selectedProfileId;

  /// ID of the current folder
  final String? currentFolderId;

  /// Current status message
  final String status;

  /// Error message if any
  final String? error;

  /// Creates a new [DriftServiceState] instance.
  ///
  /// [database] - The database instance
  /// [profileRepository] - The profile repository
  /// [fileRepository] - The file repository
  /// [profiles] - List of profiles
  /// [currentItems] - List of current items in the folder
  /// [selectedProfileId] - ID of the selected profile
  /// [currentFolderId] - ID of the current folder
  /// [status] - Current status message
  /// [error] - Error message if any
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

  /// Creates a copy of this state with the given fields replaced by new values
  DriftServiceState copyWith({
    Database? database,
    EdgeDriftProfileRepository? profileRepository,
    EdgeDriftFileRepository? fileRepository,
    List<EdgeProfile>? profiles,
    List<Item>? currentItems,
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
