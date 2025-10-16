//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_credential_status_input.g.dart';

/// ChangeCredentialStatusInput
///
/// Properties:
/// * [changeReason] - reason for revocation
/// * [issuanceRecordId]
@BuiltValue()
abstract class ChangeCredentialStatusInput
    implements
        Built<ChangeCredentialStatusInput, ChangeCredentialStatusInputBuilder> {
  /// reason for revocation
  @BuiltValueField(wireName: r'changeReason')
  ChangeCredentialStatusInputChangeReasonEnum? get changeReason;
  // enum changeReasonEnum {  INVALID_CREDENTIAL,  COMPROMISED_ISSUER,  };

  @BuiltValueField(wireName: r'issuanceRecordId')
  String? get issuanceRecordId;

  ChangeCredentialStatusInput._();

  factory ChangeCredentialStatusInput(
          [void updates(ChangeCredentialStatusInputBuilder b)]) =
      _$ChangeCredentialStatusInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangeCredentialStatusInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangeCredentialStatusInput> get serializer =>
      _$ChangeCredentialStatusInputSerializer();
}

class _$ChangeCredentialStatusInputSerializer
    implements PrimitiveSerializer<ChangeCredentialStatusInput> {
  @override
  final Iterable<Type> types = const [
    ChangeCredentialStatusInput,
    _$ChangeCredentialStatusInput
  ];

  @override
  final String wireName = r'ChangeCredentialStatusInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangeCredentialStatusInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.changeReason != null) {
      yield r'changeReason';
      yield serializers.serialize(
        object.changeReason,
        specifiedType:
            const FullType(ChangeCredentialStatusInputChangeReasonEnum),
      );
    }
    if (object.issuanceRecordId != null) {
      yield r'issuanceRecordId';
      yield serializers.serialize(
        object.issuanceRecordId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChangeCredentialStatusInput object, {
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
    required ChangeCredentialStatusInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'changeReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ChangeCredentialStatusInputChangeReasonEnum),
          ) as ChangeCredentialStatusInputChangeReasonEnum;
          result.changeReason = valueDes;
          break;
        case r'issuanceRecordId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuanceRecordId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChangeCredentialStatusInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeCredentialStatusInputBuilder();
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

class ChangeCredentialStatusInputChangeReasonEnum extends EnumClass {
  /// reason for revocation
  @BuiltValueEnumConst(wireName: r'INVALID_CREDENTIAL')
  static const ChangeCredentialStatusInputChangeReasonEnum INVALID_CREDENTIAL =
      _$changeCredentialStatusInputChangeReasonEnum_INVALID_CREDENTIAL;

  /// reason for revocation
  @BuiltValueEnumConst(wireName: r'COMPROMISED_ISSUER')
  static const ChangeCredentialStatusInputChangeReasonEnum COMPROMISED_ISSUER =
      _$changeCredentialStatusInputChangeReasonEnum_COMPROMISED_ISSUER;

  static Serializer<ChangeCredentialStatusInputChangeReasonEnum>
      get serializer => _$changeCredentialStatusInputChangeReasonEnumSerializer;

  const ChangeCredentialStatusInputChangeReasonEnum._(String name)
      : super(name);

  static BuiltSet<ChangeCredentialStatusInputChangeReasonEnum> get values =>
      _$changeCredentialStatusInputChangeReasonEnumValues;
  static ChangeCredentialStatusInputChangeReasonEnum valueOf(String name) =>
      _$changeCredentialStatusInputChangeReasonEnumValueOf(name);
}
