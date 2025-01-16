//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_issuance_input_data_inner_meta_data.g.dart';

/// Object of metadata to be included in the additionalProperties related to vc
///
/// Properties:
/// * [expirationDate] - Date and time when the credential will expire
@BuiltValue()
abstract class StartIssuanceInputDataInnerMetaData implements Built<StartIssuanceInputDataInnerMetaData, StartIssuanceInputDataInnerMetaDataBuilder> {
  /// Date and time when the credential will expire
  @BuiltValueField(wireName: r'expirationDate')
  DateTime get expirationDate;

  StartIssuanceInputDataInnerMetaData._();

  factory StartIssuanceInputDataInnerMetaData([void updates(StartIssuanceInputDataInnerMetaDataBuilder b)]) = _$StartIssuanceInputDataInnerMetaData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartIssuanceInputDataInnerMetaDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartIssuanceInputDataInnerMetaData> get serializer => _$StartIssuanceInputDataInnerMetaDataSerializer();
}

class _$StartIssuanceInputDataInnerMetaDataSerializer implements PrimitiveSerializer<StartIssuanceInputDataInnerMetaData> {
  @override
  final Iterable<Type> types = const [StartIssuanceInputDataInnerMetaData, _$StartIssuanceInputDataInnerMetaData];

  @override
  final String wireName = r'StartIssuanceInputDataInnerMetaData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartIssuanceInputDataInnerMetaData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'expirationDate';
    yield serializers.serialize(
      object.expirationDate,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StartIssuanceInputDataInnerMetaData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StartIssuanceInputDataInnerMetaDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expirationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expirationDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartIssuanceInputDataInnerMetaData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartIssuanceInputDataInnerMetaDataBuilder();
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

