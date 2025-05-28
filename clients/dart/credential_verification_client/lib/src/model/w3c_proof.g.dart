// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_proof.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cProof extends W3cProof {
  @override
  final String? type;
  @override
  final String? created;
  @override
  final String verificationMethod;
  @override
  final String proofPurpose;
  @override
  final String? jws;
  @override
  final String? proofValue;
  @override
  final String? nonce;

  factory _$W3cProof([void Function(W3cProofBuilder)? updates]) =>
      (W3cProofBuilder()..update(updates))._build();

  _$W3cProof._(
      {this.type,
      this.created,
      required this.verificationMethod,
      required this.proofPurpose,
      this.jws,
      this.proofValue,
      this.nonce})
      : super._();
  @override
  W3cProof rebuild(void Function(W3cProofBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cProofBuilder toBuilder() => W3cProofBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cProof &&
        type == other.type &&
        created == other.created &&
        verificationMethod == other.verificationMethod &&
        proofPurpose == other.proofPurpose &&
        jws == other.jws &&
        proofValue == other.proofValue &&
        nonce == other.nonce;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, verificationMethod.hashCode);
    _$hash = $jc(_$hash, proofPurpose.hashCode);
    _$hash = $jc(_$hash, jws.hashCode);
    _$hash = $jc(_$hash, proofValue.hashCode);
    _$hash = $jc(_$hash, nonce.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'W3cProof')
          ..add('type', type)
          ..add('created', created)
          ..add('verificationMethod', verificationMethod)
          ..add('proofPurpose', proofPurpose)
          ..add('jws', jws)
          ..add('proofValue', proofValue)
          ..add('nonce', nonce))
        .toString();
  }
}

class W3cProofBuilder implements Builder<W3cProof, W3cProofBuilder> {
  _$W3cProof? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _created;
  String? get created => _$this._created;
  set created(String? created) => _$this._created = created;

  String? _verificationMethod;
  String? get verificationMethod => _$this._verificationMethod;
  set verificationMethod(String? verificationMethod) =>
      _$this._verificationMethod = verificationMethod;

  String? _proofPurpose;
  String? get proofPurpose => _$this._proofPurpose;
  set proofPurpose(String? proofPurpose) => _$this._proofPurpose = proofPurpose;

  String? _jws;
  String? get jws => _$this._jws;
  set jws(String? jws) => _$this._jws = jws;

  String? _proofValue;
  String? get proofValue => _$this._proofValue;
  set proofValue(String? proofValue) => _$this._proofValue = proofValue;

  String? _nonce;
  String? get nonce => _$this._nonce;
  set nonce(String? nonce) => _$this._nonce = nonce;

  W3cProofBuilder() {
    W3cProof._defaults(this);
  }

  W3cProofBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _created = $v.created;
      _verificationMethod = $v.verificationMethod;
      _proofPurpose = $v.proofPurpose;
      _jws = $v.jws;
      _proofValue = $v.proofValue;
      _nonce = $v.nonce;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cProof other) {
    _$v = other as _$W3cProof;
  }

  @override
  void update(void Function(W3cProofBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cProof build() => _build();

  _$W3cProof _build() {
    final _$result = _$v ??
        _$W3cProof._(
          type: type,
          created: created,
          verificationMethod: BuiltValueNullFieldError.checkNotNull(
              verificationMethod, r'W3cProof', 'verificationMethod'),
          proofPurpose: BuiltValueNullFieldError.checkNotNull(
              proofPurpose, r'W3cProof', 'proofPurpose'),
          jws: jws,
          proofValue: proofValue,
          nonce: nonce,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
