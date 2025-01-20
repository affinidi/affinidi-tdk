//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_data_status_lists_details_inner.g.dart';

/// FlowDataStatusListsDetailsInner
///
/// Properties:
/// * [statusListPurpose] - Purpose of status list to which credential is added
/// * [statusListId] - id of status list
/// * [statusListIndex] - as usual it is a number, but all standards use a string
/// * [standard] 
/// * [isActive] - indicates status is true or not. Default false.
/// * [statusActivationReason] - text reasoning why the status is true (if true). Optional.
/// * [statusActivatedAt] - ISO 8601 string of the modification date/time the status. Optional.
@BuiltValue()
abstract class FlowDataStatusListsDetailsInner implements Built<FlowDataStatusListsDetailsInner, FlowDataStatusListsDetailsInnerBuilder> {
  /// Purpose of status list to which credential is added
  @BuiltValueField(wireName: r'statusListPurpose')
  FlowDataStatusListsDetailsInnerStatusListPurposeEnum get statusListPurpose;
  // enum statusListPurposeEnum {  REVOKED,  };

  /// id of status list
  @BuiltValueField(wireName: r'statusListId')
  String get statusListId;

  /// as usual it is a number, but all standards use a string
  @BuiltValueField(wireName: r'statusListIndex')
  String get statusListIndex;

  @BuiltValueField(wireName: r'standard')
  FlowDataStatusListsDetailsInnerStandardEnum get standard;
  // enum standardEnum {  RevocationList2020,  BitstringStatusListV1,  };

  /// indicates status is true or not. Default false.
  @BuiltValueField(wireName: r'isActive')
  bool get isActive;

  /// text reasoning why the status is true (if true). Optional.
  @BuiltValueField(wireName: r'statusActivationReason')
  String? get statusActivationReason;

  /// ISO 8601 string of the modification date/time the status. Optional.
  @BuiltValueField(wireName: r'statusActivatedAt')
  String? get statusActivatedAt;

  FlowDataStatusListsDetailsInner._();

  factory FlowDataStatusListsDetailsInner([void updates(FlowDataStatusListsDetailsInnerBuilder b)]) = _$FlowDataStatusListsDetailsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlowDataStatusListsDetailsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlowDataStatusListsDetailsInner> get serializer => _$FlowDataStatusListsDetailsInnerSerializer();
}

class _$FlowDataStatusListsDetailsInnerSerializer implements PrimitiveSerializer<FlowDataStatusListsDetailsInner> {
  @override
  final Iterable<Type> types = const [FlowDataStatusListsDetailsInner, _$FlowDataStatusListsDetailsInner];

  @override
  final String wireName = r'FlowDataStatusListsDetailsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlowDataStatusListsDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'statusListPurpose';
    yield serializers.serialize(
      object.statusListPurpose,
      specifiedType: const FullType(FlowDataStatusListsDetailsInnerStatusListPurposeEnum),
    );
    yield r'statusListId';
    yield serializers.serialize(
      object.statusListId,
      specifiedType: const FullType(String),
    );
    yield r'statusListIndex';
    yield serializers.serialize(
      object.statusListIndex,
      specifiedType: const FullType(String),
    );
    yield r'standard';
    yield serializers.serialize(
      object.standard,
      specifiedType: const FullType(FlowDataStatusListsDetailsInnerStandardEnum),
    );
    yield r'isActive';
    yield serializers.serialize(
      object.isActive,
      specifiedType: const FullType(bool),
    );
    if (object.statusActivationReason != null) {
      yield r'statusActivationReason';
      yield serializers.serialize(
        object.statusActivationReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusActivatedAt != null) {
      yield r'statusActivatedAt';
      yield serializers.serialize(
        object.statusActivatedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlowDataStatusListsDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlowDataStatusListsDetailsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'statusListPurpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlowDataStatusListsDetailsInnerStatusListPurposeEnum),
          ) as FlowDataStatusListsDetailsInnerStatusListPurposeEnum;
          result.statusListPurpose = valueDes;
          break;
        case r'statusListId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusListId = valueDes;
          break;
        case r'statusListIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusListIndex = valueDes;
          break;
        case r'standard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlowDataStatusListsDetailsInnerStandardEnum),
          ) as FlowDataStatusListsDetailsInnerStandardEnum;
          result.standard = valueDes;
          break;
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'statusActivationReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusActivationReason = valueDes;
          break;
        case r'statusActivatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusActivatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlowDataStatusListsDetailsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowDataStatusListsDetailsInnerBuilder();
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

class FlowDataStatusListsDetailsInnerStatusListPurposeEnum extends EnumClass {

  /// Purpose of status list to which credential is added
  @BuiltValueEnumConst(wireName: r'REVOKED')
  static const FlowDataStatusListsDetailsInnerStatusListPurposeEnum REVOKED = _$flowDataStatusListsDetailsInnerStatusListPurposeEnum_REVOKED;

  static Serializer<FlowDataStatusListsDetailsInnerStatusListPurposeEnum> get serializer => _$flowDataStatusListsDetailsInnerStatusListPurposeEnumSerializer;

  const FlowDataStatusListsDetailsInnerStatusListPurposeEnum._(String name): super(name);

  static BuiltSet<FlowDataStatusListsDetailsInnerStatusListPurposeEnum> get values => _$flowDataStatusListsDetailsInnerStatusListPurposeEnumValues;
  static FlowDataStatusListsDetailsInnerStatusListPurposeEnum valueOf(String name) => _$flowDataStatusListsDetailsInnerStatusListPurposeEnumValueOf(name);
}

class FlowDataStatusListsDetailsInnerStandardEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'RevocationList2020')
  static const FlowDataStatusListsDetailsInnerStandardEnum revocationList2020 = _$flowDataStatusListsDetailsInnerStandardEnum_revocationList2020;
  @BuiltValueEnumConst(wireName: r'BitstringStatusListV1')
  static const FlowDataStatusListsDetailsInnerStandardEnum bitstringStatusListV1 = _$flowDataStatusListsDetailsInnerStandardEnum_bitstringStatusListV1;

  static Serializer<FlowDataStatusListsDetailsInnerStandardEnum> get serializer => _$flowDataStatusListsDetailsInnerStandardEnumSerializer;

  const FlowDataStatusListsDetailsInnerStandardEnum._(String name): super(name);

  static BuiltSet<FlowDataStatusListsDetailsInnerStandardEnum> get values => _$flowDataStatusListsDetailsInnerStandardEnumValues;
  static FlowDataStatusListsDetailsInnerStandardEnum valueOf(String name) => _$flowDataStatusListsDetailsInnerStandardEnumValueOf(name);
}

