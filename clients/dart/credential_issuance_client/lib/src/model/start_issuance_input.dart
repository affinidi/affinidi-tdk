//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance_input_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_issuance_input.g.dart';

/// StartIssuanceInput
///
/// Properties:
/// * [claimMode] - In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).
/// * [holderDid] - Holder DID
/// * [issuanceId] - Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
/// * [data]
@BuiltValue()
abstract class StartIssuanceInput
    implements Built<StartIssuanceInput, StartIssuanceInputBuilder> {
  /// In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).
  @BuiltValueField(wireName: r'claimMode')
  StartIssuanceInputClaimModeEnum? get claimMode;
  // enum claimModeEnum {  NORMAL,  TX_CODE,  FIXED_HOLDER,  };

  /// Holder DID
  @BuiltValueField(wireName: r'holderDid')
  String? get holderDid;

  /// Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
  @BuiltValueField(wireName: r'issuanceId')
  String? get issuanceId;

  @BuiltValueField(wireName: r'data')
  BuiltList<StartIssuanceInputDataInner> get data;

  StartIssuanceInput._();

  factory StartIssuanceInput([void updates(StartIssuanceInputBuilder b)]) =
      _$StartIssuanceInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartIssuanceInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartIssuanceInput> get serializer =>
      _$StartIssuanceInputSerializer();
}

class _$StartIssuanceInputSerializer
    implements PrimitiveSerializer<StartIssuanceInput> {
  @override
  final Iterable<Type> types = const [StartIssuanceInput, _$StartIssuanceInput];

  @override
  final String wireName = r'StartIssuanceInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartIssuanceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.claimMode != null) {
      yield r'claimMode';
      yield serializers.serialize(
        object.claimMode,
        specifiedType: const FullType(StartIssuanceInputClaimModeEnum),
      );
    }
    if (object.holderDid != null) {
      yield r'holderDid';
      yield serializers.serialize(
        object.holderDid,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuanceId != null) {
      yield r'issuanceId';
      yield serializers.serialize(
        object.issuanceId,
        specifiedType: const FullType(String),
      );
    }
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType:
          const FullType(BuiltList, [FullType(StartIssuanceInputDataInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StartIssuanceInput object, {
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
    required StartIssuanceInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'claimMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StartIssuanceInputClaimModeEnum),
          ) as StartIssuanceInputClaimModeEnum;
          result.claimMode = valueDes;
          break;
        case r'holderDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.holderDid = valueDes;
          break;
        case r'issuanceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuanceId = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(StartIssuanceInputDataInner)]),
          ) as BuiltList<StartIssuanceInputDataInner>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartIssuanceInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartIssuanceInputBuilder();
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

class StartIssuanceInputClaimModeEnum extends EnumClass {
  /// In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).
  @BuiltValueEnumConst(wireName: r'NORMAL')
  static const StartIssuanceInputClaimModeEnum NORMAL =
      _$startIssuanceInputClaimModeEnum_NORMAL;

  /// In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).
  @BuiltValueEnumConst(wireName: r'TX_CODE')
  static const StartIssuanceInputClaimModeEnum TX_CODE =
      _$startIssuanceInputClaimModeEnum_TX_CODE;

  /// In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).
  @BuiltValueEnumConst(wireName: r'FIXED_HOLDER')
  static const StartIssuanceInputClaimModeEnum FIXED_HOLDER =
      _$startIssuanceInputClaimModeEnum_FIXED_HOLDER;

  static Serializer<StartIssuanceInputClaimModeEnum> get serializer =>
      _$startIssuanceInputClaimModeEnumSerializer;

  const StartIssuanceInputClaimModeEnum._(String name) : super(name);

  static BuiltSet<StartIssuanceInputClaimModeEnum> get values =>
      _$startIssuanceInputClaimModeEnumValues;
  static StartIssuanceInputClaimModeEnum valueOf(String name) =>
      _$startIssuanceInputClaimModeEnumValueOf(name);
}
