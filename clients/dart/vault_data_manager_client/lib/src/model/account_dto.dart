//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_dto.g.dart';

/// AccountDto
///
/// Properties:
/// * [accountIndex] - number that is used for profile DID derivation
/// * [accountDid] - Profile DID that is associated with the account number
/// * [alias] - Alias of account
/// * [metadata] - Metadata of account
/// * [description] - Description of account
@BuiltValue()
abstract class AccountDto implements Built<AccountDto, AccountDtoBuilder> {
  /// number that is used for profile DID derivation
  @BuiltValueField(wireName: r'accountIndex')
  int get accountIndex;

  /// Profile DID that is associated with the account number
  @BuiltValueField(wireName: r'accountDid')
  String get accountDid;

  /// Alias of account
  @BuiltValueField(wireName: r'alias')
  String? get alias;

  /// Metadata of account
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// Description of account
  @BuiltValueField(wireName: r'description')
  String? get description;

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
    if (object.alias != null) {
      yield r'alias';
      yield serializers.serialize(
        object.alias,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
        case r'alias':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alias = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
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

