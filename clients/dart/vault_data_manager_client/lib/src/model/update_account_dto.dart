//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_account_dto.g.dart';

/// UpdateAccountDto
///
/// Properties:
/// * [accountIndex] 
/// * [accountDid] - Profile DID that is associated with the account number
/// * [metadata] 
@BuiltValue()
abstract class UpdateAccountDto implements Built<UpdateAccountDto, UpdateAccountDtoBuilder> {
  @BuiltValueField(wireName: r'accountIndex')
  int get accountIndex;

  /// Profile DID that is associated with the account number
  @BuiltValueField(wireName: r'accountDid')
  String get accountDid;

  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  UpdateAccountDto._();

  factory UpdateAccountDto([void updates(UpdateAccountDtoBuilder b)]) = _$UpdateAccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAccountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAccountDto> get serializer => _$UpdateAccountDtoSerializer();
}

class _$UpdateAccountDtoSerializer implements PrimitiveSerializer<UpdateAccountDto> {
  @override
  final Iterable<Type> types = const [UpdateAccountDto, _$UpdateAccountDto];

  @override
  final String wireName = r'UpdateAccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountIndex';
    yield serializers.serialize(
      object.accountIndex,
      specifiedType: const FullType(int),
    );
    yield r'accountDid';
    yield serializers.serialize(
      object.accountDid,
      specifiedType: const FullType(String),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateAccountDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accountIndex = valueDes;
          break;
        case r'accountDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountDid = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateAccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccountDtoBuilder();
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

