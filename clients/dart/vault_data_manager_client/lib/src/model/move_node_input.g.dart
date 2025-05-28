// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_node_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MoveNodeInput extends MoveNodeInput {
  @override
  final String destinationNodeId;
  @override
  final bool? resolveNameConflictsAutomatically;

  factory _$MoveNodeInput([void Function(MoveNodeInputBuilder)? updates]) =>
      (MoveNodeInputBuilder()..update(updates))._build();

  _$MoveNodeInput._(
      {required this.destinationNodeId, this.resolveNameConflictsAutomatically})
      : super._();
  @override
  MoveNodeInput rebuild(void Function(MoveNodeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoveNodeInputBuilder toBuilder() => MoveNodeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoveNodeInput &&
        destinationNodeId == other.destinationNodeId &&
        resolveNameConflictsAutomatically ==
            other.resolveNameConflictsAutomatically;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationNodeId.hashCode);
    _$hash = $jc(_$hash, resolveNameConflictsAutomatically.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MoveNodeInput')
          ..add('destinationNodeId', destinationNodeId)
          ..add('resolveNameConflictsAutomatically',
              resolveNameConflictsAutomatically))
        .toString();
  }
}

class MoveNodeInputBuilder
    implements Builder<MoveNodeInput, MoveNodeInputBuilder> {
  _$MoveNodeInput? _$v;

  String? _destinationNodeId;
  String? get destinationNodeId => _$this._destinationNodeId;
  set destinationNodeId(String? destinationNodeId) =>
      _$this._destinationNodeId = destinationNodeId;

  bool? _resolveNameConflictsAutomatically;
  bool? get resolveNameConflictsAutomatically =>
      _$this._resolveNameConflictsAutomatically;
  set resolveNameConflictsAutomatically(
          bool? resolveNameConflictsAutomatically) =>
      _$this._resolveNameConflictsAutomatically =
          resolveNameConflictsAutomatically;

  MoveNodeInputBuilder() {
    MoveNodeInput._defaults(this);
  }

  MoveNodeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationNodeId = $v.destinationNodeId;
      _resolveNameConflictsAutomatically = $v.resolveNameConflictsAutomatically;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoveNodeInput other) {
    _$v = other as _$MoveNodeInput;
  }

  @override
  void update(void Function(MoveNodeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoveNodeInput build() => _build();

  _$MoveNodeInput _build() {
    final _$result = _$v ??
        _$MoveNodeInput._(
          destinationNodeId: BuiltValueNullFieldError.checkNotNull(
              destinationNodeId, r'MoveNodeInput', 'destinationNodeId'),
          resolveNameConflictsAutomatically: resolveNameConflictsAutomatically,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
