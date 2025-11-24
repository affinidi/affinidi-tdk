// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_credential_v2_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyCredentialV2Input extends VerifyCredentialV2Input {
  @override
  final BuiltList<String>? jwtVcs;
  @override
  final BuiltList<BuiltMap<String, JsonObject?>>? ldpVcs;

  factory _$VerifyCredentialV2Input(
          [void Function(VerifyCredentialV2InputBuilder)? updates]) =>
      (VerifyCredentialV2InputBuilder()..update(updates))._build();

  _$VerifyCredentialV2Input._({this.jwtVcs, this.ldpVcs}) : super._();
  @override
  VerifyCredentialV2Input rebuild(
          void Function(VerifyCredentialV2InputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyCredentialV2InputBuilder toBuilder() =>
      VerifyCredentialV2InputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyCredentialV2Input &&
        jwtVcs == other.jwtVcs &&
        ldpVcs == other.ldpVcs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jwtVcs.hashCode);
    _$hash = $jc(_$hash, ldpVcs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyCredentialV2Input')
          ..add('jwtVcs', jwtVcs)
          ..add('ldpVcs', ldpVcs))
        .toString();
  }
}

class VerifyCredentialV2InputBuilder
    implements
        Builder<VerifyCredentialV2Input, VerifyCredentialV2InputBuilder> {
  _$VerifyCredentialV2Input? _$v;

  ListBuilder<String>? _jwtVcs;
  ListBuilder<String> get jwtVcs => _$this._jwtVcs ??= ListBuilder<String>();
  set jwtVcs(ListBuilder<String>? jwtVcs) => _$this._jwtVcs = jwtVcs;

  ListBuilder<BuiltMap<String, JsonObject?>>? _ldpVcs;
  ListBuilder<BuiltMap<String, JsonObject?>> get ldpVcs =>
      _$this._ldpVcs ??= ListBuilder<BuiltMap<String, JsonObject?>>();
  set ldpVcs(ListBuilder<BuiltMap<String, JsonObject?>>? ldpVcs) =>
      _$this._ldpVcs = ldpVcs;

  VerifyCredentialV2InputBuilder() {
    VerifyCredentialV2Input._defaults(this);
  }

  VerifyCredentialV2InputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwtVcs = $v.jwtVcs?.toBuilder();
      _ldpVcs = $v.ldpVcs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyCredentialV2Input other) {
    _$v = other as _$VerifyCredentialV2Input;
  }

  @override
  void update(void Function(VerifyCredentialV2InputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyCredentialV2Input build() => _build();

  _$VerifyCredentialV2Input _build() {
    _$VerifyCredentialV2Input _$result;
    try {
      _$result = _$v ??
          _$VerifyCredentialV2Input._(
            jwtVcs: _jwtVcs?.build(),
            ldpVcs: _ldpVcs?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'jwtVcs';
        _jwtVcs?.build();
        _$failedField = 'ldpVcs';
        _ldpVcs?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VerifyCredentialV2Input', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
