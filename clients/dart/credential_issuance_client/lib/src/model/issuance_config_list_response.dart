//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/issuance_config_mini_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issuance_config_list_response.g.dart';

/// IssuanceConfigListResponse
///
/// Properties:
/// * [configurations] 
@BuiltValue()
abstract class IssuanceConfigListResponse implements Built<IssuanceConfigListResponse, IssuanceConfigListResponseBuilder> {
  @BuiltValueField(wireName: r'configurations')
  BuiltList<IssuanceConfigMiniDto> get configurations;

  IssuanceConfigListResponse._();

  factory IssuanceConfigListResponse([void updates(IssuanceConfigListResponseBuilder b)]) = _$IssuanceConfigListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IssuanceConfigListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IssuanceConfigListResponse> get serializer => _$IssuanceConfigListResponseSerializer();
}

class _$IssuanceConfigListResponseSerializer implements PrimitiveSerializer<IssuanceConfigListResponse> {
  @override
  final Iterable<Type> types = const [IssuanceConfigListResponse, _$IssuanceConfigListResponse];

  @override
  final String wireName = r'IssuanceConfigListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IssuanceConfigListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'configurations';
    yield serializers.serialize(
      object.configurations,
      specifiedType: const FullType(BuiltList, [FullType(IssuanceConfigMiniDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IssuanceConfigListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IssuanceConfigListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configurations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IssuanceConfigMiniDto)]),
          ) as BuiltList<IssuanceConfigMiniDto>;
          result.configurations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IssuanceConfigListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IssuanceConfigListResponseBuilder();
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

