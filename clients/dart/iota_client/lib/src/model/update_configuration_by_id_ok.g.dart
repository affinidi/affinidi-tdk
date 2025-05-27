// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_configuration_by_id_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateConfigurationByIdOK extends UpdateConfigurationByIdOK {
  @override
  final String? updateConfigurationByIdOk;

  factory _$UpdateConfigurationByIdOK(
          [void Function(UpdateConfigurationByIdOKBuilder)? updates]) =>
      (UpdateConfigurationByIdOKBuilder()..update(updates))._build();

  _$UpdateConfigurationByIdOK._({this.updateConfigurationByIdOk}) : super._();
  @override
  UpdateConfigurationByIdOK rebuild(
          void Function(UpdateConfigurationByIdOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateConfigurationByIdOKBuilder toBuilder() =>
      UpdateConfigurationByIdOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateConfigurationByIdOK &&
        updateConfigurationByIdOk == other.updateConfigurationByIdOk;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, updateConfigurationByIdOk.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateConfigurationByIdOK')
          ..add('updateConfigurationByIdOk', updateConfigurationByIdOk))
        .toString();
  }
}

class UpdateConfigurationByIdOKBuilder
    implements
        Builder<UpdateConfigurationByIdOK, UpdateConfigurationByIdOKBuilder> {
  _$UpdateConfigurationByIdOK? _$v;

  String? _updateConfigurationByIdOk;
  String? get updateConfigurationByIdOk => _$this._updateConfigurationByIdOk;
  set updateConfigurationByIdOk(String? updateConfigurationByIdOk) =>
      _$this._updateConfigurationByIdOk = updateConfigurationByIdOk;

  UpdateConfigurationByIdOKBuilder() {
    UpdateConfigurationByIdOK._defaults(this);
  }

  UpdateConfigurationByIdOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _updateConfigurationByIdOk = $v.updateConfigurationByIdOk;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateConfigurationByIdOK other) {
    _$v = other as _$UpdateConfigurationByIdOK;
  }

  @override
  void update(void Function(UpdateConfigurationByIdOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateConfigurationByIdOK build() => _build();

  _$UpdateConfigurationByIdOK _build() {
    final _$result = _$v ??
        _$UpdateConfigurationByIdOK._(
          updateConfigurationByIdOk: updateConfigurationByIdOk,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
