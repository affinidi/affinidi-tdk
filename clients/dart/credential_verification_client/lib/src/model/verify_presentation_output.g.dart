// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_presentation_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyPresentationOutput extends VerifyPresentationOutput {
  @override
  final VerifyPresentationOutputErrors errors;
  @override
  final bool isValid;

  factory _$VerifyPresentationOutput(
          [void Function(VerifyPresentationOutputBuilder)? updates]) =>
      (new VerifyPresentationOutputBuilder()..update(updates))._build();

  _$VerifyPresentationOutput._({required this.errors, required this.isValid})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        errors, r'VerifyPresentationOutput', 'errors');
    BuiltValueNullFieldError.checkNotNull(
        isValid, r'VerifyPresentationOutput', 'isValid');
  }

  @override
  VerifyPresentationOutput rebuild(
          void Function(VerifyPresentationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyPresentationOutputBuilder toBuilder() =>
      new VerifyPresentationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyPresentationOutput &&
        errors == other.errors &&
        isValid == other.isValid;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, isValid.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyPresentationOutput')
          ..add('errors', errors)
          ..add('isValid', isValid))
        .toString();
  }
}

class VerifyPresentationOutputBuilder
    implements
        Builder<VerifyPresentationOutput, VerifyPresentationOutputBuilder> {
  _$VerifyPresentationOutput? _$v;

  VerifyPresentationOutputErrorsBuilder? _errors;
  VerifyPresentationOutputErrorsBuilder get errors =>
      _$this._errors ??= new VerifyPresentationOutputErrorsBuilder();
  set errors(VerifyPresentationOutputErrorsBuilder? errors) =>
      _$this._errors = errors;

  bool? _isValid;
  bool? get isValid => _$this._isValid;
  set isValid(bool? isValid) => _$this._isValid = isValid;

  VerifyPresentationOutputBuilder() {
    VerifyPresentationOutput._defaults(this);
  }

  VerifyPresentationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors.toBuilder();
      _isValid = $v.isValid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyPresentationOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyPresentationOutput;
  }

  @override
  void update(void Function(VerifyPresentationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyPresentationOutput build() => _build();

  _$VerifyPresentationOutput _build() {
    _$VerifyPresentationOutput _$result;
    try {
      _$result = _$v ??
          new _$VerifyPresentationOutput._(
            errors: errors.build(),
            isValid: BuiltValueNullFieldError.checkNotNull(
                isValid, r'VerifyPresentationOutput', 'isValid'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VerifyPresentationOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
