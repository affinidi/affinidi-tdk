// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_message_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignMessageResultDto extends SignMessageResultDto {
  @override
  final JsonObject signedMessage;

  factory _$SignMessageResultDto(
          [void Function(SignMessageResultDtoBuilder)? updates]) =>
      (SignMessageResultDtoBuilder()..update(updates))._build();

  _$SignMessageResultDto._({required this.signedMessage}) : super._();
  @override
  SignMessageResultDto rebuild(
          void Function(SignMessageResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignMessageResultDtoBuilder toBuilder() =>
      SignMessageResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignMessageResultDto &&
        signedMessage == other.signedMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signedMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignMessageResultDto')
          ..add('signedMessage', signedMessage))
        .toString();
  }
}

class SignMessageResultDtoBuilder
    implements Builder<SignMessageResultDto, SignMessageResultDtoBuilder> {
  _$SignMessageResultDto? _$v;

  JsonObject? _signedMessage;
  JsonObject? get signedMessage => _$this._signedMessage;
  set signedMessage(JsonObject? signedMessage) =>
      _$this._signedMessage = signedMessage;

  SignMessageResultDtoBuilder() {
    SignMessageResultDto._defaults(this);
  }

  SignMessageResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signedMessage = $v.signedMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignMessageResultDto other) {
    _$v = other as _$SignMessageResultDto;
  }

  @override
  void update(void Function(SignMessageResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignMessageResultDto build() => _build();

  _$SignMessageResultDto _build() {
    final _$result = _$v ??
        _$SignMessageResultDto._(
          signedMessage: BuiltValueNullFieldError.checkNotNull(
              signedMessage, r'SignMessageResultDto', 'signedMessage'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
