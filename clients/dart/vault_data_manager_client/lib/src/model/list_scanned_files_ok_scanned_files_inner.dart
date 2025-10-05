//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_scanned_files_ok_scanned_files_inner.g.dart';

/// ListScannedFilesOKScannedFilesInner
///
/// Properties:
/// * [jobId] - A unique, randomly generated identifier
/// * [status] - The Status of the listed files
/// * [profileId] - A unique, randomly generated identifier
/// * [nodeId]
/// * [createdAt]
/// * [name]
@BuiltValue()
abstract class ListScannedFilesOKScannedFilesInner
    implements
        Built<ListScannedFilesOKScannedFilesInner,
            ListScannedFilesOKScannedFilesInnerBuilder> {
  /// A unique, randomly generated identifier
  @BuiltValueField(wireName: r'jobId')
  String get jobId;

  /// The Status of the listed files
  @BuiltValueField(wireName: r'status')
  String get status;

  /// A unique, randomly generated identifier
  @BuiltValueField(wireName: r'profileId')
  String get profileId;

  @BuiltValueField(wireName: r'nodeId')
  String get nodeId;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'name')
  String get name;

  ListScannedFilesOKScannedFilesInner._();

  factory ListScannedFilesOKScannedFilesInner(
          [void updates(ListScannedFilesOKScannedFilesInnerBuilder b)]) =
      _$ListScannedFilesOKScannedFilesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListScannedFilesOKScannedFilesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListScannedFilesOKScannedFilesInner> get serializer =>
      _$ListScannedFilesOKScannedFilesInnerSerializer();
}

class _$ListScannedFilesOKScannedFilesInnerSerializer
    implements PrimitiveSerializer<ListScannedFilesOKScannedFilesInner> {
  @override
  final Iterable<Type> types = const [
    ListScannedFilesOKScannedFilesInner,
    _$ListScannedFilesOKScannedFilesInner
  ];

  @override
  final String wireName = r'ListScannedFilesOKScannedFilesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListScannedFilesOKScannedFilesInner object, {
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
      specifiedType: const FullType(String),
    );
    yield r'profileId';
    yield serializers.serialize(
      object.profileId,
      specifiedType: const FullType(String),
    );
    yield r'nodeId';
    yield serializers.serialize(
      object.nodeId,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ListScannedFilesOKScannedFilesInner object, {
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
    required ListScannedFilesOKScannedFilesInnerBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'profileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profileId = valueDes;
          break;
        case r'nodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListScannedFilesOKScannedFilesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListScannedFilesOKScannedFilesInnerBuilder();
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
