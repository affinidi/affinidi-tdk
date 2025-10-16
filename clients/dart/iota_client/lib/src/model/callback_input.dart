//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'callback_input.g.dart';

/// CallbackInput
///
/// Properties:
/// * [state] - A randomly generated string that follows a valid UUID (version 1-5) format to validate the session.
/// * [presentationSubmission] - A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard.
/// * [vpToken] - A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.
/// * [responseCode] - Used only for internal system flows. This field is not applicable  for external client integrations and will not produce valid results  when used outside of internal contexts.
/// * [error] - A short string indicating the error code reported by the service. It follows the OAuth 2.0 error code format (e.g., invalid_request, access_denied). The default is access_denied.
/// * [errorDescription] - A human-readable description that provides detailed information about the error.
/// * [onboarded] - It specifies whether the data sharing flow triggered an onboarding process to the Affinidi Vault [New User].
@BuiltValue()
abstract class CallbackInput
    implements Built<CallbackInput, CallbackInputBuilder> {
  /// A randomly generated string that follows a valid UUID (version 1-5) format to validate the session.
  @BuiltValueField(wireName: r'state')
  String get state;

  /// A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard.
  @BuiltValueField(wireName: r'presentation_submission')
  String? get presentationSubmission;

  /// A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.
  @BuiltValueField(wireName: r'vp_token')
  String? get vpToken;

  /// Used only for internal system flows. This field is not applicable  for external client integrations and will not produce valid results  when used outside of internal contexts.
  @BuiltValueField(wireName: r'response_code')
  String? get responseCode;

  /// A short string indicating the error code reported by the service. It follows the OAuth 2.0 error code format (e.g., invalid_request, access_denied). The default is access_denied.
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// A human-readable description that provides detailed information about the error.
  @BuiltValueField(wireName: r'error_description')
  String? get errorDescription;

  /// It specifies whether the data sharing flow triggered an onboarding process to the Affinidi Vault [New User].
  @BuiltValueField(wireName: r'onboarded')
  bool? get onboarded;

  CallbackInput._();

  factory CallbackInput([void updates(CallbackInputBuilder b)]) =
      _$CallbackInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CallbackInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CallbackInput> get serializer =>
      _$CallbackInputSerializer();
}

class _$CallbackInputSerializer implements PrimitiveSerializer<CallbackInput> {
  @override
  final Iterable<Type> types = const [CallbackInput, _$CallbackInput];

  @override
  final String wireName = r'CallbackInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CallbackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
    if (object.presentationSubmission != null) {
      yield r'presentation_submission';
      yield serializers.serialize(
        object.presentationSubmission,
        specifiedType: const FullType(String),
      );
    }
    if (object.vpToken != null) {
      yield r'vp_token';
      yield serializers.serialize(
        object.vpToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.responseCode != null) {
      yield r'response_code';
      yield serializers.serialize(
        object.responseCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.errorDescription != null) {
      yield r'error_description';
      yield serializers.serialize(
        object.errorDescription,
        specifiedType: const FullType(String),
      );
    }
    if (object.onboarded != null) {
      yield r'onboarded';
      yield serializers.serialize(
        object.onboarded,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CallbackInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CallbackInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.state = valueDes;
          break;
        case r'presentation_submission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.presentationSubmission = valueDes;
          break;
        case r'vp_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vpToken = valueDes;
          break;
        case r'response_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseCode = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        case r'error_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorDescription = valueDes;
          break;
        case r'onboarded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.onboarded = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CallbackInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CallbackInputBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
