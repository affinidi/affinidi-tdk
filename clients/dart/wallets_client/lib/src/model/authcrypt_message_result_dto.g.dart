// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authcrypt_message_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthcryptMessageResultDto extends AuthcryptMessageResultDto {
  @override
  final JsonObject authcryptedMessage;

  factory _$AuthcryptMessageResultDto(
          [void Function(AuthcryptMessageResultDtoBuilder)? updates]) =>
      (AuthcryptMessageResultDtoBuilder()..update(updates))._build();

  _$AuthcryptMessageResultDto._({required this.authcryptedMessage}) : super._();
  @override
  AuthcryptMessageResultDto rebuild(
          void Function(AuthcryptMessageResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthcryptMessageResultDtoBuilder toBuilder() =>
      AuthcryptMessageResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthcryptMessageResultDto &&
        authcryptedMessage == other.authcryptedMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authcryptedMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthcryptMessageResultDto')
          ..add('authcryptedMessage', authcryptedMessage))
        .toString();
  }
}

class AuthcryptMessageResultDtoBuilder
    implements
        Builder<AuthcryptMessageResultDto, AuthcryptMessageResultDtoBuilder> {
  _$AuthcryptMessageResultDto? _$v;

  JsonObject? _authcryptedMessage;
  JsonObject? get authcryptedMessage => _$this._authcryptedMessage;
  set authcryptedMessage(JsonObject? authcryptedMessage) =>
      _$this._authcryptedMessage = authcryptedMessage;

  AuthcryptMessageResultDtoBuilder() {
    AuthcryptMessageResultDto._defaults(this);
  }

  AuthcryptMessageResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authcryptedMessage = $v.authcryptedMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthcryptMessageResultDto other) {
    _$v = other as _$AuthcryptMessageResultDto;
  }

  @override
  void update(void Function(AuthcryptMessageResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthcryptMessageResultDto build() => _build();

  _$AuthcryptMessageResultDto _build() {
    final _$result = _$v ??
        _$AuthcryptMessageResultDto._(
          authcryptedMessage: BuiltValueNullFieldError.checkNotNull(
              authcryptedMessage,
              r'AuthcryptMessageResultDto',
              'authcryptedMessage'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
