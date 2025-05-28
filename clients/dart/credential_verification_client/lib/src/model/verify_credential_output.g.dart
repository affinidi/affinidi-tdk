// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_credential_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyCredentialOutput extends VerifyCredentialOutput {
  @override
  final BuiltList<String> errors;
  @override
  final bool isValid;

  factory _$VerifyCredentialOutput(
          [void Function(VerifyCredentialOutputBuilder)? updates]) =>
      (VerifyCredentialOutputBuilder()..update(updates))._build();

  _$VerifyCredentialOutput._({required this.errors, required this.isValid})
      : super._();
  @override
  VerifyCredentialOutput rebuild(
          void Function(VerifyCredentialOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyCredentialOutputBuilder toBuilder() =>
      VerifyCredentialOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyCredentialOutput &&
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
    return (newBuiltValueToStringHelper(r'VerifyCredentialOutput')
          ..add('errors', errors)
          ..add('isValid', isValid))
        .toString();
  }
}

class VerifyCredentialOutputBuilder
    implements Builder<VerifyCredentialOutput, VerifyCredentialOutputBuilder> {
  _$VerifyCredentialOutput? _$v;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors => _$this._errors ??= ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  bool? _isValid;
  bool? get isValid => _$this._isValid;
  set isValid(bool? isValid) => _$this._isValid = isValid;

  VerifyCredentialOutputBuilder() {
    VerifyCredentialOutput._defaults(this);
  }

  VerifyCredentialOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errors = $v.errors.toBuilder();
      _isValid = $v.isValid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyCredentialOutput other) {
    _$v = other as _$VerifyCredentialOutput;
  }

  @override
  void update(void Function(VerifyCredentialOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyCredentialOutput build() => _build();

  _$VerifyCredentialOutput _build() {
    _$VerifyCredentialOutput _$result;
    try {
      _$result = _$v ??
          _$VerifyCredentialOutput._(
            errors: errors.build(),
            isValid: BuiltValueNullFieldError.checkNotNull(
                isValid, r'VerifyCredentialOutput', 'isValid'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VerifyCredentialOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
