//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_start_file_scan_ok.g.dart';

/// CorsStartFileScanOK
///
/// Properties:
/// * [corsStartFileScanOk] 
@BuiltValue()
abstract class CorsStartFileScanOK implements Built<CorsStartFileScanOK, CorsStartFileScanOKBuilder> {
  @BuiltValueField(wireName: r'corsStartFileScanOk')
  String? get corsStartFileScanOk;

  CorsStartFileScanOK._();

  factory CorsStartFileScanOK([void updates(CorsStartFileScanOKBuilder b)]) = _$CorsStartFileScanOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsStartFileScanOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsStartFileScanOK> get serializer => _$CorsStartFileScanOKSerializer();
}

class _$CorsStartFileScanOKSerializer implements PrimitiveSerializer<CorsStartFileScanOK> {
  @override
  final Iterable<Type> types = const [CorsStartFileScanOK, _$CorsStartFileScanOK];

  @override
  final String wireName = r'CorsStartFileScanOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsStartFileScanOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsStartFileScanOk != null) {
      yield r'corsStartFileScanOk';
      yield serializers.serialize(
        object.corsStartFileScanOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsStartFileScanOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsStartFileScanOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsStartFileScanOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsStartFileScanOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsStartFileScanOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsStartFileScanOKBuilder();
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

