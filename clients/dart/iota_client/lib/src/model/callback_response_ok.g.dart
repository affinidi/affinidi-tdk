// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback_response_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CallbackResponseOK extends CallbackResponseOK {
  @override
  final String? redirectUri;
  @override
  final String? responseCode;
  @override
  final String message;

  factory _$CallbackResponseOK(
          [void Function(CallbackResponseOKBuilder)? updates]) =>
      (new CallbackResponseOKBuilder()..update(updates))._build();

  _$CallbackResponseOK._(
      {this.redirectUri, this.responseCode, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        message, r'CallbackResponseOK', 'message');
  }

  @override
  CallbackResponseOK rebuild(
          void Function(CallbackResponseOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CallbackResponseOKBuilder toBuilder() =>
      new CallbackResponseOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CallbackResponseOK &&
        redirectUri == other.redirectUri &&
        responseCode == other.responseCode &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, redirectUri.hashCode);
    _$hash = $jc(_$hash, responseCode.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CallbackResponseOK')
          ..add('redirectUri', redirectUri)
          ..add('responseCode', responseCode)
          ..add('message', message))
        .toString();
  }
}

class CallbackResponseOKBuilder
    implements Builder<CallbackResponseOK, CallbackResponseOKBuilder> {
  _$CallbackResponseOK? _$v;

  String? _redirectUri;
  String? get redirectUri => _$this._redirectUri;
  set redirectUri(String? redirectUri) => _$this._redirectUri = redirectUri;

  String? _responseCode;
  String? get responseCode => _$this._responseCode;
  set responseCode(String? responseCode) => _$this._responseCode = responseCode;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CallbackResponseOKBuilder() {
    CallbackResponseOK._defaults(this);
  }

  CallbackResponseOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _redirectUri = $v.redirectUri;
      _responseCode = $v.responseCode;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CallbackResponseOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CallbackResponseOK;
  }

  @override
  void update(void Function(CallbackResponseOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CallbackResponseOK build() => _build();

  _$CallbackResponseOK _build() {
    final _$result = _$v ??
        new _$CallbackResponseOK._(
          redirectUri: redirectUri,
          responseCode: responseCode,
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'CallbackResponseOK', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
