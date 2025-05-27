// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraints_statuses.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConstraintsStatuses extends ConstraintsStatuses {
  @override
  final PdStatus? active;
  @override
  final PdStatus? suspended;
  @override
  final PdStatus? revoked;

  factory _$ConstraintsStatuses(
          [void Function(ConstraintsStatusesBuilder)? updates]) =>
      (ConstraintsStatusesBuilder()..update(updates))._build();

  _$ConstraintsStatuses._({this.active, this.suspended, this.revoked})
      : super._();
  @override
  ConstraintsStatuses rebuild(
          void Function(ConstraintsStatusesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstraintsStatusesBuilder toBuilder() =>
      ConstraintsStatusesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstraintsStatuses &&
        active == other.active &&
        suspended == other.suspended &&
        revoked == other.revoked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, suspended.hashCode);
    _$hash = $jc(_$hash, revoked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConstraintsStatuses')
          ..add('active', active)
          ..add('suspended', suspended)
          ..add('revoked', revoked))
        .toString();
  }
}

class ConstraintsStatusesBuilder
    implements Builder<ConstraintsStatuses, ConstraintsStatusesBuilder> {
  _$ConstraintsStatuses? _$v;

  PdStatusBuilder? _active;
  PdStatusBuilder get active => _$this._active ??= PdStatusBuilder();
  set active(PdStatusBuilder? active) => _$this._active = active;

  PdStatusBuilder? _suspended;
  PdStatusBuilder get suspended => _$this._suspended ??= PdStatusBuilder();
  set suspended(PdStatusBuilder? suspended) => _$this._suspended = suspended;

  PdStatusBuilder? _revoked;
  PdStatusBuilder get revoked => _$this._revoked ??= PdStatusBuilder();
  set revoked(PdStatusBuilder? revoked) => _$this._revoked = revoked;

  ConstraintsStatusesBuilder() {
    ConstraintsStatuses._defaults(this);
  }

  ConstraintsStatusesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _active = $v.active?.toBuilder();
      _suspended = $v.suspended?.toBuilder();
      _revoked = $v.revoked?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConstraintsStatuses other) {
    _$v = other as _$ConstraintsStatuses;
  }

  @override
  void update(void Function(ConstraintsStatusesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConstraintsStatuses build() => _build();

  _$ConstraintsStatuses _build() {
    _$ConstraintsStatuses _$result;
    try {
      _$result = _$v ??
          _$ConstraintsStatuses._(
            active: _active?.build(),
            suspended: _suspended?.build(),
            revoked: _revoked?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'active';
        _active?.build();
        _$failedField = 'suspended';
        _suspended?.build();
        _$failedField = 'revoked';
        _revoked?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConstraintsStatuses', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
