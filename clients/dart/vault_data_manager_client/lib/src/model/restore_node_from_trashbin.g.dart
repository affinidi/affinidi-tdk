// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restore_node_from_trashbin.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestoreNodeFromTrashbin extends RestoreNodeFromTrashbin {
  @override
  final String? restoreToProfileId;

  factory _$RestoreNodeFromTrashbin(
          [void Function(RestoreNodeFromTrashbinBuilder)? updates]) =>
      (new RestoreNodeFromTrashbinBuilder()..update(updates))._build();

  _$RestoreNodeFromTrashbin._({this.restoreToProfileId}) : super._();

  @override
  RestoreNodeFromTrashbin rebuild(
          void Function(RestoreNodeFromTrashbinBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestoreNodeFromTrashbinBuilder toBuilder() =>
      new RestoreNodeFromTrashbinBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestoreNodeFromTrashbin &&
        restoreToProfileId == other.restoreToProfileId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restoreToProfileId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestoreNodeFromTrashbin')
          ..add('restoreToProfileId', restoreToProfileId))
        .toString();
  }
}

class RestoreNodeFromTrashbinBuilder
    implements
        Builder<RestoreNodeFromTrashbin, RestoreNodeFromTrashbinBuilder> {
  _$RestoreNodeFromTrashbin? _$v;

  String? _restoreToProfileId;
  String? get restoreToProfileId => _$this._restoreToProfileId;
  set restoreToProfileId(String? restoreToProfileId) =>
      _$this._restoreToProfileId = restoreToProfileId;

  RestoreNodeFromTrashbinBuilder() {
    RestoreNodeFromTrashbin._defaults(this);
  }

  RestoreNodeFromTrashbinBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restoreToProfileId = $v.restoreToProfileId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestoreNodeFromTrashbin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestoreNodeFromTrashbin;
  }

  @override
  void update(void Function(RestoreNodeFromTrashbinBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestoreNodeFromTrashbin build() => _build();

  _$RestoreNodeFromTrashbin _build() {
    final _$result = _$v ??
        new _$RestoreNodeFromTrashbin._(
          restoreToProfileId: restoreToProfileId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
