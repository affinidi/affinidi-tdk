import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('Starting Drift Cross-Platform Example app...');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drift Cross-Platform Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const DriftExamplePage(),
    );
  }
}

class DriftExamplePage extends StatefulWidget {
  const DriftExamplePage({super.key});

  @override
  State<DriftExamplePage> createState() => _DriftExamplePageState();
}

class _DriftExamplePageState extends State<DriftExamplePage> {
  Database? _database;
  EdgeDriftProfileRepository? _profileRepository;
  EdgeDriftFileRepository? _fileRepository;
  List<EdgeProfile> _profiles = [];
  List<dynamic> _currentItems = [];
  String? _selectedProfileId;
  String? _currentFolderId;
  String _status = 'Initializing...';

  @override
  void initState() {
    super.initState();
    _initializeDatabase();
  }

  Future<void> _initializeDatabase() async {
    try {
      setState(() => _status = 'Creating database...');
      print('Initializing database...');
      final platformInfo = DatabaseConfig.getPlatformInfo();
      print('Platform info: $platformInfo');
      _database = await DatabaseConfig.createDatabase();
      print('Database created successfully');
      _profileRepository = EdgeDriftProfileRepository(database: _database!);
      setState(() => _status =
          'Database ready (${platformInfo['platform']} - ${platformInfo['database']})');
      await _loadProfiles();
    } catch (e, st) {
      print('Error initializing database: $e\n$st');
      setState(() => _status = 'Error: $e');
    }
  }

  Future<void> _loadProfiles() async {
    try {
      print('Loading profiles...');
      final profiles = await _profileRepository!.listProfiles();
      print('Profiles loaded: ${profiles.length}');
      setState(() {
        _profiles = profiles;
        _status = 'Loaded ${profiles.length} profiles';
      });
    } catch (e, st) {
      print('Error loading profiles: $e\n$st');
      setState(() => _status = 'Error loading profiles: $e');
    }
  }

  Future<void> _createProfile() async {
    try {
      print('Creating profile...');
      setState(() => _status = 'Creating profile...');
      await _profileRepository!.createProfile(
        name: 'Profile ${_profiles.length + 1}',
        description: 'Test profile',
        accountIndex: _profiles.length + 1,
      );
      print('Profile created!');
      await _loadProfiles();
    } catch (e, st) {
      print('Error creating profile: $e\n$st');
      setState(() => _status = 'Error creating profile: $e');
    }
  }

  Future<void> _selectProfile(String profileId) async {
    try {
      print('Selecting profile: $profileId');
      setState(() => _status = 'Loading profile contents...');
      _selectedProfileId = profileId;
      _currentFolderId = null;
      _fileRepository = EdgeDriftFileRepository(
        database: _database!,
        profileId: profileId,
      );
      await _loadCurrentFolder();
    } catch (e, st) {
      print('Error selecting profile: $e\n$st');
      setState(() => _status = 'Error selecting profile: $e');
    }
  }

  Future<void> _loadCurrentFolder() async {
    try {
      print('Loading folder: ${_currentFolderId ?? "root"}');
      final items =
          await _fileRepository!.getFolder(folderId: _currentFolderId);
      print('Loaded ${items.length} items in folder');
      setState(() {
        _currentItems = items;
        _status = 'Loaded ${items.length} items';
      });
    } catch (e, st) {
      print('Error loading folder: $e\n$st');
      setState(() => _status = 'Error loading folder: $e');
    }
  }

  Future<void> _createFile() async {
    try {
      print('Creating file...');
      setState(() => _status = 'Creating file...');
      await _fileRepository!.createFile(
        profileId: _selectedProfileId!,
        fileName: 'file_${DateTime.now().millisecondsSinceEpoch}.txt',
        data: Uint8List.fromList([1, 2, 3, 4, 5]),
        parentFolderId: _currentFolderId,
      );
      print('File created!');
      await _loadCurrentFolder();
    } catch (e, st) {
      print('Error creating file: $e\n$st');
      setState(() => _status = 'Error creating file: $e');
    }
  }

  Future<void> _createFolder() async {
    try {
      print('Creating folder...');
      setState(() => _status = 'Creating folder...');
      await _fileRepository!.createFolder(
        profileId: _selectedProfileId!,
        folderName: 'folder_${DateTime.now().millisecondsSinceEpoch}',
        parentFolderId: _currentFolderId,
      );
      print('Folder created!');
      await _loadCurrentFolder();
    } catch (e, st) {
      print('Error creating folder: $e\n$st');
      setState(() => _status = 'Error creating folder: $e');
    }
  }

  Future<void> _openFolder(dynamic item) async {
    if (item is Folder) {
      print('Opening folder: ${item.name}');
      setState(() => _status = 'Opening folder: ${item.name}');
      _currentFolderId = item.id;
      await _loadCurrentFolder();
    }
  }

  Future<void> _viewFile(dynamic item) async {
    if (item is File) {
      try {
        print('Viewing file: ${item.name}');
        setState(() => _status = 'Loading file content...');
        final content = await _fileRepository!.getFileContent(fileId: item.id);
        print('File content: ${content.join(', ')}');
        setState(() => _status = 'File content: ${content.join(', ')}');
      } catch (e, st) {
        print('Error reading file: $e\n$st');
        setState(() => _status = 'Error reading file: $e');
      }
    }
  }

  Future<void> _deleteItem(dynamic item) async {
    try {
      print('Deleting item: ${item.name}');
      setState(() => _status = 'Deleting ${item.name}...');
      if (item is File) {
        await _fileRepository!.deleteFile(fileId: item.id);
      } else if (item is Folder) {
        // Delete folder contents first
        final contents = await _fileRepository!.getFolder(folderId: item.id);
        for (final content in contents) {
          await _fileRepository!.deleteFile(fileId: content.id);
        }
        await _fileRepository!.deleteFolder(folderId: item.id);
      }
      print('Item deleted!');
      await _loadCurrentFolder();
    } catch (e, st) {
      print('Error deleting item: $e\n$st');
      setState(() => _status = 'Error deleting item: $e');
    }
  }

  Future<void> _deleteProfile(String profileId) async {
    try {
      print('Deleting profile: $profileId');
      setState(() => _status = 'Deleting profile...');
      await _profileRepository!.deleteProfile(profileId: profileId);
      if (_selectedProfileId == profileId) {
        _selectedProfileId = null;
        _currentItems = [];
      }
      print('Profile deleted!');
      await _loadProfiles();
    } catch (e, st) {
      print('Error deleting profile: $e\n$st');
      setState(() => _status = 'Error deleting profile: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drift Cross-Platform Example'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          // Status bar
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            color: Colors.grey[200],
            child: Text(_status, style: const TextStyle(fontSize: 12)),
          ),

          Expanded(
            child: Row(
              children: [
                // Left panel - Profiles
                Expanded(
                  flex: 1,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              const Text('Profiles',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Spacer(),
                              IconButton(
                                icon: const Icon(Icons.add),
                                onPressed: _createProfile,
                                tooltip: 'Add Profile',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: _profiles.length,
                            itemBuilder: (context, index) {
                              final profile = _profiles[index];
                              return ListTile(
                                title: Text(profile.name),
                                subtitle: Text(profile.description ?? ''),
                                selected: _selectedProfileId == profile.id,
                                onTap: () => _selectProfile(profile.id),
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () => _deleteProfile(profile.id),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Right panel - Files and Folders
                Expanded(
                  flex: 2,
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              const Text('Files & Folders',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              const Spacer(),
                              if (_selectedProfileId != null) ...[
                                IconButton(
                                  icon: const Icon(Icons.create_new_folder),
                                  onPressed: _createFolder,
                                  tooltip: 'Add Folder',
                                ),
                                IconButton(
                                  icon: const Icon(Icons.note_add),
                                  onPressed: _createFile,
                                  tooltip: 'Add File',
                                ),
                              ],
                            ],
                          ),
                        ),
                        if (_selectedProfileId != null) ...[
                          if (_currentFolderId != null)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: () {
                                      _currentFolderId = null;
                                      _loadCurrentFolder();
                                    },
                                  ),
                                  const Text('Back to root'),
                                ],
                              ),
                            ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: _currentItems.length,
                              itemBuilder: (context, index) {
                                final item = _currentItems[index];
                                return ListTile(
                                  leading: Icon(
                                    item is File
                                        ? Icons.insert_drive_file
                                        : Icons.folder,
                                    color: item is File
                                        ? Colors.blue
                                        : Colors.orange,
                                  ),
                                  title: Text(item.name),
                                  onTap: () {
                                    if (item is Folder) {
                                      _openFolder(item);
                                    } else {
                                      _viewFile(item);
                                    }
                                  },
                                  trailing: IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () => _deleteItem(item),
                                  ),
                                );
                              },
                            ),
                          ),
                        ] else
                          const Expanded(
                            child: Center(
                              child: Text(
                                  'Select a profile to view files and folders'),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    print('Closing database...');
    _database?.close();
    super.dispose();
  }
}
