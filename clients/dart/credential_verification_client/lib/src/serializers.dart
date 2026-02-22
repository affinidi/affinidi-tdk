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
import 'package:affinidi_tdk_credential_verification_client/src/date_serializer.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/date.dart';

import 'package:affinidi_tdk_credential_verification_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/not_found_error_details_inner.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_credential_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_credential_output.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_credential_v2_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_presentation_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_presentation_output.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_presentation_v2_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_presentation_v2_input_pex_query.dart';

part 'serializers.g.dart';

@SerializersFor([
  InvalidParameterError,
  NotFoundError,
  NotFoundErrorDetailsInner,
  VerifyCredentialInput,
  VerifyCredentialOutput,
  VerifyCredentialV2Input,
  VerifyPresentationInput,
  VerifyPresentationOutput,
  VerifyPresentationV2Input,
  VerifyPresentationV2InputPexQuery,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(
            BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
        () => MapBuilder<String, JsonObject>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
