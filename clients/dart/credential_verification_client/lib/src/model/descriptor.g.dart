// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'descriptor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Descriptor extends Descriptor {
  @override
  final String id;
  @override
  final String path;
  @override
  final NestedDescriptor? pathNested;
  @override
  final String format;

  factory _$Descriptor([void Function(DescriptorBuilder)? updates]) =>
      (DescriptorBuilder()..update(updates))._build();

  _$Descriptor._(
      {required this.id,
      required this.path,
      this.pathNested,
      required this.format})
      : super._();
  @override
  Descriptor rebuild(void Function(DescriptorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescriptorBuilder toBuilder() => DescriptorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Descriptor &&
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
    return (newBuiltValueToStringHelper(r'Descriptor')
          ..add('id', id)
          ..add('path', path)
          ..add('pathNested', pathNested)
          ..add('format', format))
        .toString();
  }
}

class DescriptorBuilder implements Builder<Descriptor, DescriptorBuilder> {
  _$Descriptor? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  NestedDescriptorBuilder? _pathNested;
  NestedDescriptorBuilder get pathNested =>
      _$this._pathNested ??= NestedDescriptorBuilder();
  set pathNested(NestedDescriptorBuilder? pathNested) =>
      _$this._pathNested = pathNested;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  DescriptorBuilder() {
    Descriptor._defaults(this);
  }

  DescriptorBuilder get _$this {
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
  void replace(Descriptor other) {
    _$v = other as _$Descriptor;
  }

  @override
  void update(void Function(DescriptorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Descriptor build() => _build();

  _$Descriptor _build() {
    _$Descriptor _$result;
    try {
      _$result = _$v ??
          _$Descriptor._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Descriptor', 'id'),
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'Descriptor', 'path'),
            pathNested: _pathNested?.build(),
            format: BuiltValueNullFieldError.checkNotNull(
                format, r'Descriptor', 'format'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pathNested';
        _pathNested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Descriptor', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
