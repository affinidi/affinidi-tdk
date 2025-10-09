//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_list_scanned_files_ok.g.dart';

/// CorsListScannedFilesOK
///
/// Properties:
/// * [corsListScannedFilesOk]
@BuiltValue()
abstract class CorsListScannedFilesOK
    implements Built<CorsListScannedFilesOK, CorsListScannedFilesOKBuilder> {
  @BuiltValueField(wireName: r'corsListScannedFilesOk')
  String? get corsListScannedFilesOk;

  CorsListScannedFilesOK._();

  factory CorsListScannedFilesOK(
          [void updates(CorsListScannedFilesOKBuilder b)]) =
      _$CorsListScannedFilesOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsListScannedFilesOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsListScannedFilesOK> get serializer =>
      _$CorsListScannedFilesOKSerializer();
}

class _$CorsListScannedFilesOKSerializer
    implements PrimitiveSerializer<CorsListScannedFilesOK> {
  @override
  final Iterable<Type> types = const [
    CorsListScannedFilesOK,
    _$CorsListScannedFilesOK
  ];

  @override
  final String wireName = r'CorsListScannedFilesOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsListScannedFilesOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsListScannedFilesOk != null) {
      yield r'corsListScannedFilesOk';
      yield serializers.serialize(
        object.corsListScannedFilesOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsListScannedFilesOK object, {
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
    required CorsListScannedFilesOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsListScannedFilesOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsListScannedFilesOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsListScannedFilesOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsListScannedFilesOKBuilder();
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
