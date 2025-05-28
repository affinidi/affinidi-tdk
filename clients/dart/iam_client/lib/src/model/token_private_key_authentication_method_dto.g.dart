// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_private_key_authentication_method_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TokenPrivateKeyAuthenticationMethodDtoTypeEnum
    _$tokenPrivateKeyAuthenticationMethodDtoTypeEnum_PRIVATE_KEY =
    const TokenPrivateKeyAuthenticationMethodDtoTypeEnum._('PRIVATE_KEY');

TokenPrivateKeyAuthenticationMethodDtoTypeEnum
    _$tokenPrivateKeyAuthenticationMethodDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'PRIVATE_KEY':
      return _$tokenPrivateKeyAuthenticationMethodDtoTypeEnum_PRIVATE_KEY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TokenPrivateKeyAuthenticationMethodDtoTypeEnum>
    _$tokenPrivateKeyAuthenticationMethodDtoTypeEnumValues = BuiltSet<
        TokenPrivateKeyAuthenticationMethodDtoTypeEnum>(const <TokenPrivateKeyAuthenticationMethodDtoTypeEnum>[
  _$tokenPrivateKeyAuthenticationMethodDtoTypeEnum_PRIVATE_KEY,
]);

const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS256 =
    const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._('rS256');
const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS512 =
    const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._('rS512');
const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS256 =
    const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._('eS256');
const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS512 =
    const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._('eS512');

TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumValueOf(
        String name) {
  switch (name) {
    case 'rS256':
      return _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS256;
    case 'rS512':
      return _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS512;
    case 'eS256':
      return _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS256;
    case 'eS512':
      return _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS512;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>
    _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumValues =
    BuiltSet<
        TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>(const <TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>[
  _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS256,
  _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS512,
  _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS256,
  _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS512,
]);

Serializer<TokenPrivateKeyAuthenticationMethodDtoTypeEnum>
    _$tokenPrivateKeyAuthenticationMethodDtoTypeEnumSerializer =
    _$TokenPrivateKeyAuthenticationMethodDtoTypeEnumSerializer();
Serializer<TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>
    _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumSerializer =
    _$TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumSerializer();

class _$TokenPrivateKeyAuthenticationMethodDtoTypeEnumSerializer
    implements
        PrimitiveSerializer<TokenPrivateKeyAuthenticationMethodDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PRIVATE_KEY': 'PRIVATE_KEY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PRIVATE_KEY': 'PRIVATE_KEY',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TokenPrivateKeyAuthenticationMethodDtoTypeEnum
  ];
  @override
  final String wireName = 'TokenPrivateKeyAuthenticationMethodDtoTypeEnum';

  @override
  Object serialize(Serializers serializers,
          TokenPrivateKeyAuthenticationMethodDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TokenPrivateKeyAuthenticationMethodDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TokenPrivateKeyAuthenticationMethodDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumSerializer
    implements
        PrimitiveSerializer<
            TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum> {
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
    TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
  ];
  @override
  final String wireName =
      'TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum';

  @override
  Object serialize(Serializers serializers,
          TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TokenPrivateKeyAuthenticationMethodDto
    extends TokenPrivateKeyAuthenticationMethodDto {
  @override
  final TokenPrivateKeyAuthenticationMethodDtoTypeEnum type;
  @override
  final TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
      signingAlgorithm;
  @override
  final TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo publicKeyInfo;

  factory _$TokenPrivateKeyAuthenticationMethodDto(
          [void Function(TokenPrivateKeyAuthenticationMethodDtoBuilder)?
              updates]) =>
      (TokenPrivateKeyAuthenticationMethodDtoBuilder()..update(updates))
          ._build();

  _$TokenPrivateKeyAuthenticationMethodDto._(
      {required this.type,
      required this.signingAlgorithm,
      required this.publicKeyInfo})
      : super._();
  @override
  TokenPrivateKeyAuthenticationMethodDto rebuild(
          void Function(TokenPrivateKeyAuthenticationMethodDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenPrivateKeyAuthenticationMethodDtoBuilder toBuilder() =>
      TokenPrivateKeyAuthenticationMethodDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenPrivateKeyAuthenticationMethodDto &&
        type == other.type &&
        signingAlgorithm == other.signingAlgorithm &&
        publicKeyInfo == other.publicKeyInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, signingAlgorithm.hashCode);
    _$hash = $jc(_$hash, publicKeyInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TokenPrivateKeyAuthenticationMethodDto')
          ..add('type', type)
          ..add('signingAlgorithm', signingAlgorithm)
          ..add('publicKeyInfo', publicKeyInfo))
        .toString();
  }
}

class TokenPrivateKeyAuthenticationMethodDtoBuilder
    implements
        Builder<TokenPrivateKeyAuthenticationMethodDto,
            TokenPrivateKeyAuthenticationMethodDtoBuilder> {
  _$TokenPrivateKeyAuthenticationMethodDto? _$v;

  TokenPrivateKeyAuthenticationMethodDtoTypeEnum? _type;
  TokenPrivateKeyAuthenticationMethodDtoTypeEnum? get type => _$this._type;
  set type(TokenPrivateKeyAuthenticationMethodDtoTypeEnum? type) =>
      _$this._type = type;

  TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum? _signingAlgorithm;
  TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum?
      get signingAlgorithm => _$this._signingAlgorithm;
  set signingAlgorithm(
          TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum?
              signingAlgorithm) =>
      _$this._signingAlgorithm = signingAlgorithm;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder? _publicKeyInfo;
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder
      get publicKeyInfo => _$this._publicKeyInfo ??=
          TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder();
  set publicKeyInfo(
          TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder?
              publicKeyInfo) =>
      _$this._publicKeyInfo = publicKeyInfo;

  TokenPrivateKeyAuthenticationMethodDtoBuilder() {
    TokenPrivateKeyAuthenticationMethodDto._defaults(this);
  }

  TokenPrivateKeyAuthenticationMethodDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _signingAlgorithm = $v.signingAlgorithm;
      _publicKeyInfo = $v.publicKeyInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenPrivateKeyAuthenticationMethodDto other) {
    _$v = other as _$TokenPrivateKeyAuthenticationMethodDto;
  }

  @override
  void update(
      void Function(TokenPrivateKeyAuthenticationMethodDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenPrivateKeyAuthenticationMethodDto build() => _build();

  _$TokenPrivateKeyAuthenticationMethodDto _build() {
    _$TokenPrivateKeyAuthenticationMethodDto _$result;
    try {
      _$result = _$v ??
          _$TokenPrivateKeyAuthenticationMethodDto._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'TokenPrivateKeyAuthenticationMethodDto', 'type'),
            signingAlgorithm: BuiltValueNullFieldError.checkNotNull(
                signingAlgorithm,
                r'TokenPrivateKeyAuthenticationMethodDto',
                'signingAlgorithm'),
            publicKeyInfo: publicKeyInfo.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publicKeyInfo';
        publicKeyInfo.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TokenPrivateKeyAuthenticationMethodDto',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
