//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_file_scan_input.g.dart';

/// StartFileScanInput
///
/// Properties:
/// * [dek] - A base64 encoded data encryption key, encrypted using VFS public key. This is important as this is used when starting document scan and also while uploading the file to s3
@BuiltValue()
abstract class StartFileScanInput
    implements Built<StartFileScanInput, StartFileScanInputBuilder> {
  /// A base64 encoded data encryption key, encrypted using VFS public key. This is important as this is used when starting document scan and also while uploading the file to s3
  @BuiltValueField(wireName: r'dek')
  String get dek;

  StartFileScanInput._();

  factory StartFileScanInput([void updates(StartFileScanInputBuilder b)]) =
      _$StartFileScanInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartFileScanInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartFileScanInput> get serializer =>
      _$StartFileScanInputSerializer();
}

class _$StartFileScanInputSerializer
    implements PrimitiveSerializer<StartFileScanInput> {
  @override
  final Iterable<Type> types = const [StartFileScanInput, _$StartFileScanInput];

  @override
  final String wireName = r'StartFileScanInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartFileScanInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dek';
    yield serializers.serialize(
      object.dek,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    StartFileScanInput object, {
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
    required StartFileScanInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dek':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dek = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StartFileScanInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartFileScanInputBuilder();
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
