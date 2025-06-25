import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';
import 'package:file_picker/file_picker.dart';

import 'drift_service_state.dart';

/// Service class to manage drift database operations
class DriftService {
  DriftServiceState _state = const DriftServiceState();

  DriftServiceState get state => _state;

  /// Initialize the database
  Future<void> initializeDatabase() async {
    try {
      _updateStatus('Creating database...');
      print('Initializing database...');

      final platformInfo = DatabaseConfig.getPlatformInfo();
      print('Platform info: $platformInfo');

      final database = await DatabaseConfig.createDatabase();
      print('Database created successfully');

      final profileRepository = EdgeDriftProfileRepository(database: database);

      _state = _state.copyWith(
        database: database,
        profileRepository: profileRepository,
        status:
            'Database ready (${platformInfo['platform']} - ${platformInfo['database']})',
      );

      await loadProfiles();
    } catch (e, st) {
      print('Error initializing database: $e\n$st');
      _updateError('Error: $e');
    }
  }

  /// Load all profiles
  Future<void> loadProfiles() async {
    try {
      print('Loading profiles...');
      final profiles = await _state.profileRepository!.listProfiles();
      print('Profiles loaded: ${profiles.length}');

      _state = _state.copyWith(
        profiles: profiles,
        status: 'Loaded ${profiles.length} profiles',
      );
    } catch (e, st) {
      print('Error loading profiles: $e\n$st');
      _updateError('Error loading profiles: $e');
    }
  }

  /// Create a new profile
  Future<void> createProfile() async {
    try {
      print('Creating profile...');
      _updateStatus('Creating profile...');

      await _state.profileRepository!.createProfile(
        name: 'Profile ${_state.profiles.length + 1}',
        description: 'Test profile',
        accountIndex: _state.profiles.length + 1,
      );

      print('Profile created!');
      await loadProfiles();
    } catch (e, st) {
      print('Error creating profile: $e\n$st');
      _updateError('Error creating profile: $e');
    }
  }

  /// Select a profile and load its contents
  Future<void> selectProfile(String profileId) async {
    try {
      print('Selecting profile: $profileId');
      _updateStatus('Loading profile contents...');

      final fileRepository = EdgeDriftFileRepository(
        database: _state.database!,
        profileId: profileId,
        maxFileSize: 50 * 1024 * 1024,
        allowedExtensions: [
          'txt',
          'pdf',
          'jpg',
          'jpeg',
          'png',
          'json',
          'doc',
          'docx',
          'xls',
          'xlsx',
          'zip',
          'rar'
        ],
      );

      _state = _state.copyWith(
        selectedProfileId: profileId,
        currentFolderId: null,
        fileRepository: fileRepository,
      );

      await loadCurrentFolder();
    } catch (e, st) {
      print('Error selecting profile: $e\n$st');
      _updateError('Error selecting profile: $e');
    }
  }

  /// Load the current folder contents
  Future<void> loadCurrentFolder() async {
    try {
      print('Loading folder: ${_state.currentFolderId ?? "root"}');
      final items = await _state.fileRepository!.getFolderData(
        folderId: _state.currentFolderId,
      );

      print('Loaded ${items.length} items in folder');

      _state = _state.copyWith(
        currentItems: items,
        status:
            'Loaded ${items.length} items (Max: ${(_state.fileRepository!.maxFileSize / (1024 * 1024)).toStringAsFixed(0)}MB, Extensions: ${_state.fileRepository!.allowedExtensions.join(', ')})',
      );
    } catch (e, st) {
      print('Error loading folder: $e\n$st');
      _updateError('Error loading folder: $e');
    }
  }

  /// Create a new file
  Future<void> createFile() async {
    try {
      print('Creating file...');
      _updateStatus('Creating file...');

      await _state.fileRepository!.createFile(
        profileId: _state.selectedProfileId!,
        fileName: 'file_${DateTime.now().millisecondsSinceEpoch}.txt',
        data: Uint8List.fromList([1, 2, 3, 4, 5]),
        parentFolderId: _state.currentFolderId,
      );

      print('File created!');
      await loadCurrentFolder();
    } catch (e, st) {
      print('Error creating file: $e\n$st');
      _updateError('Error creating file: $e');
    }
  }

  /// Pick and upload a file from device
  Future<void> pickAndUploadFile() async {
    try {
      print('Picking file...');
      _updateStatus('Picking file...');

      final result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );

      if (result != null && result.files.isNotEmpty) {
        final file = result.files.first;
        final fileName = file.name;
        final fileBytes = file.bytes;

        if (fileBytes != null) {
          _updateStatus('Uploading file: $fileName...');

          await _state.fileRepository!.createFile(
            profileId: _state.selectedProfileId!,
            fileName: fileName,
            data: fileBytes,
            parentFolderId: _state.currentFolderId,
          );

          print('File uploaded: $fileName');
          await loadCurrentFolder();
        } else {
          _updateError('Could not read file bytes');
        }
      } else {
        _updateStatus('File picking cancelled');
      }
    } catch (e, st) {
      print('Error picking file: $e\n$st');
      _updateError('Error picking file: $e');
    }
  }

  /// Create a new folder
  Future<void> createFolder() async {
    try {
      print('Creating folder...');
      _updateStatus('Creating folder...');

      await _state.fileRepository!.createFolder(
        profileId: _state.selectedProfileId!,
        folderName: 'folder_${DateTime.now().millisecondsSinceEpoch}',
        parentFolderId: _state.currentFolderId,
      );

      print('Folder created!');
      await loadCurrentFolder();
    } catch (e, st) {
      print('Error creating folder: $e\n$st');
      _updateError('Error creating folder: $e');
    }
  }

  /// Open a folder
  Future<void> openFolder(ItemData item) async {
    if (item.isFolder) {
      print('Opening folder: ${item.name}');
      _updateStatus('Opening folder: ${item.name}');

      _state = _state.copyWith(currentFolderId: item.id);
      await loadCurrentFolder();
    }
  }

  /// View file content
  Future<void> viewFile(ItemData item) async {
    if (!item.isFolder) {
      try {
        print('Viewing file: ${item.name}');
        _updateStatus('Loading file content...');

        final content =
            await _state.fileRepository!.getFileContent(fileId: item.id);
        print('File content: ${content.join(', ')}');

        _state = _state.copyWith(status: 'File content: ${content.join(', ')}');
      } catch (e, st) {
        print('Error reading file: $e\n$st');
        _updateError('Error reading file: $e');
      }
    }
  }

  /// Delete an item (file or folder)
  Future<void> deleteItem(ItemData item) async {
    try {
      print('Deleting item: ${item.name}');
      _updateStatus('Deleting ${item.name}...');

      if (item.isFolder) {
        await _deleteFolderContents(item.id);
        await _state.fileRepository!.deleteFolder(folderId: item.id);
      } else {
        await _state.fileRepository!.deleteFile(fileId: item.id);
      }

      print('Item deleted!');
      await loadCurrentFolder();
    } catch (e, st) {
      print('Error deleting item: $e\n$st');
      _updateError('Error deleting item: $e');
    }
  }

  /// Recursively delete folder contents
  Future<void> _deleteFolderContents(String folderId) async {
    final contents =
        await _state.fileRepository!.getFolderData(folderId: folderId);
    for (final content in contents) {
      if (content.isFolder) {
        await _deleteFolderContents(content.id);
        await _state.fileRepository!.deleteFolder(folderId: content.id);
      } else {
        await _state.fileRepository!.deleteFile(fileId: content.id);
      }
    }
  }

  /// Delete a profile
  Future<void> deleteProfile(String profileId) async {
    try {
      print('Deleting profile: $profileId');
      _updateStatus('Deleting profile...');

      await _state.profileRepository!.deleteProfile(profileId: profileId);

      if (_state.selectedProfileId == profileId) {
        _state = _state.copyWith(
          selectedProfileId: null,
          currentItems: [],
        );
      }

      print('Profile deleted!');
      await loadProfiles();
    } catch (e, st) {
      print('Error deleting profile: $e\n$st');
      _updateError('Error deleting profile: $e');
    }
  }

  /// Go back to parent folder
  Future<void> goBackToParent() async {
    _state = _state.copyWith(currentFolderId: null);
    await loadCurrentFolder();
  }

  /// Close the database
  void closeDatabase() {
    print('Closing database...');
    _state.database?.close();
  }

  void _updateStatus(String status) {
    _state = _state.copyWith(status: status, error: null);
  }

  void _updateError(String error) {
    _state = _state.copyWith(status: 'Error occurred', error: error);
  }
}
