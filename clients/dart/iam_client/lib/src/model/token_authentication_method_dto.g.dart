// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_authentication_method_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TokenAuthenticationMethodDtoTypeEnum
    _$tokenAuthenticationMethodDtoTypeEnum_PRIVATE_KEY =
    const TokenAuthenticationMethodDtoTypeEnum._('PRIVATE_KEY');

TokenAuthenticationMethodDtoTypeEnum
    _$tokenAuthenticationMethodDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'PRIVATE_KEY':
      return _$tokenAuthenticationMethodDtoTypeEnum_PRIVATE_KEY;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TokenAuthenticationMethodDtoTypeEnum>
    _$tokenAuthenticationMethodDtoTypeEnumValues = new BuiltSet<
        TokenAuthenticationMethodDtoTypeEnum>(const <TokenAuthenticationMethodDtoTypeEnum>[
  _$tokenAuthenticationMethodDtoTypeEnum_PRIVATE_KEY,
]);

const TokenAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_rS256 =
    const TokenAuthenticationMethodDtoSigningAlgorithmEnum._('rS256');
const TokenAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_rS512 =
    const TokenAuthenticationMethodDtoSigningAlgorithmEnum._('rS512');
const TokenAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_eS256 =
    const TokenAuthenticationMethodDtoSigningAlgorithmEnum._('eS256');
const TokenAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_eS512 =
    const TokenAuthenticationMethodDtoSigningAlgorithmEnum._('eS512');

TokenAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenAuthenticationMethodDtoSigningAlgorithmEnumValueOf(String name) {
  switch (name) {
    case 'rS256':
      return _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_rS256;
    case 'rS512':
      return _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_rS512;
    case 'eS256':
      return _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_eS256;
    case 'eS512':
      return _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_eS512;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TokenAuthenticationMethodDtoSigningAlgorithmEnum>
    _$tokenAuthenticationMethodDtoSigningAlgorithmEnumValues = new BuiltSet<
        TokenAuthenticationMethodDtoSigningAlgorithmEnum>(const <TokenAuthenticationMethodDtoSigningAlgorithmEnum>[
  _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_rS256,
  _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_rS512,
  _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_eS256,
  _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_eS512,
]);

Serializer<TokenAuthenticationMethodDtoTypeEnum>
    _$tokenAuthenticationMethodDtoTypeEnumSerializer =
    new _$TokenAuthenticationMethodDtoTypeEnumSerializer();
Serializer<TokenAuthenticationMethodDtoSigningAlgorithmEnum>
    _$tokenAuthenticationMethodDtoSigningAlgorithmEnumSerializer =
    new _$TokenAuthenticationMethodDtoSigningAlgorithmEnumSerializer();

class _$TokenAuthenticationMethodDtoTypeEnumSerializer
    implements PrimitiveSerializer<TokenAuthenticationMethodDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PRIVATE_KEY': 'PRIVATE_KEY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PRIVATE_KEY': 'PRIVATE_KEY',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TokenAuthenticationMethodDtoTypeEnum
  ];
  @override
  final String wireName = 'TokenAuthenticationMethodDtoTypeEnum';

  @override
  Object serialize(
          Serializers serializers, TokenAuthenticationMethodDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TokenAuthenticationMethodDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TokenAuthenticationMethodDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TokenAuthenticationMethodDtoSigningAlgorithmEnumSerializer
    implements
        PrimitiveSerializer<TokenAuthenticationMethodDtoSigningAlgorithmEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rS256': 'RS256',
    'rS512': 'RS512',
    'eS256': 'ES256',
    'eS512': 'ES512',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RS256': 'rS256',
    'RS512': 'rS512',
    'ES256': 'eS256',
    'ES512': 'eS512',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TokenAuthenticationMethodDtoSigningAlgorithmEnum
  ];
  @override
  final String wireName = 'TokenAuthenticationMethodDtoSigningAlgorithmEnum';

  @override
  Object serialize(Serializers serializers,
          TokenAuthenticationMethodDtoSigningAlgorithmEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TokenAuthenticationMethodDtoSigningAlgorithmEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TokenAuthenticationMethodDtoSigningAlgorithmEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TokenAuthenticationMethodDto extends TokenAuthenticationMethodDto {
  @override
  final OneOf oneOf;

  factory _$TokenAuthenticationMethodDto(
          [void Function(TokenAuthenticationMethodDtoBuilder)? updates]) =>
      (new TokenAuthenticationMethodDtoBuilder()..update(updates))._build();

  _$TokenAuthenticationMethodDto._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'TokenAuthenticationMethodDto', 'oneOf');
  }

  @override
  TokenAuthenticationMethodDto rebuild(
          void Function(TokenAuthenticationMethodDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenAuthenticationMethodDtoBuilder toBuilder() =>
      new TokenAuthenticationMethodDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenAuthenticationMethodDto && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenAuthenticationMethodDto')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class TokenAuthenticationMethodDtoBuilder
    implements
        Builder<TokenAuthenticationMethodDto,
            TokenAuthenticationMethodDtoBuilder> {
  _$TokenAuthenticationMethodDto? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  TokenAuthenticationMethodDtoBuilder() {
    TokenAuthenticationMethodDto._defaults(this);
  }

  TokenAuthenticationMethodDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenAuthenticationMethodDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenAuthenticationMethodDto;
  }

  @override
  void update(void Function(TokenAuthenticationMethodDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenAuthenticationMethodDto build() => _build();

  _$TokenAuthenticationMethodDto _build() {
    final _$result = _$v ??
        new _$TokenAuthenticationMethodDto._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'TokenAuthenticationMethodDto', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
