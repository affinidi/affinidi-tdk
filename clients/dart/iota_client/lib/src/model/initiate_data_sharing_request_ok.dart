//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iota_client/src/model/initiate_data_sharing_request_ok_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'initiate_data_sharing_request_ok.g.dart';

/// InitiateDataSharingRequestOK
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class InitiateDataSharingRequestOK implements Built<InitiateDataSharingRequestOK, InitiateDataSharingRequestOKBuilder> {
  @BuiltValueField(wireName: r'data')
  InitiateDataSharingRequestOKData? get data;

  InitiateDataSharingRequestOK._();

  factory InitiateDataSharingRequestOK([void updates(InitiateDataSharingRequestOKBuilder b)]) = _$InitiateDataSharingRequestOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InitiateDataSharingRequestOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InitiateDataSharingRequestOK> get serializer => _$InitiateDataSharingRequestOKSerializer();
}

class _$InitiateDataSharingRequestOKSerializer implements PrimitiveSerializer<InitiateDataSharingRequestOK> {
  @override
  final Iterable<Type> types = const [InitiateDataSharingRequestOK, _$InitiateDataSharingRequestOK];

  @override
  final String wireName = r'InitiateDataSharingRequestOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InitiateDataSharingRequestOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(InitiateDataSharingRequestOKData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InitiateDataSharingRequestOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InitiateDataSharingRequestOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InitiateDataSharingRequestOKData),
          ) as InitiateDataSharingRequestOKData;
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
  InitiateDataSharingRequestOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiateDataSharingRequestOKBuilder();
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

