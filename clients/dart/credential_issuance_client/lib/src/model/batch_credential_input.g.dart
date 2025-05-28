// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_credential_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchCredentialInput extends BatchCredentialInput {
  @override
  final BuiltList<BatchCredentialInputCredentialRequestsInner>
      credentialRequests;

  factory _$BatchCredentialInput(
          [void Function(BatchCredentialInputBuilder)? updates]) =>
      (BatchCredentialInputBuilder()..update(updates))._build();

  _$BatchCredentialInput._({required this.credentialRequests}) : super._();
  @override
  BatchCredentialInput rebuild(
          void Function(BatchCredentialInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchCredentialInputBuilder toBuilder() =>
      BatchCredentialInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchCredentialInput &&
        credentialRequests == other.credentialRequests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentialRequests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchCredentialInput')
          ..add('credentialRequests', credentialRequests))
        .toString();
  }
}

class BatchCredentialInputBuilder
    implements Builder<BatchCredentialInput, BatchCredentialInputBuilder> {
  _$BatchCredentialInput? _$v;

  ListBuilder<BatchCredentialInputCredentialRequestsInner>? _credentialRequests;
  ListBuilder<BatchCredentialInputCredentialRequestsInner>
      get credentialRequests => _$this._credentialRequests ??=
          ListBuilder<BatchCredentialInputCredentialRequestsInner>();
  set credentialRequests(
          ListBuilder<BatchCredentialInputCredentialRequestsInner>?
              credentialRequests) =>
      _$this._credentialRequests = credentialRequests;

  BatchCredentialInputBuilder() {
    BatchCredentialInput._defaults(this);
  }

  BatchCredentialInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialRequests = $v.credentialRequests.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchCredentialInput other) {
    _$v = other as _$BatchCredentialInput;
  }

  @override
  void update(void Function(BatchCredentialInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchCredentialInput build() => _build();

  _$BatchCredentialInput _build() {
    _$BatchCredentialInput _$result;
    try {
      _$result = _$v ??
          _$BatchCredentialInput._(
            credentialRequests: credentialRequests.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentialRequests';
        credentialRequests.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BatchCredentialInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
