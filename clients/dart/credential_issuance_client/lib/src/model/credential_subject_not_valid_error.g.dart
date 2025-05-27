// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_subject_not_valid_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CredentialSubjectNotValidErrorNameEnum
    _$credentialSubjectNotValidErrorNameEnum_credentialSubjectNotValidError =
    const CredentialSubjectNotValidErrorNameEnum._(
        'credentialSubjectNotValidError');

CredentialSubjectNotValidErrorNameEnum
    _$credentialSubjectNotValidErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'credentialSubjectNotValidError':
      return _$credentialSubjectNotValidErrorNameEnum_credentialSubjectNotValidError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialSubjectNotValidErrorNameEnum>
    _$credentialSubjectNotValidErrorNameEnumValues = BuiltSet<
        CredentialSubjectNotValidErrorNameEnum>(const <CredentialSubjectNotValidErrorNameEnum>[
  _$credentialSubjectNotValidErrorNameEnum_credentialSubjectNotValidError,
]);

const CredentialSubjectNotValidErrorMessageEnum
    _$credentialSubjectNotValidErrorMessageEnum_credentialSubjectIsNotAccordingToTheVcSchema =
    const CredentialSubjectNotValidErrorMessageEnum._(
        'credentialSubjectIsNotAccordingToTheVcSchema');

CredentialSubjectNotValidErrorMessageEnum
    _$credentialSubjectNotValidErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'credentialSubjectIsNotAccordingToTheVcSchema':
      return _$credentialSubjectNotValidErrorMessageEnum_credentialSubjectIsNotAccordingToTheVcSchema;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialSubjectNotValidErrorMessageEnum>
    _$credentialSubjectNotValidErrorMessageEnumValues = BuiltSet<
        CredentialSubjectNotValidErrorMessageEnum>(const <CredentialSubjectNotValidErrorMessageEnum>[
  _$credentialSubjectNotValidErrorMessageEnum_credentialSubjectIsNotAccordingToTheVcSchema,
]);

const CredentialSubjectNotValidErrorHttpStatusCodeEnum
    _$credentialSubjectNotValidErrorHttpStatusCodeEnum_number400 =
    const CredentialSubjectNotValidErrorHttpStatusCodeEnum._('number400');

CredentialSubjectNotValidErrorHttpStatusCodeEnum
    _$credentialSubjectNotValidErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$credentialSubjectNotValidErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialSubjectNotValidErrorHttpStatusCodeEnum>
    _$credentialSubjectNotValidErrorHttpStatusCodeEnumValues = BuiltSet<
        CredentialSubjectNotValidErrorHttpStatusCodeEnum>(const <CredentialSubjectNotValidErrorHttpStatusCodeEnum>[
  _$credentialSubjectNotValidErrorHttpStatusCodeEnum_number400,
]);

Serializer<CredentialSubjectNotValidErrorNameEnum>
    _$credentialSubjectNotValidErrorNameEnumSerializer =
    _$CredentialSubjectNotValidErrorNameEnumSerializer();
Serializer<CredentialSubjectNotValidErrorMessageEnum>
    _$credentialSubjectNotValidErrorMessageEnumSerializer =
    _$CredentialSubjectNotValidErrorMessageEnumSerializer();
Serializer<CredentialSubjectNotValidErrorHttpStatusCodeEnum>
    _$credentialSubjectNotValidErrorHttpStatusCodeEnumSerializer =
    _$CredentialSubjectNotValidErrorHttpStatusCodeEnumSerializer();

class _$CredentialSubjectNotValidErrorNameEnumSerializer
    implements PrimitiveSerializer<CredentialSubjectNotValidErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialSubjectNotValidError': 'CredentialSubjectNotValidError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CredentialSubjectNotValidError': 'credentialSubjectNotValidError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialSubjectNotValidErrorNameEnum
  ];
  @override
  final String wireName = 'CredentialSubjectNotValidErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialSubjectNotValidErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialSubjectNotValidErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialSubjectNotValidErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialSubjectNotValidErrorMessageEnumSerializer
    implements PrimitiveSerializer<CredentialSubjectNotValidErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialSubjectIsNotAccordingToTheVcSchema':
        'Credential subject is not according to the vc schema',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Credential subject is not according to the vc schema':
        'credentialSubjectIsNotAccordingToTheVcSchema',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialSubjectNotValidErrorMessageEnum
  ];
  @override
  final String wireName = 'CredentialSubjectNotValidErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialSubjectNotValidErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialSubjectNotValidErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialSubjectNotValidErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialSubjectNotValidErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<CredentialSubjectNotValidErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialSubjectNotValidErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'CredentialSubjectNotValidErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialSubjectNotValidErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialSubjectNotValidErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialSubjectNotValidErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialSubjectNotValidError extends CredentialSubjectNotValidError {
  @override
  final CredentialSubjectNotValidErrorNameEnum name;
  @override
  final CredentialSubjectNotValidErrorMessageEnum message;
  @override
  final CredentialSubjectNotValidErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$CredentialSubjectNotValidError(
          [void Function(CredentialSubjectNotValidErrorBuilder)? updates]) =>
      (CredentialSubjectNotValidErrorBuilder()..update(updates))._build();

  _$CredentialSubjectNotValidError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  CredentialSubjectNotValidError rebuild(
          void Function(CredentialSubjectNotValidErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialSubjectNotValidErrorBuilder toBuilder() =>
      CredentialSubjectNotValidErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialSubjectNotValidError &&
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
    return (newBuiltValueToStringHelper(r'CredentialSubjectNotValidError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class CredentialSubjectNotValidErrorBuilder
    implements
        Builder<CredentialSubjectNotValidError,
            CredentialSubjectNotValidErrorBuilder> {
  _$CredentialSubjectNotValidError? _$v;

  CredentialSubjectNotValidErrorNameEnum? _name;
  CredentialSubjectNotValidErrorNameEnum? get name => _$this._name;
  set name(CredentialSubjectNotValidErrorNameEnum? name) => _$this._name = name;

  CredentialSubjectNotValidErrorMessageEnum? _message;
  CredentialSubjectNotValidErrorMessageEnum? get message => _$this._message;
  set message(CredentialSubjectNotValidErrorMessageEnum? message) =>
      _$this._message = message;

  CredentialSubjectNotValidErrorHttpStatusCodeEnum? _httpStatusCode;
  CredentialSubjectNotValidErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          CredentialSubjectNotValidErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  CredentialSubjectNotValidErrorBuilder() {
    CredentialSubjectNotValidError._defaults(this);
  }

  CredentialSubjectNotValidErrorBuilder get _$this {
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
  void replace(CredentialSubjectNotValidError other) {
    _$v = other as _$CredentialSubjectNotValidError;
  }

  @override
  void update(void Function(CredentialSubjectNotValidErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialSubjectNotValidError build() => _build();

  _$CredentialSubjectNotValidError _build() {
    _$CredentialSubjectNotValidError _$result;
    try {
      _$result = _$v ??
          _$CredentialSubjectNotValidError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CredentialSubjectNotValidError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CredentialSubjectNotValidError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'CredentialSubjectNotValidError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'CredentialSubjectNotValidError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialSubjectNotValidError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
