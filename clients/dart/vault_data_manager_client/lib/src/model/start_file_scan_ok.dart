//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_file_scan_ok.g.dart';

/// StartFileScanOK
///
/// Properties:
/// * [jobId]
/// * [status]
@BuiltValue()
abstract class StartFileScanOK
    implements Built<StartFileScanOK, StartFileScanOKBuilder> {
  @BuiltValueField(wireName: r'jobId')
  String get jobId;

  @BuiltValueField(wireName: r'status')
  StartFileScanOKStatusEnum get status;
  // enum statusEnum {  STARTED,  FAILED,  COMPLETED,  };

  StartFileScanOK._();

  factory StartFileScanOK([void updates(StartFileScanOKBuilder b)]) =
      _$StartFileScanOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartFileScanOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartFileScanOK> get serializer =>
      _$StartFileScanOKSerializer();
}

class _$StartFileScanOKSerializer
    implements PrimitiveSerializer<StartFileScanOK> {
  @override
  final Iterable<Type> types = const [StartFileScanOK, _$StartFileScanOK];

  @override
  final String wireName = r'StartFileScanOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartFileScanOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'jobId';
    yield serializers.serialize(
      object.jobId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(StartFileScanOKStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StartFileScanOK object, {
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
    required StartFileScanOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jobId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jobId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StartFileScanOKStatusEnum),
          ) as StartFileScanOKStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartFileScanOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartFileScanOKBuilder();
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

class StartFileScanOKStatusEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'STARTED')
  static const StartFileScanOKStatusEnum STARTED =
      _$startFileScanOKStatusEnum_STARTED;
  @BuiltValueEnumConst(wireName: r'FAILED')
  static const StartFileScanOKStatusEnum FAILED =
      _$startFileScanOKStatusEnum_FAILED;
  @BuiltValueEnumConst(wireName: r'COMPLETED')
  static const StartFileScanOKStatusEnum COMPLETED =
      _$startFileScanOKStatusEnum_COMPLETED;

  static Serializer<StartFileScanOKStatusEnum> get serializer =>
      _$startFileScanOKStatusEnumSerializer;

  const StartFileScanOKStatusEnum._(String name) : super(name);

  static BuiltSet<StartFileScanOKStatusEnum> get values =>
      _$startFileScanOKStatusEnumValues;
  static StartFileScanOKStatusEnum valueOf(String name) =>
      _$startFileScanOKStatusEnumValueOf(name);
}
