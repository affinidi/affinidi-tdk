import 'package:flutter/material.dart';

import 'pages/drift_example_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('Starting Drift Cross-Platform Example app...');
  runApp(const MyApp());
}

/// Main application widget for the Edge Drift Provider Example
class MyApp extends StatelessWidget {
  /// Creates a new [MyApp] instance
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
