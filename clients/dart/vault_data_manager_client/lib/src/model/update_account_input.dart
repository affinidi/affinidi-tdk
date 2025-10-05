//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_account_input.g.dart';

/// UpdateAccountInput
///
/// Properties:
/// * [name] - Name of the account
/// * [description] - Description of the account
/// * [alias] - Alias of the account
/// * [didProof] - JWT that proves ownership of profile DID by requester
/// * [metadata] - Description of metadata
/// * [accountDid] - DID that is associated with the account number
@BuiltValue()
abstract class UpdateAccountInput
    implements Built<UpdateAccountInput, UpdateAccountInputBuilder> {
  /// Name of the account
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Description of the account
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Alias of the account
  @BuiltValueField(wireName: r'alias')
  String? get alias;

  /// JWT that proves ownership of profile DID by requester
  @BuiltValueField(wireName: r'didProof')
  String get didProof;

  /// Description of metadata
  @BuiltValueField(wireName: r'metadata')
  JsonObject? get metadata;

  /// DID that is associated with the account number
  @BuiltValueField(wireName: r'accountDid')
  String get accountDid;

  UpdateAccountInput._();

  factory UpdateAccountInput([void updates(UpdateAccountInputBuilder b)]) =
      _$UpdateAccountInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAccountInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAccountInput> get serializer =>
      _$UpdateAccountInputSerializer();
}

class _$UpdateAccountInputSerializer
    implements PrimitiveSerializer<UpdateAccountInput> {
  @override
  final Iterable<Type> types = const [UpdateAccountInput, _$UpdateAccountInput];

  @override
  final String wireName = r'UpdateAccountInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAccountInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.alias != null) {
      yield r'alias';
      yield serializers.serialize(
        object.alias,
        specifiedType: const FullType(String),
      );
    }
    yield r'didProof';
    yield serializers.serialize(
      object.didProof,
      specifiedType: const FullType(String),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(JsonObject),
      );
    }
    yield r'accountDid';
    yield serializers.serialize(
      object.accountDid,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAccountInput object, {
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
    required UpdateAccountInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'alias':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alias = valueDes;
          break;
        case r'didProof':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.didProof = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.metadata = valueDes;
          break;
        case r'accountDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountDid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateAccountInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccountInputBuilder();
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
