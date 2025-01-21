// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorDetail extends ErrorDetail {
  @override
  final String? message;

  factory _$ErrorDetail([void Function(ErrorDetailBuilder)? updates]) =>
      (new ErrorDetailBuilder()..update(updates))._build();

  _$ErrorDetail._({this.message}) : super._();

  @override
  ErrorDetail rebuild(void Function(ErrorDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorDetailBuilder toBuilder() => new ErrorDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorDetail && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorDetail')
          ..add('message', message))
        .toString();
  }
}

class ErrorDetailBuilder implements Builder<ErrorDetail, ErrorDetailBuilder> {
  _$ErrorDetail? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ErrorDetailBuilder() {
    ErrorDetail._defaults(this);
  }

  ErrorDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorDetail;
  }

  @override
  void update(void Function(ErrorDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorDetail build() => _build();

  _$ErrorDetail _build() {
    final _$result = _$v ??
        new _$ErrorDetail._(
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
