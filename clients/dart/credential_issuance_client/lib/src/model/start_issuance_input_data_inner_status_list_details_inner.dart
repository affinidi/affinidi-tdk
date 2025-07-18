//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_issuance_input_data_inner_status_list_details_inner.g.dart';

/// StartIssuanceInputDataInnerStatusListDetailsInner
///
/// Properties:
/// * [purpose] 
/// * [standard] 
@BuiltValue()
abstract class StartIssuanceInputDataInnerStatusListDetailsInner implements Built<StartIssuanceInputDataInnerStatusListDetailsInner, StartIssuanceInputDataInnerStatusListDetailsInnerBuilder> {
  @BuiltValueField(wireName: r'purpose')
  StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum get purpose;
  // enum purposeEnum {  REVOCABLE,  };

  @BuiltValueField(wireName: r'standard')
  StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum get standard;
  // enum standardEnum {  RevocationList2020,  };

  StartIssuanceInputDataInnerStatusListDetailsInner._();

  factory StartIssuanceInputDataInnerStatusListDetailsInner([void updates(StartIssuanceInputDataInnerStatusListDetailsInnerBuilder b)]) = _$StartIssuanceInputDataInnerStatusListDetailsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartIssuanceInputDataInnerStatusListDetailsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartIssuanceInputDataInnerStatusListDetailsInner> get serializer => _$StartIssuanceInputDataInnerStatusListDetailsInnerSerializer();
}

class _$StartIssuanceInputDataInnerStatusListDetailsInnerSerializer implements PrimitiveSerializer<StartIssuanceInputDataInnerStatusListDetailsInner> {
  @override
  final Iterable<Type> types = const [StartIssuanceInputDataInnerStatusListDetailsInner, _$StartIssuanceInputDataInnerStatusListDetailsInner];

  @override
  final String wireName = r'StartIssuanceInputDataInnerStatusListDetailsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartIssuanceInputDataInnerStatusListDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'purpose';
    yield serializers.serialize(
      object.purpose,
      specifiedType: const FullType(StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum),
    );
    yield r'standard';
    yield serializers.serialize(
      object.standard,
      specifiedType: const FullType(StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StartIssuanceInputDataInnerStatusListDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StartIssuanceInputDataInnerStatusListDetailsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'purpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum),
          ) as StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum;
          result.purpose = valueDes;
          break;
        case r'standard':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum),
          ) as StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum;
          result.standard = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartIssuanceInputDataInnerStatusListDetailsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartIssuanceInputDataInnerStatusListDetailsInnerBuilder();
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

class StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'REVOCABLE')
  static const StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum REVOCABLE = _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum_REVOCABLE;

  static Serializer<StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum> get serializer => _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumSerializer;

  const StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum._(String name): super(name);

  static BuiltSet<StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum> get values => _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumValues;
  static StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum valueOf(String name) => _$startIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumValueOf(name);
}

class StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'RevocationList2020')
  static const StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum revocationList2020 = _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnum_revocationList2020;

  static Serializer<StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum> get serializer => _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnumSerializer;

  const StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum._(String name): super(name);

  static BuiltSet<StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum> get values => _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnumValues;
  static StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum valueOf(String name) => _$startIssuanceInputDataInnerStatusListDetailsInnerStandardEnumValueOf(name);
}

