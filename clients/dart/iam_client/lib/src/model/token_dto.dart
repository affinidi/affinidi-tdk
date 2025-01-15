//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_authentication_method_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_dto.g.dart';

/// TokenDto
///
/// Properties:
/// * [id] - Token Id
/// * [ari] - Token ARI
/// * [ownerAri] - The Token owner's ARI
/// * [name] - Owner defined Token display name
/// * [authenticationMethod] 
/// * [scopes] - Scopes that will be assigned to the Token on authentication
@BuiltValue()
abstract class TokenDto implements Built<TokenDto, TokenDtoBuilder> {
  /// Token Id
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Token ARI
  @BuiltValueField(wireName: r'ari')
  String get ari;

  /// The Token owner's ARI
  @BuiltValueField(wireName: r'ownerAri')
  String get ownerAri;

  /// Owner defined Token display name
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'authenticationMethod')
  TokenAuthenticationMethodDto get authenticationMethod;

  /// Scopes that will be assigned to the Token on authentication
  @BuiltValueField(wireName: r'scopes')
  BuiltList<String> get scopes;

  TokenDto._();

  factory TokenDto([void updates(TokenDtoBuilder b)]) = _$TokenDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenDto> get serializer => _$TokenDtoSerializer();
}

class _$TokenDtoSerializer implements PrimitiveSerializer<TokenDto> {
  @override
  final Iterable<Type> types = const [TokenDto, _$TokenDto];

  @override
  final String wireName = r'TokenDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'ari';
    yield serializers.serialize(
      object.ari,
      specifiedType: const FullType(String),
    );
    yield r'ownerAri';
    yield serializers.serialize(
      object.ownerAri,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'authenticationMethod';
    yield serializers.serialize(
      object.authenticationMethod,
      specifiedType: const FullType(TokenAuthenticationMethodDto),
    );
    yield r'scopes';
    yield serializers.serialize(
      object.scopes,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'ari':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ari = valueDes;
          break;
        case r'ownerAri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerAri = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'authenticationMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenAuthenticationMethodDto),
          ) as TokenAuthenticationMethodDto;
          result.authenticationMethod.replace(valueDes);
          break;
        case r'scopes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.scopes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenDtoBuilder();
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

