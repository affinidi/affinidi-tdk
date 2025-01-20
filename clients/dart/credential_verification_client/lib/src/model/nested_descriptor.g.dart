// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_descriptor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedDescriptor extends NestedDescriptor {
  @override
  final String? id;
  @override
  final String path;
  @override
  final NestedDescriptor? pathNested;
  @override
  final String format;

  factory _$NestedDescriptor(
          [void Function(NestedDescriptorBuilder)? updates]) =>
      (new NestedDescriptorBuilder()..update(updates))._build();

  _$NestedDescriptor._(
      {this.id, required this.path, this.pathNested, required this.format})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(path, r'NestedDescriptor', 'path');
    BuiltValueNullFieldError.checkNotNull(
        format, r'NestedDescriptor', 'format');
  }

  @override
  NestedDescriptor rebuild(void Function(NestedDescriptorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedDescriptorBuilder toBuilder() =>
      new NestedDescriptorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedDescriptor &&
        id == other.id &&
        path == other.path &&
        pathNested == other.pathNested &&
        format == other.format;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, pathNested.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NestedDescriptor')
          ..add('id', id)
          ..add('path', path)
          ..add('pathNested', pathNested)
          ..add('format', format))
        .toString();
  }
}

class NestedDescriptorBuilder
    implements Builder<NestedDescriptor, NestedDescriptorBuilder> {
  _$NestedDescriptor? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  NestedDescriptorBuilder? _pathNested;
  NestedDescriptorBuilder get pathNested =>
      _$this._pathNested ??= new NestedDescriptorBuilder();
  set pathNested(NestedDescriptorBuilder? pathNested) =>
      _$this._pathNested = pathNested;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  NestedDescriptorBuilder() {
    NestedDescriptor._defaults(this);
  }

  NestedDescriptorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _path = $v.path;
      _pathNested = $v.pathNested?.toBuilder();
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedDescriptor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedDescriptor;
  }

  @override
  void update(void Function(NestedDescriptorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedDescriptor build() => _build();

  _$NestedDescriptor _build() {
    _$NestedDescriptor _$result;
    try {
      _$result = _$v ??
          new _$NestedDescriptor._(
            id: id,
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'NestedDescriptor', 'path'),
            pathNested: _pathNested?.build(),
            format: BuiltValueNullFieldError.checkNotNull(
                format, r'NestedDescriptor', 'format'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pathNested';
        _pathNested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NestedDescriptor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
