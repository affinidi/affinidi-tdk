// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_access_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccessOutput extends UpdateAccessOutput {
  @override
  final bool success;

  factory _$UpdateAccessOutput(
          [void Function(UpdateAccessOutputBuilder)? updates]) =>
      (new UpdateAccessOutputBuilder()..update(updates))._build();

  _$UpdateAccessOutput._({required this.success}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        success, r'UpdateAccessOutput', 'success');
  }

  @override
  UpdateAccessOutput rebuild(
          void Function(UpdateAccessOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccessOutputBuilder toBuilder() =>
      new UpdateAccessOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccessOutput && success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAccessOutput')
          ..add('success', success))
        .toString();
  }
}

class UpdateAccessOutputBuilder
    implements Builder<UpdateAccessOutput, UpdateAccessOutputBuilder> {
  _$UpdateAccessOutput? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  UpdateAccessOutputBuilder() {
    UpdateAccessOutput._defaults(this);
  }

  UpdateAccessOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccessOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccessOutput;
  }

  @override
  void update(void Function(UpdateAccessOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccessOutput build() => _build();

  _$UpdateAccessOutput _build() {
    final _$result = _$v ??
        new _$UpdateAccessOutput._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'UpdateAccessOutput', 'success'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
