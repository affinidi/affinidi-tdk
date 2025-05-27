// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_configuration_read_invalid_client_id_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LoginConfigurationReadInvalidClientIdErrorNameEnum
    _$loginConfigurationReadInvalidClientIdErrorNameEnum_loginConfigurationReadInvalidClientIdError =
    const LoginConfigurationReadInvalidClientIdErrorNameEnum._(
        'loginConfigurationReadInvalidClientIdError');

LoginConfigurationReadInvalidClientIdErrorNameEnum
    _$loginConfigurationReadInvalidClientIdErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'loginConfigurationReadInvalidClientIdError':
      return _$loginConfigurationReadInvalidClientIdErrorNameEnum_loginConfigurationReadInvalidClientIdError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LoginConfigurationReadInvalidClientIdErrorNameEnum>
    _$loginConfigurationReadInvalidClientIdErrorNameEnumValues = BuiltSet<
        LoginConfigurationReadInvalidClientIdErrorNameEnum>(const <LoginConfigurationReadInvalidClientIdErrorNameEnum>[
  _$loginConfigurationReadInvalidClientIdErrorNameEnum_loginConfigurationReadInvalidClientIdError,
]);

const LoginConfigurationReadInvalidClientIdErrorMessageEnum
    _$loginConfigurationReadInvalidClientIdErrorMessageEnum_loginConfigurationReadInvalidClientIdError =
    const LoginConfigurationReadInvalidClientIdErrorMessageEnum._(
        'loginConfigurationReadInvalidClientIdError');

LoginConfigurationReadInvalidClientIdErrorMessageEnum
    _$loginConfigurationReadInvalidClientIdErrorMessageEnumValueOf(
        String name) {
  switch (name) {
    case 'loginConfigurationReadInvalidClientIdError':
      return _$loginConfigurationReadInvalidClientIdErrorMessageEnum_loginConfigurationReadInvalidClientIdError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LoginConfigurationReadInvalidClientIdErrorMessageEnum>
    _$loginConfigurationReadInvalidClientIdErrorMessageEnumValues = BuiltSet<
        LoginConfigurationReadInvalidClientIdErrorMessageEnum>(const <LoginConfigurationReadInvalidClientIdErrorMessageEnum>[
  _$loginConfigurationReadInvalidClientIdErrorMessageEnum_loginConfigurationReadInvalidClientIdError,
]);

const LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum
    _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum_number400 =
    const LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum._(
        'number400');

LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum
    _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumValueOf(
        String name) {
  switch (name) {
    case 'number400':
      return _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum>
    _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumValues =
    BuiltSet<
        LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum>(const <LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum>[
  _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum_number400,
]);

Serializer<LoginConfigurationReadInvalidClientIdErrorNameEnum>
    _$loginConfigurationReadInvalidClientIdErrorNameEnumSerializer =
    _$LoginConfigurationReadInvalidClientIdErrorNameEnumSerializer();
Serializer<LoginConfigurationReadInvalidClientIdErrorMessageEnum>
    _$loginConfigurationReadInvalidClientIdErrorMessageEnumSerializer =
    _$LoginConfigurationReadInvalidClientIdErrorMessageEnumSerializer();
Serializer<LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum>
    _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumSerializer =
    _$LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumSerializer();

class _$LoginConfigurationReadInvalidClientIdErrorNameEnumSerializer
    implements
        PrimitiveSerializer<
            LoginConfigurationReadInvalidClientIdErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'loginConfigurationReadInvalidClientIdError':
        'LoginConfigurationReadInvalidClientIdError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LoginConfigurationReadInvalidClientIdError':
        'loginConfigurationReadInvalidClientIdError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    LoginConfigurationReadInvalidClientIdErrorNameEnum
  ];
  @override
  final String wireName = 'LoginConfigurationReadInvalidClientIdErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          LoginConfigurationReadInvalidClientIdErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LoginConfigurationReadInvalidClientIdErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LoginConfigurationReadInvalidClientIdErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LoginConfigurationReadInvalidClientIdErrorMessageEnumSerializer
    implements
        PrimitiveSerializer<
            LoginConfigurationReadInvalidClientIdErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'loginConfigurationReadInvalidClientIdError':
        'LoginConfigurationReadInvalidClientIdError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LoginConfigurationReadInvalidClientIdError':
        'loginConfigurationReadInvalidClientIdError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    LoginConfigurationReadInvalidClientIdErrorMessageEnum
  ];
  @override
  final String wireName =
      'LoginConfigurationReadInvalidClientIdErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          LoginConfigurationReadInvalidClientIdErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LoginConfigurationReadInvalidClientIdErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LoginConfigurationReadInvalidClientIdErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<
            LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName =
      'LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LoginConfigurationReadInvalidClientIdError
    extends LoginConfigurationReadInvalidClientIdError {
  @override
  final LoginConfigurationReadInvalidClientIdErrorNameEnum name;
  @override
  final LoginConfigurationReadInvalidClientIdErrorMessageEnum message;
  @override
  final LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum
      httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$LoginConfigurationReadInvalidClientIdError(
          [void Function(LoginConfigurationReadInvalidClientIdErrorBuilder)?
              updates]) =>
      (LoginConfigurationReadInvalidClientIdErrorBuilder()..update(updates))
          ._build();

  _$LoginConfigurationReadInvalidClientIdError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  LoginConfigurationReadInvalidClientIdError rebuild(
          void Function(LoginConfigurationReadInvalidClientIdErrorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginConfigurationReadInvalidClientIdErrorBuilder toBuilder() =>
      LoginConfigurationReadInvalidClientIdErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginConfigurationReadInvalidClientIdError &&
        name == other.name &&
        message == other.message &&
        httpStatusCode == other.httpStatusCode &&
        traceId == other.traceId &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, httpStatusCode.hashCode);
    _$hash = $jc(_$hash, traceId.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'LoginConfigurationReadInvalidClientIdError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class LoginConfigurationReadInvalidClientIdErrorBuilder
    implements
        Builder<LoginConfigurationReadInvalidClientIdError,
            LoginConfigurationReadInvalidClientIdErrorBuilder> {
  _$LoginConfigurationReadInvalidClientIdError? _$v;

  LoginConfigurationReadInvalidClientIdErrorNameEnum? _name;
  LoginConfigurationReadInvalidClientIdErrorNameEnum? get name => _$this._name;
  set name(LoginConfigurationReadInvalidClientIdErrorNameEnum? name) =>
      _$this._name = name;

  LoginConfigurationReadInvalidClientIdErrorMessageEnum? _message;
  LoginConfigurationReadInvalidClientIdErrorMessageEnum? get message =>
      _$this._message;
  set message(LoginConfigurationReadInvalidClientIdErrorMessageEnum? message) =>
      _$this._message = message;

  LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum? _httpStatusCode;
  LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum?
      get httpStatusCode => _$this._httpStatusCode;
  set httpStatusCode(
          LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum?
              httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  LoginConfigurationReadInvalidClientIdErrorBuilder() {
    LoginConfigurationReadInvalidClientIdError._defaults(this);
  }

  LoginConfigurationReadInvalidClientIdErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _message = $v.message;
      _httpStatusCode = $v.httpStatusCode;
      _traceId = $v.traceId;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginConfigurationReadInvalidClientIdError other) {
    _$v = other as _$LoginConfigurationReadInvalidClientIdError;
  }

  @override
  void update(
      void Function(LoginConfigurationReadInvalidClientIdErrorBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginConfigurationReadInvalidClientIdError build() => _build();

  _$LoginConfigurationReadInvalidClientIdError _build() {
    _$LoginConfigurationReadInvalidClientIdError _$result;
    try {
      _$result = _$v ??
          _$LoginConfigurationReadInvalidClientIdError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'LoginConfigurationReadInvalidClientIdError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(message,
                r'LoginConfigurationReadInvalidClientIdError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'LoginConfigurationReadInvalidClientIdError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(traceId,
                r'LoginConfigurationReadInvalidClientIdError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LoginConfigurationReadInvalidClientIdError',
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
