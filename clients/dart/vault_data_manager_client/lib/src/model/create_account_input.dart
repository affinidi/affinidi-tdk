//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_account_input.g.dart';

/// CreateAccountInput
///
/// Properties:
/// * [accountIndex] - number that is used for profile DID derivation
/// * [accountDid] - DID that is associated with the account number
/// * [didProof] - JWT that proves ownership of profile DID by requester
/// * [alias] - Alias of account
/// * [metadata] - Metadata of account
/// * [description] - Description of account
@BuiltValue()
abstract class CreateAccountInput implements Built<CreateAccountInput, CreateAccountInputBuilder> {
  /// number that is used for profile DID derivation
  @BuiltValueField(wireName: r'accountIndex')
  int get accountIndex;

  /// DID that is associated with the account number
  @BuiltValueField(wireName: r'accountDid')
  String get accountDid;

  /// JWT that proves ownership of profile DID by requester
  @BuiltValueField(wireName: r'didProof')
  String get didProof;

  /// Alias of account
  @BuiltValueField(wireName: r'alias')
  String? get alias;

  /// Metadata of account
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// Description of account
  @BuiltValueField(wireName: r'description')
  String? get description;

  CreateAccountInput._();

  factory CreateAccountInput([void updates(CreateAccountInputBuilder b)]) = _$CreateAccountInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAccountInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAccountInput> get serializer => _$CreateAccountInputSerializer();
}

class _$CreateAccountInputSerializer implements PrimitiveSerializer<CreateAccountInput> {
  @override
  final Iterable<Type> types = const [CreateAccountInput, _$CreateAccountInput];

  @override
  final String wireName = r'CreateAccountInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAccountInput object, {
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
    yield r'didProof';
    yield serializers.serialize(
      object.didProof,
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
    CreateAccountInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateAccountInputBuilder result,
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
        case r'didProof':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.didProof = valueDes;
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
  CreateAccountInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAccountInputBuilder();
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

