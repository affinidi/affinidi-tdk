// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Error extends Error {
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final String? message;
  @override
  final String? name;
  @override
  final String? debugId;
  @override
  final BuiltList<ErrorDetail>? details;

  factory _$Error([void Function(ErrorBuilder)? updates]) =>
      (ErrorBuilder()..update(updates))._build();

  _$Error._(
      {this.errorCode,
      this.errorMessage,
      this.message,
      this.name,
      this.debugId,
      this.details})
      : super._();
  @override
  Error rebuild(void Function(ErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorBuilder toBuilder() => ErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Error &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        message == other.message &&
        name == other.name &&
        debugId == other.debugId &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, debugId.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Error')
          ..add('errorCode', errorCode)
          ..add('errorMessage', errorMessage)
          ..add('message', message)
          ..add('name', name)
          ..add('debugId', debugId)
          ..add('details', details))
        .toString();
  }
}

class ErrorBuilder implements Builder<Error, ErrorBuilder> {
  _$Error? _$v;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _debugId;
  String? get debugId => _$this._debugId;
  set debugId(String? debugId) => _$this._debugId = debugId;

  ListBuilder<ErrorDetail>? _details;
  ListBuilder<ErrorDetail> get details =>
      _$this._details ??= ListBuilder<ErrorDetail>();
  set details(ListBuilder<ErrorDetail>? details) => _$this._details = details;

  ErrorBuilder() {
    Error._defaults(this);
  }

  ErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _message = $v.message;
      _name = $v.name;
      _debugId = $v.debugId;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Error other) {
    _$v = other as _$Error;
  }

  @override
  void update(void Function(ErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Error build() => _build();

  _$Error _build() {
    _$Error _$result;
    try {
      _$result = _$v ??
          _$Error._(
            errorCode: errorCode,
            errorMessage: errorMessage,
            message: message,
            name: name,
            debugId: debugId,
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Error', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
