//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/date_serializer.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/date.dart';

import 'package:affinidi_tdk_consumer_iam_client/src/model/consumer_auth_token_endpoint_input.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/consumer_auth_token_endpoint_output.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/cors_consumer_auth_token_endpoint_ok.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/get_access_output.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/grant_access_input.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/grant_access_output.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/invalid_did_error.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/invalid_jwt_token_error.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/invalid_jwt_token_error_details_inner.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/json_web_key_dto.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/json_web_key_set_dto.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/permission.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/rights_enum.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/unauthorized_error.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/unexpected_error.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/update_access_input.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/update_access_output.dart';

part 'serializers.g.dart';

@SerializersFor([
  ConsumerAuthTokenEndpointInput,
  ConsumerAuthTokenEndpointOutput,
  CorsConsumerAuthTokenEndpointOK,
  GetAccessOutput,
  GrantAccessInput,
  GrantAccessOutput,
  InvalidDIDError,
  InvalidJwtTokenError,
  InvalidJwtTokenErrorDetailsInner,
  InvalidParameterError,
  JsonWebKeyDto,
  JsonWebKeySetDto,
  Permission,
  RightsEnum,
  UnauthorizedError,
  UnexpectedError,
  UpdateAccessInput,
  UpdateAccessOutput,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
