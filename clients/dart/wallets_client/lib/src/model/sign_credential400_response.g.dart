// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credential400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignCredential400ResponseNameEnum
    _$signCredential400ResponseNameEnum_signingFailedError =
    const SignCredential400ResponseNameEnum._('signingFailedError');

SignCredential400ResponseNameEnum _$signCredential400ResponseNameEnumValueOf(
    String name) {
  switch (name) {
    case 'signingFailedError':
      return _$signCredential400ResponseNameEnum_signingFailedError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignCredential400ResponseNameEnum>
    _$signCredential400ResponseNameEnumValues = BuiltSet<
        SignCredential400ResponseNameEnum>(const <SignCredential400ResponseNameEnum>[
  _$signCredential400ResponseNameEnum_signingFailedError,
]);

const SignCredential400ResponseMessageEnum
    _$signCredential400ResponseMessageEnum_signingFailedPeriod =
    const SignCredential400ResponseMessageEnum._('signingFailedPeriod');

SignCredential400ResponseMessageEnum
    _$signCredential400ResponseMessageEnumValueOf(String name) {
  switch (name) {
    case 'signingFailedPeriod':
      return _$signCredential400ResponseMessageEnum_signingFailedPeriod;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignCredential400ResponseMessageEnum>
    _$signCredential400ResponseMessageEnumValues = BuiltSet<
        SignCredential400ResponseMessageEnum>(const <SignCredential400ResponseMessageEnum>[
  _$signCredential400ResponseMessageEnum_signingFailedPeriod,
]);

const SignCredential400ResponseHttpStatusCodeEnum
    _$signCredential400ResponseHttpStatusCodeEnum_number400 =
    const SignCredential400ResponseHttpStatusCodeEnum._('number400');

SignCredential400ResponseHttpStatusCodeEnum
    _$signCredential400ResponseHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$signCredential400ResponseHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignCredential400ResponseHttpStatusCodeEnum>
    _$signCredential400ResponseHttpStatusCodeEnumValues = BuiltSet<
        SignCredential400ResponseHttpStatusCodeEnum>(const <SignCredential400ResponseHttpStatusCodeEnum>[
  _$signCredential400ResponseHttpStatusCodeEnum_number400,
]);

Serializer<SignCredential400ResponseNameEnum>
    _$signCredential400ResponseNameEnumSerializer =
    _$SignCredential400ResponseNameEnumSerializer();
Serializer<SignCredential400ResponseMessageEnum>
    _$signCredential400ResponseMessageEnumSerializer =
    _$SignCredential400ResponseMessageEnumSerializer();
Serializer<SignCredential400ResponseHttpStatusCodeEnum>
    _$signCredential400ResponseHttpStatusCodeEnumSerializer =
    _$SignCredential400ResponseHttpStatusCodeEnumSerializer();

class _$SignCredential400ResponseNameEnumSerializer
    implements PrimitiveSerializer<SignCredential400ResponseNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'signingFailedError': 'SigningFailedError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SigningFailedError': 'signingFailedError',
  };

  @override
  final Iterable<Type> types = const <Type>[SignCredential400ResponseNameEnum];
  @override
  final String wireName = 'SignCredential400ResponseNameEnum';

  @override
  Object serialize(
          Serializers serializers, SignCredential400ResponseNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignCredential400ResponseNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignCredential400ResponseNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignCredential400ResponseMessageEnumSerializer
    implements PrimitiveSerializer<SignCredential400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'signingFailedPeriod': 'Signing failed.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Signing failed.': 'signingFailedPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SignCredential400ResponseMessageEnum
  ];
  @override
  final String wireName = 'SignCredential400ResponseMessageEnum';

  @override
  Object serialize(
          Serializers serializers, SignCredential400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignCredential400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignCredential400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignCredential400ResponseHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<SignCredential400ResponseHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SignCredential400ResponseHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'SignCredential400ResponseHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          SignCredential400ResponseHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignCredential400ResponseHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignCredential400ResponseHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignCredential400Response extends SignCredential400Response {
  @override
  final OneOf oneOf;

  factory _$SignCredential400Response(
          [void Function(SignCredential400ResponseBuilder)? updates]) =>
      (SignCredential400ResponseBuilder()..update(updates))._build();

  _$SignCredential400Response._({required this.oneOf}) : super._();
  @override
  SignCredential400Response rebuild(
          void Function(SignCredential400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredential400ResponseBuilder toBuilder() =>
      SignCredential400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredential400Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'SignCredential400Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class SignCredential400ResponseBuilder
    implements
        Builder<SignCredential400Response, SignCredential400ResponseBuilder> {
  _$SignCredential400Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SignCredential400ResponseBuilder() {
    SignCredential400Response._defaults(this);
  }

  SignCredential400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredential400Response other) {
    _$v = other as _$SignCredential400Response;
  }

  @override
  void update(void Function(SignCredential400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredential400Response build() => _build();

  _$SignCredential400Response _build() {
    final _$result = _$v ??
        _$SignCredential400Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'SignCredential400Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
