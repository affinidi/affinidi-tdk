//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_jwt_token_error_details_inner.g.dart';

/// InvalidJwtTokenErrorDetailsInner
///
/// Properties:
/// * [issue]
/// * [field]
/// * [value]
/// * [location]
@BuiltValue()
abstract class InvalidJwtTokenErrorDetailsInner
    implements
        Built<InvalidJwtTokenErrorDetailsInner,
            InvalidJwtTokenErrorDetailsInnerBuilder> {
  @BuiltValueField(wireName: r'issue')
  String get issue;

  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'location')
  String? get location;

  InvalidJwtTokenErrorDetailsInner._();

  factory InvalidJwtTokenErrorDetailsInner(
          [void updates(InvalidJwtTokenErrorDetailsInnerBuilder b)]) =
      _$InvalidJwtTokenErrorDetailsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidJwtTokenErrorDetailsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidJwtTokenErrorDetailsInner> get serializer =>
      _$InvalidJwtTokenErrorDetailsInnerSerializer();
}

class _$InvalidJwtTokenErrorDetailsInnerSerializer
    implements PrimitiveSerializer<InvalidJwtTokenErrorDetailsInner> {
  @override
  final Iterable<Type> types = const [
    InvalidJwtTokenErrorDetailsInner,
    _$InvalidJwtTokenErrorDetailsInner
  ];

  @override
  final String wireName = r'InvalidJwtTokenErrorDetailsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidJwtTokenErrorDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'issue';
    yield serializers.serialize(
      object.issue,
      specifiedType: const FullType(String),
    );
    if (object.field != null) {
      yield r'field';
      yield serializers.serialize(
        object.field,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvalidJwtTokenErrorDetailsInner object, {
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
    required InvalidJwtTokenErrorDetailsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'issue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issue = valueDes;
          break;
        case r'field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InvalidJwtTokenErrorDetailsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidJwtTokenErrorDetailsInnerBuilder();
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
