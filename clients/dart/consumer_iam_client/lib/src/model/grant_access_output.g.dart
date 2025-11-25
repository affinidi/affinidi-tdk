// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grant_access_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GrantAccessOutput extends GrantAccessOutput {
  @override
  final bool success;
  @override
  final String? grantId;

  factory _$GrantAccessOutput(
          [void Function(GrantAccessOutputBuilder)? updates]) =>
      (GrantAccessOutputBuilder()..update(updates))._build();

  _$GrantAccessOutput._({required this.success, this.grantId}) : super._();
  @override
  GrantAccessOutput rebuild(void Function(GrantAccessOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrantAccessOutputBuilder toBuilder() =>
      GrantAccessOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrantAccessOutput &&
        success == other.success &&
        grantId == other.grantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, grantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GrantAccessOutput')
          ..add('success', success)
          ..add('grantId', grantId))
        .toString();
  }
}

class GrantAccessOutputBuilder
    implements Builder<GrantAccessOutput, GrantAccessOutputBuilder> {
  _$GrantAccessOutput? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _grantId;
  String? get grantId => _$this._grantId;
  set grantId(String? grantId) => _$this._grantId = grantId;

  GrantAccessOutputBuilder() {
    GrantAccessOutput._defaults(this);
  }

  GrantAccessOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _grantId = $v.grantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrantAccessOutput other) {
    _$v = other as _$GrantAccessOutput;
  }

  @override
  void update(void Function(GrantAccessOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrantAccessOutput build() => _build();

  _$GrantAccessOutput _build() {
    final _$result = _$v ??
        _$GrantAccessOutput._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'GrantAccessOutput', 'success'),
          grantId: grantId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
