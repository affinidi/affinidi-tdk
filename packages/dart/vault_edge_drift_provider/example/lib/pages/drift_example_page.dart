import 'package:affinidi_tdk_vault_edge_drift_provider/affinidi_tdk_vault_edge_drift_provider.dart';
import 'package:flutter/material.dart';

import '../services/drift_service.dart';
import '../services/drift_service_state.dart';

class DriftExamplePage extends StatefulWidget {
  const DriftExamplePage({super.key});

  @override
  State<DriftExamplePage> createState() => _DriftExamplePageState();
}

class _DriftExamplePageState extends State<DriftExamplePage> {
  late final DriftService _service;
  DriftServiceState _state = const DriftServiceState();

  @override
  void initState() {
    super.initState();
    _service = DriftService();
    _initializeService();
  }

  Future<void> _initializeService() async {
    await _service.initializeDatabase();
    _updateState();
  }

  void _updateState() {
    setState(() {
      _state = _service.state;
    });
  }

  Future<void> _createProfile() async {
    await _service.createProfile();
    _updateState();
  }

  Future<void> _selectProfile(String profileId) async {
    await _service.selectProfile(profileId);
    _updateState();
  }

  Future<void> _createFile() async {
    await _service.createFile();
    _updateState();
  }

  Future<void> _pickAndUploadFile() async {
    await _service.pickAndUploadFile();
    _updateState();
  }

  Future<void> _createFolder() async {
    await _service.createFolder();
    _updateState();
  }

  Future<void> _openFolder(ItemData item) async {
    await _service.openFolder(item);
    _updateState();
  }

  Future<void> _viewFile(ItemData item) async {
    await _service.viewFile(item);
    _updateState();
  }

  Future<void> _deleteItem(ItemData item) async {
    await _service.deleteItem(item);
    _updateState();
  }

  Future<void> _deleteProfile(String profileId) async {
    await _service.deleteProfile(profileId);
    _updateState();
  }

  Future<void> _goBackToParent() async {
    await _service.goBackToParent();
    _updateState();
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
            child: Text(_state.status, style: const TextStyle(fontSize: 12)),
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
                            itemCount: _state.profiles.length,
                            itemBuilder: (context, index) {
                              final profile = _state.profiles[index];
                              return ListTile(
                                title: Text(profile.name),
                                subtitle: Text(profile.description ?? ''),
                                selected:
                                    _state.selectedProfileId == profile.id,
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
                              if (_state.selectedProfileId != null) ...[
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
                                IconButton(
                                  icon: const Icon(Icons.file_upload),
                                  onPressed: _pickAndUploadFile,
                                  tooltip: 'Pick & Upload File',
                                ),
                              ],
                            ],
                          ),
                        ),
                        if (_state.selectedProfileId != null) ...[
                          if (_state.currentFolderId != null)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: _goBackToParent,
                                  ),
                                  const Text('Back to root'),
                                ],
                              ),
                            ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: _state.currentItems.length,
                              itemBuilder: (context, index) {
                                final item = _state.currentItems[index];
                                return ListTile(
                                  leading: Icon(
                                    item.isFolder
                                        ? Icons.folder
                                        : Icons.insert_drive_file,
                                    color: item.isFolder
                                        ? Colors.orange
                                        : Colors.blue,
                                  ),
                                  title: Text(item.name),
                                  onTap: () {
                                    if (item.isFolder) {
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
    _service.closeDatabase();
    super.dispose();
  }
}
