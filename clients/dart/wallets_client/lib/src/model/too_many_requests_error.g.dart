// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'too_many_requests_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TooManyRequestsErrorNameEnum
    _$tooManyRequestsErrorNameEnum_tooManyRequestsError =
    const TooManyRequestsErrorNameEnum._('tooManyRequestsError');

TooManyRequestsErrorNameEnum _$tooManyRequestsErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'tooManyRequestsError':
      return _$tooManyRequestsErrorNameEnum_tooManyRequestsError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TooManyRequestsErrorNameEnum>
    _$tooManyRequestsErrorNameEnumValues =
    BuiltSet<TooManyRequestsErrorNameEnum>(const <TooManyRequestsErrorNameEnum>[
  _$tooManyRequestsErrorNameEnum_tooManyRequestsError,
]);

const TooManyRequestsErrorMessageEnum
    _$tooManyRequestsErrorMessageEnum_tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod =
    const TooManyRequestsErrorMessageEnum._(
        'tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod');

TooManyRequestsErrorMessageEnum _$tooManyRequestsErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod':
      return _$tooManyRequestsErrorMessageEnum_tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TooManyRequestsErrorMessageEnum>
    _$tooManyRequestsErrorMessageEnumValues = BuiltSet<
        TooManyRequestsErrorMessageEnum>(const <TooManyRequestsErrorMessageEnum>[
  _$tooManyRequestsErrorMessageEnum_tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod,
]);

const TooManyRequestsErrorHttpStatusCodeEnum
    _$tooManyRequestsErrorHttpStatusCodeEnum_number429 =
    const TooManyRequestsErrorHttpStatusCodeEnum._('number429');

TooManyRequestsErrorHttpStatusCodeEnum
    _$tooManyRequestsErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number429':
      return _$tooManyRequestsErrorHttpStatusCodeEnum_number429;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TooManyRequestsErrorHttpStatusCodeEnum>
    _$tooManyRequestsErrorHttpStatusCodeEnumValues = BuiltSet<
        TooManyRequestsErrorHttpStatusCodeEnum>(const <TooManyRequestsErrorHttpStatusCodeEnum>[
  _$tooManyRequestsErrorHttpStatusCodeEnum_number429,
]);

Serializer<TooManyRequestsErrorNameEnum>
    _$tooManyRequestsErrorNameEnumSerializer =
    _$TooManyRequestsErrorNameEnumSerializer();
Serializer<TooManyRequestsErrorMessageEnum>
    _$tooManyRequestsErrorMessageEnumSerializer =
    _$TooManyRequestsErrorMessageEnumSerializer();
Serializer<TooManyRequestsErrorHttpStatusCodeEnum>
    _$tooManyRequestsErrorHttpStatusCodeEnumSerializer =
    _$TooManyRequestsErrorHttpStatusCodeEnumSerializer();

class _$TooManyRequestsErrorNameEnumSerializer
    implements PrimitiveSerializer<TooManyRequestsErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tooManyRequestsError': 'TooManyRequestsError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TooManyRequestsError': 'tooManyRequestsError',
  };

  @override
  final Iterable<Type> types = const <Type>[TooManyRequestsErrorNameEnum];
  @override
  final String wireName = 'TooManyRequestsErrorNameEnum';

  @override
  Object serialize(Serializers serializers, TooManyRequestsErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TooManyRequestsErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TooManyRequestsErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TooManyRequestsErrorMessageEnumSerializer
    implements PrimitiveSerializer<TooManyRequestsErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod':
        'Too many concurrent requests to the same wallet. The operation failed after multiple retry attempts due to concurrent updates. Please retry your request after a short delay.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Too many concurrent requests to the same wallet. The operation failed after multiple retry attempts due to concurrent updates. Please retry your request after a short delay.':
        'tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[TooManyRequestsErrorMessageEnum];
  @override
  final String wireName = 'TooManyRequestsErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, TooManyRequestsErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TooManyRequestsErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TooManyRequestsErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TooManyRequestsErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<TooManyRequestsErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number429': 429,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    429: 'number429',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TooManyRequestsErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'TooManyRequestsErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          TooManyRequestsErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TooManyRequestsErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TooManyRequestsErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TooManyRequestsError extends TooManyRequestsError {
  @override
  final TooManyRequestsErrorNameEnum name;
  @override
  final TooManyRequestsErrorMessageEnum message;
  @override
  final TooManyRequestsErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$TooManyRequestsError(
          [void Function(TooManyRequestsErrorBuilder)? updates]) =>
      (TooManyRequestsErrorBuilder()..update(updates))._build();

  _$TooManyRequestsError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  TooManyRequestsError rebuild(
          void Function(TooManyRequestsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TooManyRequestsErrorBuilder toBuilder() =>
      TooManyRequestsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TooManyRequestsError &&
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
    return (newBuiltValueToStringHelper(r'TooManyRequestsError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class TooManyRequestsErrorBuilder
    implements Builder<TooManyRequestsError, TooManyRequestsErrorBuilder> {
  _$TooManyRequestsError? _$v;

  TooManyRequestsErrorNameEnum? _name;
  TooManyRequestsErrorNameEnum? get name => _$this._name;
  set name(TooManyRequestsErrorNameEnum? name) => _$this._name = name;

  TooManyRequestsErrorMessageEnum? _message;
  TooManyRequestsErrorMessageEnum? get message => _$this._message;
  set message(TooManyRequestsErrorMessageEnum? message) =>
      _$this._message = message;

  TooManyRequestsErrorHttpStatusCodeEnum? _httpStatusCode;
  TooManyRequestsErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(TooManyRequestsErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  TooManyRequestsErrorBuilder() {
    TooManyRequestsError._defaults(this);
  }

  TooManyRequestsErrorBuilder get _$this {
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
  void replace(TooManyRequestsError other) {
    _$v = other as _$TooManyRequestsError;
  }

  @override
  void update(void Function(TooManyRequestsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TooManyRequestsError build() => _build();

  _$TooManyRequestsError _build() {
    _$TooManyRequestsError _$result;
    try {
      _$result = _$v ??
          _$TooManyRequestsError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'TooManyRequestsError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'TooManyRequestsError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'TooManyRequestsError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'TooManyRequestsError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TooManyRequestsError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
