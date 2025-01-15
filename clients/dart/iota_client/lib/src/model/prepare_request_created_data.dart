//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prepare_request_created_data.g.dart';

/// PrepareRequestCreatedData
///
/// Properties:
/// * [jwt] 
/// * [correlationId] - A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
@BuiltValue()
abstract class PrepareRequestCreatedData implements Built<PrepareRequestCreatedData, PrepareRequestCreatedDataBuilder> {
  @BuiltValueField(wireName: r'jwt')
  String get jwt;

  /// A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
  @BuiltValueField(wireName: r'correlationId')
  String get correlationId;

  PrepareRequestCreatedData._();

  factory PrepareRequestCreatedData([void updates(PrepareRequestCreatedDataBuilder b)]) = _$PrepareRequestCreatedData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrepareRequestCreatedDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrepareRequestCreatedData> get serializer => _$PrepareRequestCreatedDataSerializer();
}

class _$PrepareRequestCreatedDataSerializer implements PrimitiveSerializer<PrepareRequestCreatedData> {
  @override
  final Iterable<Type> types = const [PrepareRequestCreatedData, _$PrepareRequestCreatedData];

  @override
  final String wireName = r'PrepareRequestCreatedData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrepareRequestCreatedData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'jwt';
    yield serializers.serialize(
      object.jwt,
      specifiedType: const FullType(String),
    );
    yield r'correlationId';
    yield serializers.serialize(
      object.correlationId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrepareRequestCreatedData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PrepareRequestCreatedDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jwt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jwt = valueDes;
          break;
        case r'correlationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correlationId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrepareRequestCreatedData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrepareRequestCreatedDataBuilder();
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

