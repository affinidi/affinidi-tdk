//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_dto.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/consumer_metadata_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'init_nodes_ok.g.dart';

/// InitNodesOK
///
/// Properties:
/// * [consumerMetadata] 
/// * [defaultProfile] 
@BuiltValue()
abstract class InitNodesOK implements Built<InitNodesOK, InitNodesOKBuilder> {
  @BuiltValueField(wireName: r'consumerMetadata')
  ConsumerMetadataDto? get consumerMetadata;

  @BuiltValueField(wireName: r'defaultProfile')
  NodeDto? get defaultProfile;

  InitNodesOK._();

  factory InitNodesOK([void updates(InitNodesOKBuilder b)]) = _$InitNodesOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InitNodesOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InitNodesOK> get serializer => _$InitNodesOKSerializer();
}

class _$InitNodesOKSerializer implements PrimitiveSerializer<InitNodesOK> {
  @override
  final Iterable<Type> types = const [InitNodesOK, _$InitNodesOK];

  @override
  final String wireName = r'InitNodesOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InitNodesOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.consumerMetadata != null) {
      yield r'consumerMetadata';
      yield serializers.serialize(
        object.consumerMetadata,
        specifiedType: const FullType(ConsumerMetadataDto),
      );
    }
    if (object.defaultProfile != null) {
      yield r'defaultProfile';
      yield serializers.serialize(
        object.defaultProfile,
        specifiedType: const FullType(NodeDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InitNodesOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InitNodesOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'consumerMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConsumerMetadataDto),
          ) as ConsumerMetadataDto;
          result.consumerMetadata.replace(valueDes);
          break;
        case r'defaultProfile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NodeDto),
          ) as NodeDto;
          result.defaultProfile = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InitNodesOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitNodesOKBuilder();
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

