// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_file_scan_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartFileScanInput extends StartFileScanInput {
  @override
  final String dek;

  factory _$StartFileScanInput(
          [void Function(StartFileScanInputBuilder)? updates]) =>
      (new StartFileScanInputBuilder()..update(updates))._build();

  _$StartFileScanInput._({required this.dek}) : super._() {
    BuiltValueNullFieldError.checkNotNull(dek, r'StartFileScanInput', 'dek');
  }

  @override
  StartFileScanInput rebuild(
          void Function(StartFileScanInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartFileScanInputBuilder toBuilder() =>
      new StartFileScanInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartFileScanInput && dek == other.dek;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dek.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartFileScanInput')..add('dek', dek))
        .toString();
  }
}

class StartFileScanInputBuilder
    implements Builder<StartFileScanInput, StartFileScanInputBuilder> {
  _$StartFileScanInput? _$v;

  String? _dek;
  String? get dek => _$this._dek;
  set dek(String? dek) => _$this._dek = dek;

  StartFileScanInputBuilder() {
    StartFileScanInput._defaults(this);
  }

  StartFileScanInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dek = $v.dek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartFileScanInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartFileScanInput;
  }

  @override
  void update(void Function(StartFileScanInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartFileScanInput build() => _build();

  _$StartFileScanInput _build() {
    final _$result = _$v ??
        new _$StartFileScanInput._(
          dek: BuiltValueNullFieldError.checkNotNull(
              dek, r'StartFileScanInput', 'dek'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
