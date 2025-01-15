//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance_input_data_inner_status_list_details_inner.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/start_issuance_input_data_inner_meta_data.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_issuance_input_data_inner.g.dart';

/// Data to be included in issued credential
///
/// Properties:
/// * [credentialTypeId] - It is a String that identifies a Credential that is being requested to be issued.
/// * [credentialData] - Object of data to be included in the issued credential ,should  match the credential type
/// * [statusListDetails] - Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists.
/// * [metaData] 
@BuiltValue()
abstract class StartIssuanceInputDataInner implements Built<StartIssuanceInputDataInner, StartIssuanceInputDataInnerBuilder> {
  /// It is a String that identifies a Credential that is being requested to be issued.
  @BuiltValueField(wireName: r'credentialTypeId')
  String get credentialTypeId;

  /// Object of data to be included in the issued credential ,should  match the credential type
  @BuiltValueField(wireName: r'credentialData')
  BuiltMap<String, JsonObject?> get credentialData;

  /// Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists.
  @BuiltValueField(wireName: r'statusListDetails')
  BuiltList<StartIssuanceInputDataInnerStatusListDetailsInner>? get statusListDetails;

  @BuiltValueField(wireName: r'metaData')
  StartIssuanceInputDataInnerMetaData? get metaData;

  StartIssuanceInputDataInner._();

  factory StartIssuanceInputDataInner([void updates(StartIssuanceInputDataInnerBuilder b)]) = _$StartIssuanceInputDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartIssuanceInputDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartIssuanceInputDataInner> get serializer => _$StartIssuanceInputDataInnerSerializer();
}

class _$StartIssuanceInputDataInnerSerializer implements PrimitiveSerializer<StartIssuanceInputDataInner> {
  @override
  final Iterable<Type> types = const [StartIssuanceInputDataInner, _$StartIssuanceInputDataInner];

  @override
  final String wireName = r'StartIssuanceInputDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartIssuanceInputDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credentialTypeId';
    yield serializers.serialize(
      object.credentialTypeId,
      specifiedType: const FullType(String),
    );
    yield r'credentialData';
    yield serializers.serialize(
      object.credentialData,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
    if (object.statusListDetails != null) {
      yield r'statusListDetails';
      yield serializers.serialize(
        object.statusListDetails,
        specifiedType: const FullType(BuiltList, [FullType(StartIssuanceInputDataInnerStatusListDetailsInner)]),
      );
    }
    if (object.metaData != null) {
      yield r'metaData';
      yield serializers.serialize(
        object.metaData,
        specifiedType: const FullType(StartIssuanceInputDataInnerMetaData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StartIssuanceInputDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StartIssuanceInputDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credentialTypeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialTypeId = valueDes;
          break;
        case r'credentialData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.credentialData.replace(valueDes);
          break;
        case r'statusListDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StartIssuanceInputDataInnerStatusListDetailsInner)]),
          ) as BuiltList<StartIssuanceInputDataInnerStatusListDetailsInner>;
          result.statusListDetails.replace(valueDes);
          break;
        case r'metaData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StartIssuanceInputDataInnerMetaData),
          ) as StartIssuanceInputDataInnerMetaData;
          result.metaData.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartIssuanceInputDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartIssuanceInputDataInnerBuilder();
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

