import 'package:test/test.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';


/// tests for GroupApi
void main() {
  final instance = AffinidiTdkLoginConfigurationClient().getGroupApi();

  group(GroupApi, () {
    //Future<GroupUserMappingDto> addUserToGroup(String groupName, AddUserToGroupInput addUserToGroupInput) async
    test('test addUserToGroup', () async {
      // TODO
    });

    //Future<GroupDto> createGroup(CreateGroupInput createGroupInput) async
    test('test createGroup', () async {
      // TODO
    });

    //Future deleteGroup(String groupName) async
    test('test deleteGroup', () async {
      // TODO
    });

    //Future<GroupDto> getGroupById(String groupName) async
    test('test getGroupById', () async {
      // TODO
    });

    //Future<GroupUserMappingsList> listGroupUserMappings(String groupName, { int limit, String exclusiveStartKey, String sortOrder }) async
    test('test listGroupUserMappings', () async {
      // TODO
    });

    //Future<GroupsList> listGroups() async
    test('test listGroups', () async {
      // TODO
    });

    //Future removeUserFromGroup(String groupName, RemoveUserFromGroupInput removeUserFromGroupInput) async
    test('test removeUserFromGroup', () async {
      // TODO
    });

  });
}
