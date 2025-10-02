//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authorization_request_pex.g.dart';

/// AuthorizationRequestPex
///
/// Properties:
/// * [state] - State parameter
/// * [presentationDefinition] - Presentation Definition to ask from the user. In JSON Stringify format.
/// * [ari] - ARI is used for analytics proposals.
/// * [clientId] - clientId used for detect origin.
/// * [nonce] - nonce for VP Token proof challenge
@BuiltValue()
abstract class AuthorizationRequestPex implements Built<AuthorizationRequestPex, AuthorizationRequestPexBuilder> {
  /// State parameter
  @BuiltValueField(wireName: r'state')
  String get state;

  /// Presentation Definition to ask from the user. In JSON Stringify format.
  @BuiltValueField(wireName: r'presentationDefinition')
  String get presentationDefinition;

  /// ARI is used for analytics proposals.
  @BuiltValueField(wireName: r'ari')
  String? get ari;

  /// clientId used for detect origin.
  @BuiltValueField(wireName: r'clientId')
  String? get clientId;

  /// nonce for VP Token proof challenge
  @BuiltValueField(wireName: r'nonce')
  String? get nonce;

  AuthorizationRequestPex._();

  factory AuthorizationRequestPex([void updates(AuthorizationRequestPexBuilder b)]) = _$AuthorizationRequestPex;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthorizationRequestPexBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthorizationRequestPex> get serializer => _$AuthorizationRequestPexSerializer();
}

class _$AuthorizationRequestPexSerializer implements PrimitiveSerializer<AuthorizationRequestPex> {
  @override
  final Iterable<Type> types = const [AuthorizationRequestPex, _$AuthorizationRequestPex];

  @override
  final String wireName = r'AuthorizationRequestPex';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthorizationRequestPex object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'state';
    yield serializers.serialize(
      object.state,
      specifiedType: const FullType(String),
    );
    yield r'presentationDefinition';
    yield serializers.serialize(
      object.presentationDefinition,
      specifiedType: const FullType(String),
    );
    if (object.ari != null) {
      yield r'ari';
      yield serializers.serialize(
        object.ari,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientId != null) {
      yield r'clientId';
      yield serializers.serialize(
        object.clientId,
        specifiedType: const FullType(String),
      );
    }
    if (object.nonce != null) {
      yield r'nonce';
      yield serializers.serialize(
        object.nonce,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthorizationRequestPex object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthorizationRequestPexBuilder result,
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
        case r'presentationDefinition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.presentationDefinition = valueDes;
          break;
        case r'ari':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ari = valueDes;
          break;
        case r'clientId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientId = valueDes;
          break;
        case r'nonce':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nonce = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthorizationRequestPex deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizationRequestPexBuilder();
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

