// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_presentation_ldp_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignPresentationLdpResultDto extends SignPresentationLdpResultDto {
  @override
  final JsonObject presentation;

  factory _$SignPresentationLdpResultDto(
          [void Function(SignPresentationLdpResultDtoBuilder)? updates]) =>
      (SignPresentationLdpResultDtoBuilder()..update(updates))._build();

  _$SignPresentationLdpResultDto._({required this.presentation}) : super._();
  @override
  SignPresentationLdpResultDto rebuild(
          void Function(SignPresentationLdpResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignPresentationLdpResultDtoBuilder toBuilder() =>
      SignPresentationLdpResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignPresentationLdpResultDto &&
        presentation == other.presentation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, presentation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignPresentationLdpResultDto')
          ..add('presentation', presentation))
        .toString();
  }
}

class SignPresentationLdpResultDtoBuilder
    implements
        Builder<SignPresentationLdpResultDto,
            SignPresentationLdpResultDtoBuilder> {
  _$SignPresentationLdpResultDto? _$v;

  JsonObject? _presentation;
  JsonObject? get presentation => _$this._presentation;
  set presentation(JsonObject? presentation) =>
      _$this._presentation = presentation;

  SignPresentationLdpResultDtoBuilder() {
    SignPresentationLdpResultDto._defaults(this);
  }

  SignPresentationLdpResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _presentation = $v.presentation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignPresentationLdpResultDto other) {
    _$v = other as _$SignPresentationLdpResultDto;
  }

  @override
  void update(void Function(SignPresentationLdpResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignPresentationLdpResultDto build() => _build();

  _$SignPresentationLdpResultDto _build() {
    final _$result = _$v ??
        _$SignPresentationLdpResultDto._(
          presentation: BuiltValueNullFieldError.checkNotNull(
              presentation, r'SignPresentationLdpResultDto', 'presentation'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
