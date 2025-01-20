// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_presentation_output_errors.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyPresentationOutputErrors extends VerifyPresentationOutputErrors {
  @override
  final AnyOf anyOf;

  factory _$VerifyPresentationOutputErrors(
          [void Function(VerifyPresentationOutputErrorsBuilder)? updates]) =>
      (new VerifyPresentationOutputErrorsBuilder()..update(updates))._build();

  _$VerifyPresentationOutputErrors._({required this.anyOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        anyOf, r'VerifyPresentationOutputErrors', 'anyOf');
  }

  @override
  VerifyPresentationOutputErrors rebuild(
          void Function(VerifyPresentationOutputErrorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyPresentationOutputErrorsBuilder toBuilder() =>
      new VerifyPresentationOutputErrorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyPresentationOutputErrors && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyPresentationOutputErrors')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class VerifyPresentationOutputErrorsBuilder
    implements
        Builder<VerifyPresentationOutputErrors,
            VerifyPresentationOutputErrorsBuilder> {
  _$VerifyPresentationOutputErrors? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  VerifyPresentationOutputErrorsBuilder() {
    VerifyPresentationOutputErrors._defaults(this);
  }

  VerifyPresentationOutputErrorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyPresentationOutputErrors other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyPresentationOutputErrors;
  }

  @override
  void update(void Function(VerifyPresentationOutputErrorsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyPresentationOutputErrors build() => _build();

  _$VerifyPresentationOutputErrors _build() {
    final _$result = _$v ??
        new _$VerifyPresentationOutputErrors._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'VerifyPresentationOutputErrors', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
