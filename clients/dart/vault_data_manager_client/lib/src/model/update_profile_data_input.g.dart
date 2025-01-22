// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_data_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateProfileDataInput extends UpdateProfileDataInput {
  @override
  final String dek;
  @override
  final JsonObject data;

  factory _$UpdateProfileDataInput(
          [void Function(UpdateProfileDataInputBuilder)? updates]) =>
      (new UpdateProfileDataInputBuilder()..update(updates))._build();

  _$UpdateProfileDataInput._({required this.dek, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dek, r'UpdateProfileDataInput', 'dek');
    BuiltValueNullFieldError.checkNotNull(
        data, r'UpdateProfileDataInput', 'data');
  }

  @override
  UpdateProfileDataInput rebuild(
          void Function(UpdateProfileDataInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateProfileDataInputBuilder toBuilder() =>
      new UpdateProfileDataInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateProfileDataInput &&
        dek == other.dek &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dek.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateProfileDataInput')
          ..add('dek', dek)
          ..add('data', data))
        .toString();
  }
}

class UpdateProfileDataInputBuilder
    implements Builder<UpdateProfileDataInput, UpdateProfileDataInputBuilder> {
  _$UpdateProfileDataInput? _$v;

  String? _dek;
  String? get dek => _$this._dek;
  set dek(String? dek) => _$this._dek = dek;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  UpdateProfileDataInputBuilder() {
    UpdateProfileDataInput._defaults(this);
  }

  UpdateProfileDataInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dek = $v.dek;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateProfileDataInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateProfileDataInput;
  }

  @override
  void update(void Function(UpdateProfileDataInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateProfileDataInput build() => _build();

  _$UpdateProfileDataInput _build() {
    final _$result = _$v ??
        new _$UpdateProfileDataInput._(
          dek: BuiltValueNullFieldError.checkNotNull(
              dek, r'UpdateProfileDataInput', 'dek'),
          data: BuiltValueNullFieldError.checkNotNull(
              data, r'UpdateProfileDataInput', 'data'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
