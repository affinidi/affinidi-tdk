// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepare_request_created.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrepareRequestCreated extends PrepareRequestCreated {
  @override
  final PrepareRequestCreatedData data;

  factory _$PrepareRequestCreated(
          [void Function(PrepareRequestCreatedBuilder)? updates]) =>
      (new PrepareRequestCreatedBuilder()..update(updates))._build();

  _$PrepareRequestCreated._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'PrepareRequestCreated', 'data');
  }

  @override
  PrepareRequestCreated rebuild(
          void Function(PrepareRequestCreatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrepareRequestCreatedBuilder toBuilder() =>
      new PrepareRequestCreatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrepareRequestCreated && data == other.data;
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
    return (newBuiltValueToStringHelper(r'PrepareRequestCreated')
          ..add('data', data))
        .toString();
  }
}

class PrepareRequestCreatedBuilder
    implements Builder<PrepareRequestCreated, PrepareRequestCreatedBuilder> {
  _$PrepareRequestCreated? _$v;

  PrepareRequestCreatedDataBuilder? _data;
  PrepareRequestCreatedDataBuilder get data =>
      _$this._data ??= new PrepareRequestCreatedDataBuilder();
  set data(PrepareRequestCreatedDataBuilder? data) => _$this._data = data;

  PrepareRequestCreatedBuilder() {
    PrepareRequestCreated._defaults(this);
  }

  PrepareRequestCreatedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrepareRequestCreated other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrepareRequestCreated;
  }

  @override
  void update(void Function(PrepareRequestCreatedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrepareRequestCreated build() => _build();

  _$PrepareRequestCreated _build() {
    _$PrepareRequestCreated _$result;
    try {
      _$result = _$v ??
          new _$PrepareRequestCreated._(
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PrepareRequestCreated', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
