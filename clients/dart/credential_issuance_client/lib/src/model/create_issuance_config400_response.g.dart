// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_issuance_config400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateIssuanceConfig400ResponseNameEnum
    _$createIssuanceConfig400ResponseNameEnum_invalidIssuerWalletError =
    const CreateIssuanceConfig400ResponseNameEnum._('invalidIssuerWalletError');

CreateIssuanceConfig400ResponseNameEnum
    _$createIssuanceConfig400ResponseNameEnumValueOf(String name) {
  switch (name) {
    case 'invalidIssuerWalletError':
      return _$createIssuanceConfig400ResponseNameEnum_invalidIssuerWalletError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateIssuanceConfig400ResponseNameEnum>
    _$createIssuanceConfig400ResponseNameEnumValues = new BuiltSet<
        CreateIssuanceConfig400ResponseNameEnum>(const <CreateIssuanceConfig400ResponseNameEnum>[
  _$createIssuanceConfig400ResponseNameEnum_invalidIssuerWalletError,
]);

const CreateIssuanceConfig400ResponseMessageEnum
    _$createIssuanceConfig400ResponseMessageEnum_issuerWalletIdIsInvalid =
    const CreateIssuanceConfig400ResponseMessageEnum._(
        'issuerWalletIdIsInvalid');

CreateIssuanceConfig400ResponseMessageEnum
    _$createIssuanceConfig400ResponseMessageEnumValueOf(String name) {
  switch (name) {
    case 'issuerWalletIdIsInvalid':
      return _$createIssuanceConfig400ResponseMessageEnum_issuerWalletIdIsInvalid;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateIssuanceConfig400ResponseMessageEnum>
    _$createIssuanceConfig400ResponseMessageEnumValues = new BuiltSet<
        CreateIssuanceConfig400ResponseMessageEnum>(const <CreateIssuanceConfig400ResponseMessageEnum>[
  _$createIssuanceConfig400ResponseMessageEnum_issuerWalletIdIsInvalid,
]);

const CreateIssuanceConfig400ResponseHttpStatusCodeEnum
    _$createIssuanceConfig400ResponseHttpStatusCodeEnum_number400 =
    const CreateIssuanceConfig400ResponseHttpStatusCodeEnum._('number400');

CreateIssuanceConfig400ResponseHttpStatusCodeEnum
    _$createIssuanceConfig400ResponseHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$createIssuanceConfig400ResponseHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateIssuanceConfig400ResponseHttpStatusCodeEnum>
    _$createIssuanceConfig400ResponseHttpStatusCodeEnumValues = new BuiltSet<
        CreateIssuanceConfig400ResponseHttpStatusCodeEnum>(const <CreateIssuanceConfig400ResponseHttpStatusCodeEnum>[
  _$createIssuanceConfig400ResponseHttpStatusCodeEnum_number400,
]);

Serializer<CreateIssuanceConfig400ResponseNameEnum>
    _$createIssuanceConfig400ResponseNameEnumSerializer =
    new _$CreateIssuanceConfig400ResponseNameEnumSerializer();
Serializer<CreateIssuanceConfig400ResponseMessageEnum>
    _$createIssuanceConfig400ResponseMessageEnumSerializer =
    new _$CreateIssuanceConfig400ResponseMessageEnumSerializer();
Serializer<CreateIssuanceConfig400ResponseHttpStatusCodeEnum>
    _$createIssuanceConfig400ResponseHttpStatusCodeEnumSerializer =
    new _$CreateIssuanceConfig400ResponseHttpStatusCodeEnumSerializer();

class _$CreateIssuanceConfig400ResponseNameEnumSerializer
    implements PrimitiveSerializer<CreateIssuanceConfig400ResponseNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidIssuerWalletError': 'InvalidIssuerWalletError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidIssuerWalletError': 'invalidIssuerWalletError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateIssuanceConfig400ResponseNameEnum
  ];
  @override
  final String wireName = 'CreateIssuanceConfig400ResponseNameEnum';

  @override
  Object serialize(Serializers serializers,
          CreateIssuanceConfig400ResponseNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateIssuanceConfig400ResponseNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateIssuanceConfig400ResponseNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateIssuanceConfig400ResponseMessageEnumSerializer
    implements PrimitiveSerializer<CreateIssuanceConfig400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'issuerWalletIdIsInvalid': 'issuer wallet id is invalid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'issuer wallet id is invalid': 'issuerWalletIdIsInvalid',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateIssuanceConfig400ResponseMessageEnum
  ];
  @override
  final String wireName = 'CreateIssuanceConfig400ResponseMessageEnum';

  @override
  Object serialize(Serializers serializers,
          CreateIssuanceConfig400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateIssuanceConfig400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateIssuanceConfig400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateIssuanceConfig400ResponseHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<CreateIssuanceConfig400ResponseHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateIssuanceConfig400ResponseHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'CreateIssuanceConfig400ResponseHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          CreateIssuanceConfig400ResponseHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateIssuanceConfig400ResponseHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateIssuanceConfig400ResponseHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateIssuanceConfig400Response
    extends CreateIssuanceConfig400Response {
  @override
  final OneOf oneOf;

  factory _$CreateIssuanceConfig400Response(
          [void Function(CreateIssuanceConfig400ResponseBuilder)? updates]) =>
      (new CreateIssuanceConfig400ResponseBuilder()..update(updates))._build();

  _$CreateIssuanceConfig400Response._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'CreateIssuanceConfig400Response', 'oneOf');
  }

  @override
  CreateIssuanceConfig400Response rebuild(
          void Function(CreateIssuanceConfig400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIssuanceConfig400ResponseBuilder toBuilder() =>
      new CreateIssuanceConfig400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIssuanceConfig400Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'CreateIssuanceConfig400Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateIssuanceConfig400ResponseBuilder
    implements
        Builder<CreateIssuanceConfig400Response,
            CreateIssuanceConfig400ResponseBuilder> {
  _$CreateIssuanceConfig400Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateIssuanceConfig400ResponseBuilder() {
    CreateIssuanceConfig400Response._defaults(this);
  }

  CreateIssuanceConfig400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIssuanceConfig400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateIssuanceConfig400Response;
  }

  @override
  void update(void Function(CreateIssuanceConfig400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIssuanceConfig400Response build() => _build();

  _$CreateIssuanceConfig400Response _build() {
    final _$result = _$v ??
        new _$CreateIssuanceConfig400Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateIssuanceConfig400Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
