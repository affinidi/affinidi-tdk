// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_issuance_id_exist_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CredentialIssuanceIdExistErrorNameEnum
    _$credentialIssuanceIdExistErrorNameEnum_credentialIssuanceIdExistError =
    const CredentialIssuanceIdExistErrorNameEnum._(
        'credentialIssuanceIdExistError');

CredentialIssuanceIdExistErrorNameEnum
    _$credentialIssuanceIdExistErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'credentialIssuanceIdExistError':
      return _$credentialIssuanceIdExistErrorNameEnum_credentialIssuanceIdExistError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialIssuanceIdExistErrorNameEnum>
    _$credentialIssuanceIdExistErrorNameEnumValues = BuiltSet<
        CredentialIssuanceIdExistErrorNameEnum>(const <CredentialIssuanceIdExistErrorNameEnum>[
  _$credentialIssuanceIdExistErrorNameEnum_credentialIssuanceIdExistError,
]);

const CredentialIssuanceIdExistErrorMessageEnum
    _$credentialIssuanceIdExistErrorMessageEnum_issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId =
    const CredentialIssuanceIdExistErrorMessageEnum._(
        'issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId');

CredentialIssuanceIdExistErrorMessageEnum
    _$credentialIssuanceIdExistErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId':
      return _$credentialIssuanceIdExistErrorMessageEnum_issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialIssuanceIdExistErrorMessageEnum>
    _$credentialIssuanceIdExistErrorMessageEnumValues = BuiltSet<
        CredentialIssuanceIdExistErrorMessageEnum>(const <CredentialIssuanceIdExistErrorMessageEnum>[
  _$credentialIssuanceIdExistErrorMessageEnum_issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId,
]);

const CredentialIssuanceIdExistErrorHttpStatusCodeEnum
    _$credentialIssuanceIdExistErrorHttpStatusCodeEnum_number400 =
    const CredentialIssuanceIdExistErrorHttpStatusCodeEnum._('number400');

CredentialIssuanceIdExistErrorHttpStatusCodeEnum
    _$credentialIssuanceIdExistErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$credentialIssuanceIdExistErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialIssuanceIdExistErrorHttpStatusCodeEnum>
    _$credentialIssuanceIdExistErrorHttpStatusCodeEnumValues = BuiltSet<
        CredentialIssuanceIdExistErrorHttpStatusCodeEnum>(const <CredentialIssuanceIdExistErrorHttpStatusCodeEnum>[
  _$credentialIssuanceIdExistErrorHttpStatusCodeEnum_number400,
]);

Serializer<CredentialIssuanceIdExistErrorNameEnum>
    _$credentialIssuanceIdExistErrorNameEnumSerializer =
    _$CredentialIssuanceIdExistErrorNameEnumSerializer();
Serializer<CredentialIssuanceIdExistErrorMessageEnum>
    _$credentialIssuanceIdExistErrorMessageEnumSerializer =
    _$CredentialIssuanceIdExistErrorMessageEnumSerializer();
Serializer<CredentialIssuanceIdExistErrorHttpStatusCodeEnum>
    _$credentialIssuanceIdExistErrorHttpStatusCodeEnumSerializer =
    _$CredentialIssuanceIdExistErrorHttpStatusCodeEnumSerializer();

class _$CredentialIssuanceIdExistErrorNameEnumSerializer
    implements PrimitiveSerializer<CredentialIssuanceIdExistErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialIssuanceIdExistError': 'CredentialIssuanceIdExistError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CredentialIssuanceIdExistError': 'credentialIssuanceIdExistError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialIssuanceIdExistErrorNameEnum
  ];
  @override
  final String wireName = 'CredentialIssuanceIdExistErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialIssuanceIdExistErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialIssuanceIdExistErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialIssuanceIdExistErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialIssuanceIdExistErrorMessageEnumSerializer
    implements PrimitiveSerializer<CredentialIssuanceIdExistErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId':
        'issuanceId exist for the project, please use different issuanceId',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'issuanceId exist for the project, please use different issuanceId':
        'issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialIssuanceIdExistErrorMessageEnum
  ];
  @override
  final String wireName = 'CredentialIssuanceIdExistErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialIssuanceIdExistErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialIssuanceIdExistErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialIssuanceIdExistErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialIssuanceIdExistErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<CredentialIssuanceIdExistErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialIssuanceIdExistErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'CredentialIssuanceIdExistErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialIssuanceIdExistErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialIssuanceIdExistErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialIssuanceIdExistErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialIssuanceIdExistError extends CredentialIssuanceIdExistError {
  @override
  final CredentialIssuanceIdExistErrorNameEnum name;
  @override
  final CredentialIssuanceIdExistErrorMessageEnum message;
  @override
  final CredentialIssuanceIdExistErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$CredentialIssuanceIdExistError(
          [void Function(CredentialIssuanceIdExistErrorBuilder)? updates]) =>
      (CredentialIssuanceIdExistErrorBuilder()..update(updates))._build();

  _$CredentialIssuanceIdExistError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  CredentialIssuanceIdExistError rebuild(
          void Function(CredentialIssuanceIdExistErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialIssuanceIdExistErrorBuilder toBuilder() =>
      CredentialIssuanceIdExistErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialIssuanceIdExistError &&
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
    return (newBuiltValueToStringHelper(r'CredentialIssuanceIdExistError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class CredentialIssuanceIdExistErrorBuilder
    implements
        Builder<CredentialIssuanceIdExistError,
            CredentialIssuanceIdExistErrorBuilder> {
  _$CredentialIssuanceIdExistError? _$v;

  CredentialIssuanceIdExistErrorNameEnum? _name;
  CredentialIssuanceIdExistErrorNameEnum? get name => _$this._name;
  set name(CredentialIssuanceIdExistErrorNameEnum? name) => _$this._name = name;

  CredentialIssuanceIdExistErrorMessageEnum? _message;
  CredentialIssuanceIdExistErrorMessageEnum? get message => _$this._message;
  set message(CredentialIssuanceIdExistErrorMessageEnum? message) =>
      _$this._message = message;

  CredentialIssuanceIdExistErrorHttpStatusCodeEnum? _httpStatusCode;
  CredentialIssuanceIdExistErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          CredentialIssuanceIdExistErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  CredentialIssuanceIdExistErrorBuilder() {
    CredentialIssuanceIdExistError._defaults(this);
  }

  CredentialIssuanceIdExistErrorBuilder get _$this {
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
  void replace(CredentialIssuanceIdExistError other) {
    _$v = other as _$CredentialIssuanceIdExistError;
  }

  @override
  void update(void Function(CredentialIssuanceIdExistErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialIssuanceIdExistError build() => _build();

  _$CredentialIssuanceIdExistError _build() {
    _$CredentialIssuanceIdExistError _$result;
    try {
      _$result = _$v ??
          _$CredentialIssuanceIdExistError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CredentialIssuanceIdExistError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CredentialIssuanceIdExistError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'CredentialIssuanceIdExistError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'CredentialIssuanceIdExistError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialIssuanceIdExistError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
