// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grant_access_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GrantAccessInput extends GrantAccessInput {
  @override
  final String granteeDid;
  @override
  final VFSRightsEnum rights;

  factory _$GrantAccessInput(
          [void Function(GrantAccessInputBuilder)? updates]) =>
      (new GrantAccessInputBuilder()..update(updates))._build();

  _$GrantAccessInput._({required this.granteeDid, required this.rights})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        granteeDid, r'GrantAccessInput', 'granteeDid');
    BuiltValueNullFieldError.checkNotNull(
        rights, r'GrantAccessInput', 'rights');
  }

  @override
  GrantAccessInput rebuild(void Function(GrantAccessInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrantAccessInputBuilder toBuilder() =>
      new GrantAccessInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrantAccessInput &&
        granteeDid == other.granteeDid &&
        rights == other.rights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, granteeDid.hashCode);
    _$hash = $jc(_$hash, rights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GrantAccessInput')
          ..add('granteeDid', granteeDid)
          ..add('rights', rights))
        .toString();
  }
}

class GrantAccessInputBuilder
    implements Builder<GrantAccessInput, GrantAccessInputBuilder> {
  _$GrantAccessInput? _$v;

  String? _granteeDid;
  String? get granteeDid => _$this._granteeDid;
  set granteeDid(String? granteeDid) => _$this._granteeDid = granteeDid;

  VFSRightsEnumBuilder? _rights;
  VFSRightsEnumBuilder get rights =>
      _$this._rights ??= new VFSRightsEnumBuilder();
  set rights(VFSRightsEnumBuilder? rights) => _$this._rights = rights;

  GrantAccessInputBuilder() {
    GrantAccessInput._defaults(this);
  }

  GrantAccessInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _granteeDid = $v.granteeDid;
      _rights = $v.rights.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrantAccessInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrantAccessInput;
  }

  @override
  void update(void Function(GrantAccessInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrantAccessInput build() => _build();

  _$GrantAccessInput _build() {
    _$GrantAccessInput _$result;
    try {
      _$result = _$v ??
          new _$GrantAccessInput._(
            granteeDid: BuiltValueNullFieldError.checkNotNull(
                granteeDid, r'GrantAccessInput', 'granteeDid'),
            rights: rights.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rights';
        rights.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GrantAccessInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
