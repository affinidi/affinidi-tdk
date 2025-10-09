//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'whoami_dto.g.dart';

/// WhoamiDto
///
/// Properties:
/// * [principalId]
/// * [principalType]
@BuiltValue()
abstract class WhoamiDto implements Built<WhoamiDto, WhoamiDtoBuilder> {
  @BuiltValueField(wireName: r'principalId')
  String get principalId;

  @BuiltValueField(wireName: r'principalType')
  String get principalType;

  WhoamiDto._();

  factory WhoamiDto([void updates(WhoamiDtoBuilder b)]) = _$WhoamiDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WhoamiDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WhoamiDto> get serializer => _$WhoamiDtoSerializer();
}

class _$WhoamiDtoSerializer implements PrimitiveSerializer<WhoamiDto> {
  @override
  final Iterable<Type> types = const [WhoamiDto, _$WhoamiDto];

  @override
  final String wireName = r'WhoamiDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WhoamiDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'principalId';
    yield serializers.serialize(
      object.principalId,
      specifiedType: const FullType(String),
    );
    yield r'principalType';
    yield serializers.serialize(
      object.principalType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WhoamiDto object, {
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
    required WhoamiDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'principalId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.principalId = valueDes;
          break;
        case r'principalType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.principalType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WhoamiDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WhoamiDtoBuilder();
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
