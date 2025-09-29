// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_credential.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cCredential extends W3cCredential {
  @override
  final W3cPresentationContext atContext;
  @override
  final String? id;
  @override
  final BuiltList<String> type;
  @override
  final W3cCredentialHolder? holder;
  @override
  final W3cCredentialCredentialSubject credentialSubject;
  @override
  final W3cCredentialStatus? credentialStatus;
  @override
  final String issuanceDate;
  @override
  final String issuer;
  @override
  final String? expirationDate;
  @override
  final W3cProof proof;
  @override
  final W3cCredentialCredentialSchema? credentialSchema;

  factory _$W3cCredential([void Function(W3cCredentialBuilder)? updates]) =>
      (W3cCredentialBuilder()..update(updates))._build();

  _$W3cCredential._(
      {required this.atContext,
      this.id,
      required this.type,
      this.holder,
      required this.credentialSubject,
      this.credentialStatus,
      required this.issuanceDate,
      required this.issuer,
      this.expirationDate,
      required this.proof,
      this.credentialSchema})
      : super._();
  @override
  W3cCredential rebuild(void Function(W3cCredentialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cCredentialBuilder toBuilder() => W3cCredentialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cCredential &&
        atContext == other.atContext &&
        id == other.id &&
        type == other.type &&
        holder == other.holder &&
        credentialSubject == other.credentialSubject &&
        credentialStatus == other.credentialStatus &&
        issuanceDate == other.issuanceDate &&
        issuer == other.issuer &&
        expirationDate == other.expirationDate &&
        proof == other.proof &&
        credentialSchema == other.credentialSchema;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atContext.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, holder.hashCode);
    _$hash = $jc(_$hash, credentialSubject.hashCode);
    _$hash = $jc(_$hash, credentialStatus.hashCode);
    _$hash = $jc(_$hash, issuanceDate.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jc(_$hash, proof.hashCode);
    _$hash = $jc(_$hash, credentialSchema.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'W3cCredential')
          ..add('atContext', atContext)
          ..add('id', id)
          ..add('type', type)
          ..add('holder', holder)
          ..add('credentialSubject', credentialSubject)
          ..add('credentialStatus', credentialStatus)
          ..add('issuanceDate', issuanceDate)
          ..add('issuer', issuer)
          ..add('expirationDate', expirationDate)
          ..add('proof', proof)
          ..add('credentialSchema', credentialSchema))
        .toString();
  }
}

class W3cCredentialBuilder
    implements Builder<W3cCredential, W3cCredentialBuilder> {
  _$W3cCredential? _$v;

  W3cPresentationContextBuilder? _atContext;
  W3cPresentationContextBuilder get atContext =>
      _$this._atContext ??= W3cPresentationContextBuilder();
  set atContext(W3cPresentationContextBuilder? atContext) =>
      _$this._atContext = atContext;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<String>? _type;
  ListBuilder<String> get type => _$this._type ??= ListBuilder<String>();
  set type(ListBuilder<String>? type) => _$this._type = type;

  W3cCredentialHolderBuilder? _holder;
  W3cCredentialHolderBuilder get holder =>
      _$this._holder ??= W3cCredentialHolderBuilder();
  set holder(W3cCredentialHolderBuilder? holder) => _$this._holder = holder;

  W3cCredentialCredentialSubjectBuilder? _credentialSubject;
  W3cCredentialCredentialSubjectBuilder get credentialSubject =>
      _$this._credentialSubject ??= W3cCredentialCredentialSubjectBuilder();
  set credentialSubject(
          W3cCredentialCredentialSubjectBuilder? credentialSubject) =>
      _$this._credentialSubject = credentialSubject;

  W3cCredentialStatusBuilder? _credentialStatus;
  W3cCredentialStatusBuilder get credentialStatus =>
      _$this._credentialStatus ??= W3cCredentialStatusBuilder();
  set credentialStatus(W3cCredentialStatusBuilder? credentialStatus) =>
      _$this._credentialStatus = credentialStatus;

  String? _issuanceDate;
  String? get issuanceDate => _$this._issuanceDate;
  set issuanceDate(String? issuanceDate) => _$this._issuanceDate = issuanceDate;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  String? _expirationDate;
  String? get expirationDate => _$this._expirationDate;
  set expirationDate(String? expirationDate) =>
      _$this._expirationDate = expirationDate;

  W3cProofBuilder? _proof;
  W3cProofBuilder get proof => _$this._proof ??= W3cProofBuilder();
  set proof(W3cProofBuilder? proof) => _$this._proof = proof;

  W3cCredentialCredentialSchemaBuilder? _credentialSchema;
  W3cCredentialCredentialSchemaBuilder get credentialSchema =>
      _$this._credentialSchema ??= W3cCredentialCredentialSchemaBuilder();
  set credentialSchema(
          W3cCredentialCredentialSchemaBuilder? credentialSchema) =>
      _$this._credentialSchema = credentialSchema;

  W3cCredentialBuilder() {
    W3cCredential._defaults(this);
  }

  W3cCredentialBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atContext = $v.atContext.toBuilder();
      _id = $v.id;
      _type = $v.type.toBuilder();
      _holder = $v.holder?.toBuilder();
      _credentialSubject = $v.credentialSubject.toBuilder();
      _credentialStatus = $v.credentialStatus?.toBuilder();
      _issuanceDate = $v.issuanceDate;
      _issuer = $v.issuer;
      _expirationDate = $v.expirationDate;
      _proof = $v.proof.toBuilder();
      _credentialSchema = $v.credentialSchema?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cCredential other) {
    _$v = other as _$W3cCredential;
  }

  @override
  void update(void Function(W3cCredentialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cCredential build() => _build();

  _$W3cCredential _build() {
    _$W3cCredential _$result;
    try {
      _$result = _$v ??
          _$W3cCredential._(
            atContext: atContext.build(),
            id: id,
            type: type.build(),
            holder: _holder?.build(),
            credentialSubject: credentialSubject.build(),
            credentialStatus: _credentialStatus?.build(),
            issuanceDate: BuiltValueNullFieldError.checkNotNull(
                issuanceDate, r'W3cCredential', 'issuanceDate'),
            issuer: BuiltValueNullFieldError.checkNotNull(
                issuer, r'W3cCredential', 'issuer'),
            expirationDate: expirationDate,
            proof: proof.build(),
            credentialSchema: _credentialSchema?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'atContext';
        atContext.build();

        _$failedField = 'type';
        type.build();
        _$failedField = 'holder';
        _holder?.build();
        _$failedField = 'credentialSubject';
        credentialSubject.build();
        _$failedField = 'credentialStatus';
        _credentialStatus?.build();

        _$failedField = 'proof';
        proof.build();
        _$failedField = 'credentialSchema';
        _credentialSchema?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'W3cCredential', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
