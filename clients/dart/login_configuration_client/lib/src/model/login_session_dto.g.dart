// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_session_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginSessionDto extends LoginSessionDto {
  @override
  final String id;
  @override
  final LoginSessionDtoAuthorizationRequest authorizationRequest;

  factory _$LoginSessionDto([void Function(LoginSessionDtoBuilder)? updates]) =>
      (new LoginSessionDtoBuilder()..update(updates))._build();

  _$LoginSessionDto._({required this.id, required this.authorizationRequest})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'LoginSessionDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        authorizationRequest, r'LoginSessionDto', 'authorizationRequest');
  }

  @override
  LoginSessionDto rebuild(void Function(LoginSessionDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginSessionDtoBuilder toBuilder() =>
      new LoginSessionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginSessionDto &&
        id == other.id &&
        authorizationRequest == other.authorizationRequest;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, authorizationRequest.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginSessionDto')
          ..add('id', id)
          ..add('authorizationRequest', authorizationRequest))
        .toString();
  }
}

class LoginSessionDtoBuilder
    implements Builder<LoginSessionDto, LoginSessionDtoBuilder> {
  _$LoginSessionDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  LoginSessionDtoAuthorizationRequestBuilder? _authorizationRequest;
  LoginSessionDtoAuthorizationRequestBuilder get authorizationRequest =>
      _$this._authorizationRequest ??=
          new LoginSessionDtoAuthorizationRequestBuilder();
  set authorizationRequest(
          LoginSessionDtoAuthorizationRequestBuilder? authorizationRequest) =>
      _$this._authorizationRequest = authorizationRequest;

  LoginSessionDtoBuilder() {
    LoginSessionDto._defaults(this);
  }

  LoginSessionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _authorizationRequest = $v.authorizationRequest.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginSessionDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginSessionDto;
  }

  @override
  void update(void Function(LoginSessionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginSessionDto build() => _build();

  _$LoginSessionDto _build() {
    _$LoginSessionDto _$result;
    try {
      _$result = _$v ??
          new _$LoginSessionDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'LoginSessionDto', 'id'),
            authorizationRequest: authorizationRequest.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authorizationRequest';
        authorizationRequest.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginSessionDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
