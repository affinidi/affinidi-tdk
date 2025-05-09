import 'dart:convert';

import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:built_value/json_object.dart';

import 'profile_data.dart';

final JsonObject profileDataJsonObject =
    JsonObject(jsonEncode(profileDataJson));

final profileDataOKBuilder = QueryProfileDataOKBuilder()
  ..data = profileDataJsonObject;

final profileDataOk = profileDataOKBuilder.build();
