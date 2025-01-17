//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_forbidden_error_details_inner.g.dart';

/// ActionForbiddenErrorDetailsInner
///
/// Properties:
/// * [issue] 
/// * [field] 
/// * [value] 
/// * [location] 
@BuiltValue()
abstract class ActionForbiddenErrorDetailsInner implements Built<ActionForbiddenErrorDetailsInner, ActionForbiddenErrorDetailsInnerBuilder> {
  @BuiltValueField(wireName: r'issue')
  String get issue;

  @BuiltValueField(wireName: r'field')
  String? get field;

  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'location')
  String? get location;

  ActionForbiddenErrorDetailsInner._();

  factory ActionForbiddenErrorDetailsInner([void updates(ActionForbiddenErrorDetailsInnerBuilder b)]) = _$ActionForbiddenErrorDetailsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActionForbiddenErrorDetailsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActionForbiddenErrorDetailsInner> get serializer => _$ActionForbiddenErrorDetailsInnerSerializer();
}

class _$ActionForbiddenErrorDetailsInnerSerializer implements PrimitiveSerializer<ActionForbiddenErrorDetailsInner> {
  @override
  final Iterable<Type> types = const [ActionForbiddenErrorDetailsInner, _$ActionForbiddenErrorDetailsInner];

  @override
  final String wireName = r'ActionForbiddenErrorDetailsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActionForbiddenErrorDetailsInner object, {
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
    ActionForbiddenErrorDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActionForbiddenErrorDetailsInnerBuilder result,
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
  ActionForbiddenErrorDetailsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActionForbiddenErrorDetailsInnerBuilder();
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

