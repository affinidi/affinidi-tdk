//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_parameter_error_details_inner.g.dart';

/// InvalidParameterErrorDetailsInner
///
/// Properties:
/// * [issue]
/// * [field]
/// * [value]
/// * [location]
@BuiltValue()
abstract class InvalidParameterErrorDetailsInner
    implements
        Built<InvalidParameterErrorDetailsInner,
            InvalidParameterErrorDetailsInnerBuilder> {
  @BuiltValueField(wireName: r'issue')
  String get issue;

  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'location')
  String? get location;

  InvalidParameterErrorDetailsInner._();

  factory InvalidParameterErrorDetailsInner(
          [void updates(InvalidParameterErrorDetailsInnerBuilder b)]) =
      _$InvalidParameterErrorDetailsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidParameterErrorDetailsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidParameterErrorDetailsInner> get serializer =>
      _$InvalidParameterErrorDetailsInnerSerializer();
}

class _$InvalidParameterErrorDetailsInnerSerializer
    implements PrimitiveSerializer<InvalidParameterErrorDetailsInner> {
  @override
  final Iterable<Type> types = const [
    InvalidParameterErrorDetailsInner,
    _$InvalidParameterErrorDetailsInner
  ];

  @override
  final String wireName = r'InvalidParameterErrorDetailsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidParameterErrorDetailsInner object, {
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
    InvalidParameterErrorDetailsInner object, {
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
    required InvalidParameterErrorDetailsInnerBuilder result,
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
  InvalidParameterErrorDetailsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidParameterErrorDetailsInnerBuilder();
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
