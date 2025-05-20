import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthzApi extends Mock implements AuthzApi {}

class MockAffinidiTdkIamClient extends Mock implements AffinidiTdkIamClient {}

class GrantAccessInputFake extends Fake implements GrantAccessInput {}
