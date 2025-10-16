// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_session_dto_authorization_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginSessionDtoAuthorizationRequest
    extends LoginSessionDtoAuthorizationRequest {
  @override
  final OneOf oneOf;

  factory _$LoginSessionDtoAuthorizationRequest(
          [void Function(LoginSessionDtoAuthorizationRequestBuilder)?
              updates]) =>
      (LoginSessionDtoAuthorizationRequestBuilder()..update(updates))._build();

  _$LoginSessionDtoAuthorizationRequest._({required this.oneOf}) : super._();
  @override
  LoginSessionDtoAuthorizationRequest rebuild(
          void Function(LoginSessionDtoAuthorizationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginSessionDtoAuthorizationRequestBuilder toBuilder() =>
      LoginSessionDtoAuthorizationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginSessionDtoAuthorizationRequest && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'LoginSessionDtoAuthorizationRequest')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class LoginSessionDtoAuthorizationRequestBuilder
    implements
        Builder<LoginSessionDtoAuthorizationRequest,
            LoginSessionDtoAuthorizationRequestBuilder> {
  _$LoginSessionDtoAuthorizationRequest? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  LoginSessionDtoAuthorizationRequestBuilder() {
    LoginSessionDtoAuthorizationRequest._defaults(this);
  }

  LoginSessionDtoAuthorizationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginSessionDtoAuthorizationRequest other) {
    _$v = other as _$LoginSessionDtoAuthorizationRequest;
  }

  @override
  void update(
      void Function(LoginSessionDtoAuthorizationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginSessionDtoAuthorizationRequest build() => _build();

  _$LoginSessionDtoAuthorizationRequest _build() {
    final _$result = _$v ??
        _$LoginSessionDtoAuthorizationRequest._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'LoginSessionDtoAuthorizationRequest', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
