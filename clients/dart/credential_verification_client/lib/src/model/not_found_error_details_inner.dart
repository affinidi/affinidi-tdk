//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'not_found_error_details_inner.g.dart';

/// NotFoundErrorDetailsInner
///
/// Properties:
/// * [issue] 
/// * [field] 
/// * [value] 
/// * [location] 
@BuiltValue()
abstract class NotFoundErrorDetailsInner implements Built<NotFoundErrorDetailsInner, NotFoundErrorDetailsInnerBuilder> {
  @BuiltValueField(wireName: r'issue')
  String get issue;

  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'location')
  String? get location;

  NotFoundErrorDetailsInner._();

  factory NotFoundErrorDetailsInner([void updates(NotFoundErrorDetailsInnerBuilder b)]) = _$NotFoundErrorDetailsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotFoundErrorDetailsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotFoundErrorDetailsInner> get serializer => _$NotFoundErrorDetailsInnerSerializer();
}

class _$NotFoundErrorDetailsInnerSerializer implements PrimitiveSerializer<NotFoundErrorDetailsInner> {
  @override
  final Iterable<Type> types = const [NotFoundErrorDetailsInner, _$NotFoundErrorDetailsInner];

  @override
  final String wireName = r'NotFoundErrorDetailsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotFoundErrorDetailsInner object, {
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
    NotFoundErrorDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotFoundErrorDetailsInnerBuilder result,
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
  NotFoundErrorDetailsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotFoundErrorDetailsInnerBuilder();
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

