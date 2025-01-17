//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/login_configuration_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_login_configuration_output.g.dart';

/// ListLoginConfigurationOutput
///
/// Properties:
/// * [configurations] 
/// * [lastEvaluatedKey] 
@BuiltValue()
abstract class ListLoginConfigurationOutput implements Built<ListLoginConfigurationOutput, ListLoginConfigurationOutputBuilder> {
  @BuiltValueField(wireName: r'configurations')
  BuiltList<LoginConfigurationObject> get configurations;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  ListLoginConfigurationOutput._();

  factory ListLoginConfigurationOutput([void updates(ListLoginConfigurationOutputBuilder b)]) = _$ListLoginConfigurationOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListLoginConfigurationOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListLoginConfigurationOutput> get serializer => _$ListLoginConfigurationOutputSerializer();
}

class _$ListLoginConfigurationOutputSerializer implements PrimitiveSerializer<ListLoginConfigurationOutput> {
  @override
  final Iterable<Type> types = const [ListLoginConfigurationOutput, _$ListLoginConfigurationOutput];

  @override
  final String wireName = r'ListLoginConfigurationOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListLoginConfigurationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'configurations';
    yield serializers.serialize(
      object.configurations,
      specifiedType: const FullType(BuiltList, [FullType(LoginConfigurationObject)]),
    );
    if (object.lastEvaluatedKey != null) {
      yield r'lastEvaluatedKey';
      yield serializers.serialize(
        object.lastEvaluatedKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListLoginConfigurationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListLoginConfigurationOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configurations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(LoginConfigurationObject)]),
          ) as BuiltList<LoginConfigurationObject>;
          result.configurations.replace(valueDes);
          break;
        case r'lastEvaluatedKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastEvaluatedKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListLoginConfigurationOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListLoginConfigurationOutputBuilder();
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

