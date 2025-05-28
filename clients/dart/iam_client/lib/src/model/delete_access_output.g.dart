// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_access_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteAccessOutput extends DeleteAccessOutput {
  @override
  final bool success;

  factory _$DeleteAccessOutput(
          [void Function(DeleteAccessOutputBuilder)? updates]) =>
      (DeleteAccessOutputBuilder()..update(updates))._build();

  _$DeleteAccessOutput._({required this.success}) : super._();
  @override
  DeleteAccessOutput rebuild(
          void Function(DeleteAccessOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAccessOutputBuilder toBuilder() =>
      DeleteAccessOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAccessOutput && success == other.success;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteAccessOutput')
          ..add('success', success))
        .toString();
  }
}

class DeleteAccessOutputBuilder
    implements Builder<DeleteAccessOutput, DeleteAccessOutputBuilder> {
  _$DeleteAccessOutput? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  DeleteAccessOutputBuilder() {
    DeleteAccessOutput._defaults(this);
  }

  DeleteAccessOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAccessOutput other) {
    _$v = other as _$DeleteAccessOutput;
  }

  @override
  void update(void Function(DeleteAccessOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAccessOutput build() => _build();

  _$DeleteAccessOutput _build() {
    final _$result = _$v ??
        _$DeleteAccessOutput._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'DeleteAccessOutput', 'success'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
