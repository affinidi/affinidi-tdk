//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_scanned_file_info_ok.g.dart';

/// GetScannedFileInfoOK
///
/// Properties:
/// * [data] 
/// * [jobId] - A unique, randomly generated idetifier
/// * [status] - Status of the file scanning once initiated
/// * [profileId] - A unique, randomly generated identifier
/// * [exclusiveStartKey] - The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
/// * [nodeId] - A unique, randomly generated identifier
/// * [createdAt] 
/// * [name] 
@BuiltValue()
abstract class GetScannedFileInfoOK implements Built<GetScannedFileInfoOK, GetScannedFileInfoOKBuilder> {
  @BuiltValueField(wireName: r'data')
  JsonObject get data;

  /// A unique, randomly generated idetifier
  @BuiltValueField(wireName: r'jobId')
  String get jobId;

  /// Status of the file scanning once initiated
  @BuiltValueField(wireName: r'status')
  String get status;

  /// A unique, randomly generated identifier
  @BuiltValueField(wireName: r'profileId')
  String get profileId;

  /// The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  @BuiltValueField(wireName: r'exclusiveStartKey')
  String? get exclusiveStartKey;

  /// A unique, randomly generated identifier
  @BuiltValueField(wireName: r'nodeId')
  String get nodeId;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  @BuiltValueField(wireName: r'name')
  String get name;

  GetScannedFileInfoOK._();

  factory GetScannedFileInfoOK([void updates(GetScannedFileInfoOKBuilder b)]) = _$GetScannedFileInfoOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetScannedFileInfoOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetScannedFileInfoOK> get serializer => _$GetScannedFileInfoOKSerializer();
}

class _$GetScannedFileInfoOKSerializer implements PrimitiveSerializer<GetScannedFileInfoOK> {
  @override
  final Iterable<Type> types = const [GetScannedFileInfoOK, _$GetScannedFileInfoOK];

  @override
  final String wireName = r'GetScannedFileInfoOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetScannedFileInfoOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(JsonObject),
    );
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
    if (object.exclusiveStartKey != null) {
      yield r'exclusiveStartKey';
      yield serializers.serialize(
        object.exclusiveStartKey,
        specifiedType: const FullType(String),
      );
    }
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
    GetScannedFileInfoOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetScannedFileInfoOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.data = valueDes;
          break;
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
        case r'exclusiveStartKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.exclusiveStartKey = valueDes;
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
  GetScannedFileInfoOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetScannedFileInfoOKBuilder();
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

