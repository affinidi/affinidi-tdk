import 'package:test/test.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';


/// tests for ProjectsApi
void main() {
  final instance = AffinidiTdkIamClient().getProjectsApi();

  group(ProjectsApi, () {
    //Future addPrincipalToProject(AddUserToProjectInput addUserToProjectInput) async
    test('test addPrincipalToProject', () async {
      // TODO
    });

    //Future<ProjectDto> createProject(CreateProjectInput createProjectInput) async
    test('test createProject', () async {
      // TODO
    });

    //Future deletePrincipalFromProject(String principalId, String principalType) async
    test('test deletePrincipalFromProject', () async {
      // TODO
    });

    //Future<UserList> listPrincipalsOfProject({ int limit, String exclusiveStartKey }) async
    test('test listPrincipalsOfProject', () async {
      // TODO
    });

    //Future<ProjectList> listProject({ int limit, String exclusiveStartKey }) async
    test('test listProject', () async {
      // TODO
    });

    //Future<ProjectDto> updateProject(String projectId, UpdateProjectInput updateProjectInput) async
    test('test updateProject', () async {
      // TODO
    });

  });
}
