//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_configuration_by_id_ok.g.dart';

/// UpdateConfigurationByIdOK
///
/// Properties:
/// * [updateConfigurationByIdOk] 
@BuiltValue()
abstract class UpdateConfigurationByIdOK implements Built<UpdateConfigurationByIdOK, UpdateConfigurationByIdOKBuilder> {
  @BuiltValueField(wireName: r'updateConfigurationByIdOk')
  String? get updateConfigurationByIdOk;

  UpdateConfigurationByIdOK._();

  factory UpdateConfigurationByIdOK([void updates(UpdateConfigurationByIdOKBuilder b)]) = _$UpdateConfigurationByIdOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateConfigurationByIdOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateConfigurationByIdOK> get serializer => _$UpdateConfigurationByIdOKSerializer();
}

class _$UpdateConfigurationByIdOKSerializer implements PrimitiveSerializer<UpdateConfigurationByIdOK> {
  @override
  final Iterable<Type> types = const [UpdateConfigurationByIdOK, _$UpdateConfigurationByIdOK];

  @override
  final String wireName = r'UpdateConfigurationByIdOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateConfigurationByIdOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.updateConfigurationByIdOk != null) {
      yield r'updateConfigurationByIdOk';
      yield serializers.serialize(
        object.updateConfigurationByIdOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateConfigurationByIdOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateConfigurationByIdOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'updateConfigurationByIdOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateConfigurationByIdOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateConfigurationByIdOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateConfigurationByIdOKBuilder();
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

