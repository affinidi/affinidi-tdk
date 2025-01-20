// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_data_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateProfileDataOK extends UpdateProfileDataOK {
  @override
  final JsonObject? data;

  factory _$UpdateProfileDataOK(
          [void Function(UpdateProfileDataOKBuilder)? updates]) =>
      (new UpdateProfileDataOKBuilder()..update(updates))._build();

  _$UpdateProfileDataOK._({this.data}) : super._();

  @override
  UpdateProfileDataOK rebuild(
          void Function(UpdateProfileDataOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateProfileDataOKBuilder toBuilder() =>
      new UpdateProfileDataOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateProfileDataOK && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateProfileDataOK')
          ..add('data', data))
        .toString();
  }
}

class UpdateProfileDataOKBuilder
    implements Builder<UpdateProfileDataOK, UpdateProfileDataOKBuilder> {
  _$UpdateProfileDataOK? _$v;

  JsonObject? _data;
  JsonObject? get data => _$this._data;
  set data(JsonObject? data) => _$this._data = data;

  UpdateProfileDataOKBuilder() {
    UpdateProfileDataOK._defaults(this);
  }

  UpdateProfileDataOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateProfileDataOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateProfileDataOK;
  }

  @override
  void update(void Function(UpdateProfileDataOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateProfileDataOK build() => _build();

  _$UpdateProfileDataOK _build() {
    final _$result = _$v ??
        new _$UpdateProfileDataOK._(
          data: data,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
