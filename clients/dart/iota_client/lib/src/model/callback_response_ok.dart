//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'callback_response_ok.g.dart';

/// CallbackResponseOK
///
/// Properties:
/// * [redirectUri] - The URL to which Affinidi Vault will redirect the user.
/// * [responseCode] - A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.
/// * [message] - A message to the Affinidi Vault indicating that the update was successful.
@BuiltValue()
abstract class CallbackResponseOK implements Built<CallbackResponseOK, CallbackResponseOKBuilder> {
  /// The URL to which Affinidi Vault will redirect the user.
  @BuiltValueField(wireName: r'redirect_uri')
  String? get redirectUri;

  /// A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.
  @BuiltValueField(wireName: r'response_code')
  String? get responseCode;

  /// A message to the Affinidi Vault indicating that the update was successful.
  @BuiltValueField(wireName: r'message')
  String get message;

  CallbackResponseOK._();

  factory CallbackResponseOK([void updates(CallbackResponseOKBuilder b)]) = _$CallbackResponseOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CallbackResponseOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CallbackResponseOK> get serializer => _$CallbackResponseOKSerializer();
}

class _$CallbackResponseOKSerializer implements PrimitiveSerializer<CallbackResponseOK> {
  @override
  final Iterable<Type> types = const [CallbackResponseOK, _$CallbackResponseOK];

  @override
  final String wireName = r'CallbackResponseOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CallbackResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.redirectUri != null) {
      yield r'redirect_uri';
      yield serializers.serialize(
        object.redirectUri,
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
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CallbackResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CallbackResponseOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'redirect_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.redirectUri = valueDes;
          break;
        case r'response_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.responseCode = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CallbackResponseOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CallbackResponseOKBuilder();
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

