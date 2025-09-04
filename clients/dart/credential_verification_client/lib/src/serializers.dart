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

import 'package:affinidi_tdk_credential_verification_client/src/model/constraints.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/constraints_statuses.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/credential_requirements.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/credential_requirements_constraints.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/descriptor.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/error.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/error_detail.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/evaluate_vp_output.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/field.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/filter.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/filter_const.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/filter_items.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/format.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/holder_subject.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/input_descriptor.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/invalid_parameter_error.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/jwt_object.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/ldp_object.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/nested_descriptor.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/not_found_error.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/not_found_error_details_inner.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/pd_status.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/presentation_definition.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/presentation_submission.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/submission_requirement.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/validate_jwt_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/validate_jwt_output.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_credential_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_credential_output.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_credential_v2_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_presentation_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_presentation_output.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_presentation_v2_input.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_credential_status.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_proof.dart';

part 'serializers.g.dart';

@SerializersFor([
  Constraints,
  ConstraintsStatuses,
  CredentialRequirements,
  CredentialRequirementsConstraints,
  Descriptor,
  Error,
  ErrorDetail,
  EvaluateVpOutput,
  Field,
  Filter,
  FilterConst,
  FilterItems,
  Format,
  HolderSubject,
  InputDescriptor,
  InvalidParameterError,
  JwtObject,
  LdpObject,
  NestedDescriptor,
  NotFoundError,
  NotFoundErrorDetailsInner,
  PdStatus,
  PresentationDefinition,
  PresentationSubmission,
  SubmissionRequirement,
  ValidateJwtInput,
  ValidateJwtOutput,
  VerifyCredentialInput,
  VerifyCredentialOutput,
  VerifyCredentialV2Input,
  VerifyPresentationInput,
  VerifyPresentationOutput,
  VerifyPresentationV2Input,
  W3cCredentialStatus,
  W3cProof,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
