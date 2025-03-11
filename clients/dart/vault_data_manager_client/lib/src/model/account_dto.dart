//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_dto.g.dart';

/// AccountDto
///
/// Properties:
/// * [accountNumber] - Account number
/// * [did] - Profile DID
@BuiltValue()
abstract class AccountDto implements Built<AccountDto, AccountDtoBuilder> {
  /// Account number
  @BuiltValueField(wireName: r'accountNumber')
  String? get accountNumber;

  /// Profile DID
  @BuiltValueField(wireName: r'did')
  String? get did;

  AccountDto._();

  factory AccountDto([void updates(AccountDtoBuilder b)]) = _$AccountDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountDto> get serializer => _$AccountDtoSerializer();
}

class _$AccountDtoSerializer implements PrimitiveSerializer<AccountDto> {
  @override
  final Iterable<Type> types = const [AccountDto, _$AccountDto];

  @override
  final String wireName = r'AccountDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accountNumber != null) {
      yield r'accountNumber';
      yield serializers.serialize(
        object.accountNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.did != null) {
      yield r'did';
      yield serializers.serialize(
        object.did,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountNumber = valueDes;
          break;
        case r'did':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.did = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountDtoBuilder();
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

