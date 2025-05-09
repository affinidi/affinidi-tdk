import 'dart:convert';

import 'verifiable_credential.dart';

final List<int> nodeContent = utf8.encode(jsonEncode(credentialJson));
