//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/prepare_request_created_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prepare_request_created.g.dart';

/// PrepareRequestCreated
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class PrepareRequestCreated implements Built<PrepareRequestCreated, PrepareRequestCreatedBuilder> {
  @BuiltValueField(wireName: r'data')
  PrepareRequestCreatedData get data;

  PrepareRequestCreated._();

  factory PrepareRequestCreated([void updates(PrepareRequestCreatedBuilder b)]) = _$PrepareRequestCreated;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrepareRequestCreatedBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrepareRequestCreated> get serializer => _$PrepareRequestCreatedSerializer();
}

class _$PrepareRequestCreatedSerializer implements PrimitiveSerializer<PrepareRequestCreated> {
  @override
  final Iterable<Type> types = const [PrepareRequestCreated, _$PrepareRequestCreated];

  @override
  final String wireName = r'PrepareRequestCreated';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrepareRequestCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(PrepareRequestCreatedData),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrepareRequestCreated object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PrepareRequestCreatedBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PrepareRequestCreatedData),
          ) as PrepareRequestCreatedData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrepareRequestCreated deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrepareRequestCreatedBuilder();
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

