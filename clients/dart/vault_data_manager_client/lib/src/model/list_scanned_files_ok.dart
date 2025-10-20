//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/list_scanned_files_ok_scanned_files_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_scanned_files_ok.g.dart';

/// ListScannedFilesOK
///
/// Properties:
/// * [scannedFiles]
@BuiltValue()
abstract class ListScannedFilesOK
    implements Built<ListScannedFilesOK, ListScannedFilesOKBuilder> {
  @BuiltValueField(wireName: r'scannedFiles')
  BuiltList<ListScannedFilesOKScannedFilesInner> get scannedFiles;

  ListScannedFilesOK._();

  factory ListScannedFilesOK([void updates(ListScannedFilesOKBuilder b)]) =
      _$ListScannedFilesOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListScannedFilesOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListScannedFilesOK> get serializer =>
      _$ListScannedFilesOKSerializer();
}

class _$ListScannedFilesOKSerializer
    implements PrimitiveSerializer<ListScannedFilesOK> {
  @override
  final Iterable<Type> types = const [ListScannedFilesOK, _$ListScannedFilesOK];

  @override
  final String wireName = r'ListScannedFilesOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListScannedFilesOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'scannedFiles';
    yield serializers.serialize(
      object.scannedFiles,
      specifiedType: const FullType(
          BuiltList, [FullType(ListScannedFilesOKScannedFilesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListScannedFilesOK object, {
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
    required ListScannedFilesOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'scannedFiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ListScannedFilesOKScannedFilesInner)]),
          ) as BuiltList<ListScannedFilesOKScannedFilesInner>;
          result.scannedFiles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListScannedFilesOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListScannedFilesOKBuilder();
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
