//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_list.g.dart';

/// TokenList
///
/// Properties:
/// * [tokens] 
/// * [lastEvaluatedKey] 
@BuiltValue()
abstract class TokenList implements Built<TokenList, TokenListBuilder> {
  @BuiltValueField(wireName: r'tokens')
  BuiltList<TokenDto> get tokens;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  TokenList._();

  factory TokenList([void updates(TokenListBuilder b)]) = _$TokenList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenList> get serializer => _$TokenListSerializer();
}

class _$TokenListSerializer implements PrimitiveSerializer<TokenList> {
  @override
  final Iterable<Type> types = const [TokenList, _$TokenList];

  @override
  final String wireName = r'TokenList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tokens';
    yield serializers.serialize(
      object.tokens,
      specifiedType: const FullType(BuiltList, [FullType(TokenDto)]),
    );
    if (object.lastEvaluatedKey != null) {
      yield r'lastEvaluatedKey';
      yield serializers.serialize(
        object.lastEvaluatedKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TokenDto)]),
          ) as BuiltList<TokenDto>;
          result.tokens.replace(valueDes);
          break;
        case r'lastEvaluatedKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastEvaluatedKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenListBuilder();
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

