// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_token_private_key_authentication_method_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum
    _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnum_PRIVATE_KEY =
    const UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum._('PRIVATE_KEY');

UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum
    _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'PRIVATE_KEY':
      return _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnum_PRIVATE_KEY;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum>
    _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnumValues = BuiltSet<
        UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum>(const <UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum>[
  _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnum_PRIVATE_KEY,
]);

const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS256 =
    const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(
        'rS256');
const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS512 =
    const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(
        'rS512');
const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS256 =
    const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(
        'eS256');
const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS512 =
    const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(
        'eS512');

UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumValueOf(
        String name) {
  switch (name) {
    case 'rS256':
      return _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS256;
    case 'rS512':
      return _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS512;
    case 'eS256':
      return _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS256;
    case 'eS512':
      return _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS512;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>
    _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumValues =
    BuiltSet<
        UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>(const <UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>[
  _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS256,
  _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS512,
  _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS256,
  _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS512,
]);

Serializer<UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum>
    _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnumSerializer =
    _$UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumSerializer();
Serializer<UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>
    _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumSerializer =
    _$UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumSerializer();

class _$UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumSerializer
    implements
        PrimitiveSerializer<
            UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PRIVATE_KEY': 'PRIVATE_KEY',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PRIVATE_KEY': 'PRIVATE_KEY',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum
  ];
  @override
  final String wireName =
      'UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum';

  @override
  Object serialize(Serializers serializers,
          UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumSerializer
    implements
        PrimitiveSerializer<
            UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum> {
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
    UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
  ];
  @override
  final String wireName =
      'UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum';

  @override
  Object serialize(
          Serializers serializers,
          UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
              object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateTokenPrivateKeyAuthenticationMethodDto
    extends UpdateTokenPrivateKeyAuthenticationMethodDto {
  @override
  final UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum? type;
  @override
  final UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum?
      signingAlgorithm;
  @override
  final TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo? publicKeyInfo;

  factory _$UpdateTokenPrivateKeyAuthenticationMethodDto(
          [void Function(UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder)?
              updates]) =>
      (UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder()..update(updates))
          ._build();

  _$UpdateTokenPrivateKeyAuthenticationMethodDto._(
      {this.type, this.signingAlgorithm, this.publicKeyInfo})
      : super._();
  @override
  UpdateTokenPrivateKeyAuthenticationMethodDto rebuild(
          void Function(UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder toBuilder() =>
      UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTokenPrivateKeyAuthenticationMethodDto &&
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
            r'UpdateTokenPrivateKeyAuthenticationMethodDto')
          ..add('type', type)
          ..add('signingAlgorithm', signingAlgorithm)
          ..add('publicKeyInfo', publicKeyInfo))
        .toString();
  }
}

class UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder
    implements
        Builder<UpdateTokenPrivateKeyAuthenticationMethodDto,
            UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder> {
  _$UpdateTokenPrivateKeyAuthenticationMethodDto? _$v;

  UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum? _type;
  UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum? get type =>
      _$this._type;
  set type(UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum? type) =>
      _$this._type = type;

  UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum?
      _signingAlgorithm;
  UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum?
      get signingAlgorithm => _$this._signingAlgorithm;
  set signingAlgorithm(
          UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum?
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

  UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder() {
    UpdateTokenPrivateKeyAuthenticationMethodDto._defaults(this);
  }

  UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _signingAlgorithm = $v.signingAlgorithm;
      _publicKeyInfo = $v.publicKeyInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTokenPrivateKeyAuthenticationMethodDto other) {
    _$v = other as _$UpdateTokenPrivateKeyAuthenticationMethodDto;
  }

  @override
  void update(
      void Function(UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTokenPrivateKeyAuthenticationMethodDto build() => _build();

  _$UpdateTokenPrivateKeyAuthenticationMethodDto _build() {
    _$UpdateTokenPrivateKeyAuthenticationMethodDto _$result;
    try {
      _$result = _$v ??
          _$UpdateTokenPrivateKeyAuthenticationMethodDto._(
            type: type,
            signingAlgorithm: signingAlgorithm,
            publicKeyInfo: _publicKeyInfo?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'publicKeyInfo';
        _publicKeyInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateTokenPrivateKeyAuthenticationMethodDto',
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
