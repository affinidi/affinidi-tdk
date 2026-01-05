import 'package:affinidi_tdk_consumer_iam_client/affinidi_tdk_consumer_iam_client.dart'
    as consumer_iam;
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthzApi extends Mock implements AuthzApi {}

class MockAffinidiTdkIamClient extends Mock implements AffinidiTdkIamClient {}

class GrantAccessInputFake extends Fake implements GrantAccessInput {}

class MockConsumerAuthzApi extends Mock implements consumer_iam.AuthzApi {}

class MockAffinidiTdkConsumerIamClient extends Mock
    implements consumer_iam.AffinidiTdkConsumerIamClient {}
