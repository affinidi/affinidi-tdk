//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consent_dto.g.dart';

/// ConsentDto
///
/// Properties:
/// * [projectId] - The ID of the project.
/// * [id] - Unique identifier for the record.
/// * [userId] - Unique identifier for the user.
/// * [vcType] - Type of the VC shared by the user. It creates a consent record for each  VC type shared except for the base type VerifiableCredential.
/// * [status] - Status of the consent.
/// * [modifiedAt]
/// * [modifiedBy]
/// * [createdAt]
/// * [createdBy]
@BuiltValue()
abstract class ConsentDto implements Built<ConsentDto, ConsentDtoBuilder> {
  /// The ID of the project.
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  /// Unique identifier for the record.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Unique identifier for the user.
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Type of the VC shared by the user. It creates a consent record for each  VC type shared except for the base type VerifiableCredential.
  @BuiltValueField(wireName: r'vcType')
  String get vcType;

  /// Status of the consent.
  @BuiltValueField(wireName: r'status')
  ConsentDtoStatusEnum get status;
  // enum statusEnum {  GIVEN,  };

  @BuiltValueField(wireName: r'modifiedAt')
  String get modifiedAt;

  @BuiltValueField(wireName: r'modifiedBy')
  String get modifiedBy;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'createdBy')
  String get createdBy;

  ConsentDto._();

  factory ConsentDto([void updates(ConsentDtoBuilder b)]) = _$ConsentDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConsentDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConsentDto> get serializer => _$ConsentDtoSerializer();
}

class _$ConsentDtoSerializer implements PrimitiveSerializer<ConsentDto> {
  @override
  final Iterable<Type> types = const [ConsentDto, _$ConsentDto];

  @override
  final String wireName = r'ConsentDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConsentDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'projectId';
    yield serializers.serialize(
      object.projectId,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'vcType';
    yield serializers.serialize(
      object.vcType,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(ConsentDtoStatusEnum),
    );
    yield r'modifiedAt';
    yield serializers.serialize(
      object.modifiedAt,
      specifiedType: const FullType(String),
    );
    yield r'modifiedBy';
    yield serializers.serialize(
      object.modifiedBy,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'createdBy';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConsentDto object, {
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
    required ConsentDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'vcType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vcType = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConsentDtoStatusEnum),
          ) as ConsentDtoStatusEnum;
          result.status = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedAt = valueDes;
          break;
        case r'modifiedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedBy = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'createdBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConsentDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsentDtoBuilder();
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

class ConsentDtoStatusEnum extends EnumClass {
  /// Status of the consent.
  @BuiltValueEnumConst(wireName: r'GIVEN')
  static const ConsentDtoStatusEnum GIVEN = _$consentDtoStatusEnum_GIVEN;

  static Serializer<ConsentDtoStatusEnum> get serializer =>
      _$consentDtoStatusEnumSerializer;

  const ConsentDtoStatusEnum._(String name) : super(name);

  static BuiltSet<ConsentDtoStatusEnum> get values =>
      _$consentDtoStatusEnumValues;
  static ConsentDtoStatusEnum valueOf(String name) =>
      _$consentDtoStatusEnumValueOf(name);
}
