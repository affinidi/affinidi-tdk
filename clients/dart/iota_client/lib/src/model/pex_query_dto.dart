//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pex_query_dto.g.dart';

/// PexQueryDto
///
/// Properties:
/// * [ari] - The unique resource identifier of the qeuery.
/// * [queryId] - The ID of the query.
/// * [name] - The name of the presentation definition to quickly identify the query.
/// * [description] - An optional description of what the query is used for.
/// * [configurationAri] - The unique resource identifier of the related configuration where the query is defined.
/// * [vpDefinition] - The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
@BuiltValue()
abstract class PexQueryDto implements Built<PexQueryDto, PexQueryDtoBuilder> {
  /// The unique resource identifier of the qeuery.
  @BuiltValueField(wireName: r'ari')
  String get ari;

  /// The ID of the query.
  @BuiltValueField(wireName: r'queryId')
  String get queryId;

  /// The name of the presentation definition to quickly identify the query.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// An optional description of what the query is used for.
  @BuiltValueField(wireName: r'description')
  String get description;

  /// The unique resource identifier of the related configuration where the query is defined.
  @BuiltValueField(wireName: r'configurationAri')
  String get configurationAri;

  /// The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
  @BuiltValueField(wireName: r'vpDefinition')
  String get vpDefinition;

  PexQueryDto._();

  factory PexQueryDto([void updates(PexQueryDtoBuilder b)]) = _$PexQueryDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PexQueryDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PexQueryDto> get serializer => _$PexQueryDtoSerializer();
}

class _$PexQueryDtoSerializer implements PrimitiveSerializer<PexQueryDto> {
  @override
  final Iterable<Type> types = const [PexQueryDto, _$PexQueryDto];

  @override
  final String wireName = r'PexQueryDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PexQueryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ari';
    yield serializers.serialize(
      object.ari,
      specifiedType: const FullType(String),
    );
    yield r'queryId';
    yield serializers.serialize(
      object.queryId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'configurationAri';
    yield serializers.serialize(
      object.configurationAri,
      specifiedType: const FullType(String),
    );
    yield r'vpDefinition';
    yield serializers.serialize(
      object.vpDefinition,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PexQueryDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PexQueryDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ari':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ari = valueDes;
          break;
        case r'queryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.queryId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'configurationAri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.configurationAri = valueDes;
          break;
        case r'vpDefinition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vpDefinition = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PexQueryDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PexQueryDtoBuilder();
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

