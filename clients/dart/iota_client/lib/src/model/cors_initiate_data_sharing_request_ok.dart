//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_initiate_data_sharing_request_ok.g.dart';

/// CorsInitiateDataSharingRequestOK
///
/// Properties:
/// * [corsInitiateDataSharingRequestOk]
@BuiltValue()
abstract class CorsInitiateDataSharingRequestOK
    implements
        Built<CorsInitiateDataSharingRequestOK,
            CorsInitiateDataSharingRequestOKBuilder> {
  @BuiltValueField(wireName: r'corsInitiateDataSharingRequestOk')
  String? get corsInitiateDataSharingRequestOk;

  CorsInitiateDataSharingRequestOK._();

  factory CorsInitiateDataSharingRequestOK(
          [void updates(CorsInitiateDataSharingRequestOKBuilder b)]) =
      _$CorsInitiateDataSharingRequestOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsInitiateDataSharingRequestOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsInitiateDataSharingRequestOK> get serializer =>
      _$CorsInitiateDataSharingRequestOKSerializer();
}

class _$CorsInitiateDataSharingRequestOKSerializer
    implements PrimitiveSerializer<CorsInitiateDataSharingRequestOK> {
  @override
  final Iterable<Type> types = const [
    CorsInitiateDataSharingRequestOK,
    _$CorsInitiateDataSharingRequestOK
  ];

  @override
  final String wireName = r'CorsInitiateDataSharingRequestOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsInitiateDataSharingRequestOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsInitiateDataSharingRequestOk != null) {
      yield r'corsInitiateDataSharingRequestOk';
      yield serializers.serialize(
        object.corsInitiateDataSharingRequestOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsInitiateDataSharingRequestOK object, {
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
    required CorsInitiateDataSharingRequestOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsInitiateDataSharingRequestOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsInitiateDataSharingRequestOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsInitiateDataSharingRequestOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsInitiateDataSharingRequestOKBuilder();
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
