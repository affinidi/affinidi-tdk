//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/flow_data_status_lists_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_data.g.dart';

/// FlowData
///
/// Properties:
/// * [createdAt] - [GEN] ISO 8601 string of the creation date/time the entity
/// * [modifiedAt] - [GEN] ISO 8601 string of the modification date/time the entity
/// * [id]
/// * [projectId]
/// * [flowId]
/// * [credentialTypeId]
/// * [jsonLdContextUrl]
/// * [jsonSchemaUrl]
/// * [configurationId] - Id of configuration, used to issue VC.
/// * [issuedAt] - when credential was issued to the holder (holder invoked generateCredentials endpoint)
/// * [walletId] - Id of wallet, used to issue VC.
/// * [projectIdConfigurationId] - Id of configuration with which VC was issued. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{configurationId}\"
/// * [projectIdConfigurationIdWalletId] - Id of wallet which issued VC. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{walletId}\"
/// * [projectIdConfigurationIdCredentialType] - VC.type value. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{credentialType}\"
/// * [statusListsDetails]
@BuiltValue()
abstract class FlowData implements Built<FlowData, FlowDataBuilder> {
  /// [GEN] ISO 8601 string of the creation date/time the entity
  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  /// [GEN] ISO 8601 string of the modification date/time the entity
  @BuiltValueField(wireName: r'modifiedAt')
  String get modifiedAt;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'projectId')
  String? get projectId;

  @BuiltValueField(wireName: r'flowId')
  String get flowId;

  @BuiltValueField(wireName: r'credentialTypeId')
  String get credentialTypeId;

  @BuiltValueField(wireName: r'jsonLdContextUrl')
  String get jsonLdContextUrl;

  @BuiltValueField(wireName: r'jsonSchemaUrl')
  String get jsonSchemaUrl;

  /// Id of configuration, used to issue VC.
  @BuiltValueField(wireName: r'configurationId')
  String? get configurationId;

  /// when credential was issued to the holder (holder invoked generateCredentials endpoint)
  @BuiltValueField(wireName: r'issuedAt')
  String? get issuedAt;

  /// Id of wallet, used to issue VC.
  @BuiltValueField(wireName: r'walletId')
  String? get walletId;

  /// Id of configuration with which VC was issued. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{configurationId}\"
  @BuiltValueField(wireName: r'projectIdConfigurationId')
  String? get projectIdConfigurationId;

  /// Id of wallet which issued VC. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{walletId}\"
  @BuiltValueField(wireName: r'projectIdConfigurationIdWalletId')
  String? get projectIdConfigurationIdWalletId;

  /// VC.type value. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{credentialType}\"
  @BuiltValueField(wireName: r'projectIdConfigurationIdCredentialType')
  String? get projectIdConfigurationIdCredentialType;

  @BuiltValueField(wireName: r'statusListsDetails')
  BuiltList<FlowDataStatusListsDetailsInner>? get statusListsDetails;

  FlowData._();

  factory FlowData([void updates(FlowDataBuilder b)]) = _$FlowData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlowDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlowData> get serializer => _$FlowDataSerializer();
}

class _$FlowDataSerializer implements PrimitiveSerializer<FlowData> {
  @override
  final Iterable<Type> types = const [FlowData, _$FlowData];

  @override
  final String wireName = r'FlowData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlowData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'modifiedAt';
    yield serializers.serialize(
      object.modifiedAt,
      specifiedType: const FullType(String),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.projectId != null) {
      yield r'projectId';
      yield serializers.serialize(
        object.projectId,
        specifiedType: const FullType(String),
      );
    }
    yield r'flowId';
    yield serializers.serialize(
      object.flowId,
      specifiedType: const FullType(String),
    );
    yield r'credentialTypeId';
    yield serializers.serialize(
      object.credentialTypeId,
      specifiedType: const FullType(String),
    );
    yield r'jsonLdContextUrl';
    yield serializers.serialize(
      object.jsonLdContextUrl,
      specifiedType: const FullType(String),
    );
    yield r'jsonSchemaUrl';
    yield serializers.serialize(
      object.jsonSchemaUrl,
      specifiedType: const FullType(String),
    );
    if (object.configurationId != null) {
      yield r'configurationId';
      yield serializers.serialize(
        object.configurationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuedAt != null) {
      yield r'issuedAt';
      yield serializers.serialize(
        object.issuedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.walletId != null) {
      yield r'walletId';
      yield serializers.serialize(
        object.walletId,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectIdConfigurationId != null) {
      yield r'projectIdConfigurationId';
      yield serializers.serialize(
        object.projectIdConfigurationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectIdConfigurationIdWalletId != null) {
      yield r'projectIdConfigurationIdWalletId';
      yield serializers.serialize(
        object.projectIdConfigurationIdWalletId,
        specifiedType: const FullType(String),
      );
    }
    if (object.projectIdConfigurationIdCredentialType != null) {
      yield r'projectIdConfigurationIdCredentialType';
      yield serializers.serialize(
        object.projectIdConfigurationIdCredentialType,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusListsDetails != null) {
      yield r'statusListsDetails';
      yield serializers.serialize(
        object.statusListsDetails,
        specifiedType: const FullType(
            BuiltList, [FullType(FlowDataStatusListsDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlowData object, {
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
    required FlowDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'modifiedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modifiedAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        case r'flowId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.flowId = valueDes;
          break;
        case r'credentialTypeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialTypeId = valueDes;
          break;
        case r'jsonLdContextUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jsonLdContextUrl = valueDes;
          break;
        case r'jsonSchemaUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jsonSchemaUrl = valueDes;
          break;
        case r'configurationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.configurationId = valueDes;
          break;
        case r'issuedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuedAt = valueDes;
          break;
        case r'walletId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.walletId = valueDes;
          break;
        case r'projectIdConfigurationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectIdConfigurationId = valueDes;
          break;
        case r'projectIdConfigurationIdWalletId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectIdConfigurationIdWalletId = valueDes;
          break;
        case r'projectIdConfigurationIdCredentialType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectIdConfigurationIdCredentialType = valueDes;
          break;
        case r'statusListsDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(FlowDataStatusListsDetailsInner)]),
          ) as BuiltList<FlowDataStatusListsDetailsInner>;
          result.statusListsDetails.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlowData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowDataBuilder();
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
