// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluate_vp_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EvaluateVpOutput extends EvaluateVpOutput {
  @override
  final bool result;
  @override
  final BuiltList<String> errors;

  factory _$EvaluateVpOutput(
          [void Function(EvaluateVpOutputBuilder)? updates]) =>
      (EvaluateVpOutputBuilder()..update(updates))._build();

  _$EvaluateVpOutput._({required this.result, required this.errors})
      : super._();
  @override
  EvaluateVpOutput rebuild(void Function(EvaluateVpOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EvaluateVpOutputBuilder toBuilder() =>
      EvaluateVpOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EvaluateVpOutput &&
        result == other.result &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EvaluateVpOutput')
          ..add('result', result)
          ..add('errors', errors))
        .toString();
  }
}

class EvaluateVpOutputBuilder
    implements Builder<EvaluateVpOutput, EvaluateVpOutputBuilder> {
  _$EvaluateVpOutput? _$v;

  bool? _result;
  bool? get result => _$this._result;
  set result(bool? result) => _$this._result = result;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors => _$this._errors ??= ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  EvaluateVpOutputBuilder() {
    EvaluateVpOutput._defaults(this);
  }

  EvaluateVpOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _errors = $v.errors.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EvaluateVpOutput other) {
    _$v = other as _$EvaluateVpOutput;
  }

  @override
  void update(void Function(EvaluateVpOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EvaluateVpOutput build() => _build();

  _$EvaluateVpOutput _build() {
    _$EvaluateVpOutput _$result;
    try {
      _$result = _$v ??
          _$EvaluateVpOutput._(
            result: BuiltValueNullFieldError.checkNotNull(
                result, r'EvaluateVpOutput', 'result'),
            errors: errors.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EvaluateVpOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
