// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_scanned_files_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListScannedFilesOK extends ListScannedFilesOK {
  @override
  final BuiltList<ListScannedFilesOKScannedFilesInner> scannedFiles;

  factory _$ListScannedFilesOK(
          [void Function(ListScannedFilesOKBuilder)? updates]) =>
      (new ListScannedFilesOKBuilder()..update(updates))._build();

  _$ListScannedFilesOK._({required this.scannedFiles}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        scannedFiles, r'ListScannedFilesOK', 'scannedFiles');
  }

  @override
  ListScannedFilesOK rebuild(
          void Function(ListScannedFilesOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListScannedFilesOKBuilder toBuilder() =>
      new ListScannedFilesOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListScannedFilesOK && scannedFiles == other.scannedFiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scannedFiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListScannedFilesOK')
          ..add('scannedFiles', scannedFiles))
        .toString();
  }
}

class ListScannedFilesOKBuilder
    implements Builder<ListScannedFilesOK, ListScannedFilesOKBuilder> {
  _$ListScannedFilesOK? _$v;

  ListBuilder<ListScannedFilesOKScannedFilesInner>? _scannedFiles;
  ListBuilder<ListScannedFilesOKScannedFilesInner> get scannedFiles =>
      _$this._scannedFiles ??=
          new ListBuilder<ListScannedFilesOKScannedFilesInner>();
  set scannedFiles(
          ListBuilder<ListScannedFilesOKScannedFilesInner>? scannedFiles) =>
      _$this._scannedFiles = scannedFiles;

  ListScannedFilesOKBuilder() {
    ListScannedFilesOK._defaults(this);
  }

  ListScannedFilesOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scannedFiles = $v.scannedFiles.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListScannedFilesOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListScannedFilesOK;
  }

  @override
  void update(void Function(ListScannedFilesOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListScannedFilesOK build() => _build();

  _$ListScannedFilesOK _build() {
    _$ListScannedFilesOK _$result;
    try {
      _$result = _$v ??
          new _$ListScannedFilesOK._(
            scannedFiles: scannedFiles.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scannedFiles';
        scannedFiles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListScannedFilesOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
