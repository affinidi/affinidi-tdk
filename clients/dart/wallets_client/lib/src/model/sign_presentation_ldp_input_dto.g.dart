// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_presentation_ldp_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignPresentationLdpInputDto extends SignPresentationLdpInputDto {
  @override
  final JsonObject unsignedPresentation;

  factory _$SignPresentationLdpInputDto(
          [void Function(SignPresentationLdpInputDtoBuilder)? updates]) =>
      (SignPresentationLdpInputDtoBuilder()..update(updates))._build();

  _$SignPresentationLdpInputDto._({required this.unsignedPresentation})
      : super._();
  @override
  SignPresentationLdpInputDto rebuild(
          void Function(SignPresentationLdpInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignPresentationLdpInputDtoBuilder toBuilder() =>
      SignPresentationLdpInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignPresentationLdpInputDto &&
        unsignedPresentation == other.unsignedPresentation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsignedPresentation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignPresentationLdpInputDto')
          ..add('unsignedPresentation', unsignedPresentation))
        .toString();
  }
}

class SignPresentationLdpInputDtoBuilder
    implements
        Builder<SignPresentationLdpInputDto,
            SignPresentationLdpInputDtoBuilder> {
  _$SignPresentationLdpInputDto? _$v;

  JsonObject? _unsignedPresentation;
  JsonObject? get unsignedPresentation => _$this._unsignedPresentation;
  set unsignedPresentation(JsonObject? unsignedPresentation) =>
      _$this._unsignedPresentation = unsignedPresentation;

  SignPresentationLdpInputDtoBuilder() {
    SignPresentationLdpInputDto._defaults(this);
  }

  SignPresentationLdpInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedPresentation = $v.unsignedPresentation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignPresentationLdpInputDto other) {
    _$v = other as _$SignPresentationLdpInputDto;
  }

  @override
  void update(void Function(SignPresentationLdpInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignPresentationLdpInputDto build() => _build();

  _$SignPresentationLdpInputDto _build() {
    final _$result = _$v ??
        _$SignPresentationLdpInputDto._(
          unsignedPresentation: BuiltValueNullFieldError.checkNotNull(
              unsignedPresentation,
              r'SignPresentationLdpInputDto',
              'unsignedPresentation'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
