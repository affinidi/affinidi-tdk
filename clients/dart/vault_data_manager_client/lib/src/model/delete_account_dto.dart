//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_account_dto.g.dart';

/// DeleteAccountDto
///
/// Properties:
/// * [accountIndex] 
@BuiltValue()
abstract class DeleteAccountDto implements Built<DeleteAccountDto, DeleteAccountDtoBuilder> {
  @BuiltValueField(wireName: r'accountIndex')
  int? get accountIndex;

  DeleteAccountDto._();

  factory DeleteAccountDto([void updates(DeleteAccountDtoBuilder b)]) = _$DeleteAccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteAccountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteAccountDto> get serializer => _$DeleteAccountDtoSerializer();
}

class _$DeleteAccountDtoSerializer implements PrimitiveSerializer<DeleteAccountDto> {
  @override
  final Iterable<Type> types = const [DeleteAccountDto, _$DeleteAccountDto];

  @override
  final String wireName = r'DeleteAccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accountIndex != null) {
      yield r'accountIndex';
      yield serializers.serialize(
        object.accountIndex,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteAccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteAccountDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteAccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteAccountDtoBuilder();
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

