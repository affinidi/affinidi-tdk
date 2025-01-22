// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_node_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MoveNodeDto extends MoveNodeDto {
  @override
  final String? newNodeId;

  factory _$MoveNodeDto([void Function(MoveNodeDtoBuilder)? updates]) =>
      (new MoveNodeDtoBuilder()..update(updates))._build();

  _$MoveNodeDto._({this.newNodeId}) : super._();

  @override
  MoveNodeDto rebuild(void Function(MoveNodeDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoveNodeDtoBuilder toBuilder() => new MoveNodeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoveNodeDto && newNodeId == other.newNodeId;
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
    return (newBuiltValueToStringHelper(r'MoveNodeDto')
          ..add('newNodeId', newNodeId))
        .toString();
  }
}

class MoveNodeDtoBuilder implements Builder<MoveNodeDto, MoveNodeDtoBuilder> {
  _$MoveNodeDto? _$v;

  String? _newNodeId;
  String? get newNodeId => _$this._newNodeId;
  set newNodeId(String? newNodeId) => _$this._newNodeId = newNodeId;

  MoveNodeDtoBuilder() {
    MoveNodeDto._defaults(this);
  }

  MoveNodeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newNodeId = $v.newNodeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoveNodeDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoveNodeDto;
  }

  @override
  void update(void Function(MoveNodeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoveNodeDto build() => _build();

  _$MoveNodeDto _build() {
    final _$result = _$v ??
        new _$MoveNodeDto._(
          newNodeId: newNodeId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
