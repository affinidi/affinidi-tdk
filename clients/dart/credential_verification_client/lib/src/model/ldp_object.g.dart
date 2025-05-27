// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ldp_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LdpObject extends LdpObject {
  @override
  final BuiltList<String> proofType;

  factory _$LdpObject([void Function(LdpObjectBuilder)? updates]) =>
      (LdpObjectBuilder()..update(updates))._build();

  _$LdpObject._({required this.proofType}) : super._();
  @override
  LdpObject rebuild(void Function(LdpObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LdpObjectBuilder toBuilder() => LdpObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LdpObject && proofType == other.proofType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, proofType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LdpObject')
          ..add('proofType', proofType))
        .toString();
  }
}

class LdpObjectBuilder implements Builder<LdpObject, LdpObjectBuilder> {
  _$LdpObject? _$v;

  ListBuilder<String>? _proofType;
  ListBuilder<String> get proofType =>
      _$this._proofType ??= ListBuilder<String>();
  set proofType(ListBuilder<String>? proofType) =>
      _$this._proofType = proofType;

  LdpObjectBuilder() {
    LdpObject._defaults(this);
  }

  LdpObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _proofType = $v.proofType.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LdpObject other) {
    _$v = other as _$LdpObject;
  }

  @override
  void update(void Function(LdpObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LdpObject build() => _build();

  _$LdpObject _build() {
    _$LdpObject _$result;
    try {
      _$result = _$v ??
          _$LdpObject._(
            proofType: proofType.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'proofType';
        proofType.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LdpObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
