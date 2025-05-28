// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_node_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNodeDto extends DeleteNodeDto {
  @override
  final String? newNodeId;

  factory _$DeleteNodeDto([void Function(DeleteNodeDtoBuilder)? updates]) =>
      (DeleteNodeDtoBuilder()..update(updates))._build();

  _$DeleteNodeDto._({this.newNodeId}) : super._();
  @override
  DeleteNodeDto rebuild(void Function(DeleteNodeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNodeDtoBuilder toBuilder() => DeleteNodeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNodeDto && newNodeId == other.newNodeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newNodeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteNodeDto')
          ..add('newNodeId', newNodeId))
        .toString();
  }
}

class DeleteNodeDtoBuilder
    implements Builder<DeleteNodeDto, DeleteNodeDtoBuilder> {
  _$DeleteNodeDto? _$v;

  String? _newNodeId;
  String? get newNodeId => _$this._newNodeId;
  set newNodeId(String? newNodeId) => _$this._newNodeId = newNodeId;

  DeleteNodeDtoBuilder() {
    DeleteNodeDto._defaults(this);
  }

  DeleteNodeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newNodeId = $v.newNodeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNodeDto other) {
    _$v = other as _$DeleteNodeDto;
  }

  @override
  void update(void Function(DeleteNodeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNodeDto build() => _build();

  _$DeleteNodeDto _build() {
    final _$result = _$v ??
        _$DeleteNodeDto._(
          newNodeId: newNodeId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
