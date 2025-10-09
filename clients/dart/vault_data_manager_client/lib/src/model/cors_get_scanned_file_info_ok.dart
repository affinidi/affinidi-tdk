//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_get_scanned_file_info_ok.g.dart';

/// CorsGetScannedFileInfoOK
///
/// Properties:
/// * [corsGetScannedFileInfoOk]
@BuiltValue()
abstract class CorsGetScannedFileInfoOK
    implements
        Built<CorsGetScannedFileInfoOK, CorsGetScannedFileInfoOKBuilder> {
  @BuiltValueField(wireName: r'corsGetScannedFileInfoOk')
  String? get corsGetScannedFileInfoOk;

  CorsGetScannedFileInfoOK._();

  factory CorsGetScannedFileInfoOK(
          [void updates(CorsGetScannedFileInfoOKBuilder b)]) =
      _$CorsGetScannedFileInfoOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGetScannedFileInfoOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGetScannedFileInfoOK> get serializer =>
      _$CorsGetScannedFileInfoOKSerializer();
}

class _$CorsGetScannedFileInfoOKSerializer
    implements PrimitiveSerializer<CorsGetScannedFileInfoOK> {
  @override
  final Iterable<Type> types = const [
    CorsGetScannedFileInfoOK,
    _$CorsGetScannedFileInfoOK
  ];

  @override
  final String wireName = r'CorsGetScannedFileInfoOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGetScannedFileInfoOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGetScannedFileInfoOk != null) {
      yield r'corsGetScannedFileInfoOk';
      yield serializers.serialize(
        object.corsGetScannedFileInfoOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGetScannedFileInfoOK object, {
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
    required CorsGetScannedFileInfoOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGetScannedFileInfoOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGetScannedFileInfoOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGetScannedFileInfoOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGetScannedFileInfoOKBuilder();
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
