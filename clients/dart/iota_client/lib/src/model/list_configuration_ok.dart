//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iota_client/src/model/iota_configuration_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_configuration_ok.g.dart';

/// ListConfigurationOK
///
/// Properties:
/// * [configurations] 
@BuiltValue()
abstract class ListConfigurationOK implements Built<ListConfigurationOK, ListConfigurationOKBuilder> {
  @BuiltValueField(wireName: r'configurations')
  BuiltList<IotaConfigurationDto> get configurations;

  ListConfigurationOK._();

  factory ListConfigurationOK([void updates(ListConfigurationOKBuilder b)]) = _$ListConfigurationOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListConfigurationOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListConfigurationOK> get serializer => _$ListConfigurationOKSerializer();
}

class _$ListConfigurationOKSerializer implements PrimitiveSerializer<ListConfigurationOK> {
  @override
  final Iterable<Type> types = const [ListConfigurationOK, _$ListConfigurationOK];

  @override
  final String wireName = r'ListConfigurationOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListConfigurationOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'configurations';
    yield serializers.serialize(
      object.configurations,
      specifiedType: const FullType(BuiltList, [FullType(IotaConfigurationDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListConfigurationOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListConfigurationOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configurations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IotaConfigurationDto)]),
          ) as BuiltList<IotaConfigurationDto>;
          result.configurations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListConfigurationOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListConfigurationOKBuilder();
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

