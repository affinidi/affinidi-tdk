// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_credential_status_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangeCredentialStatusInput extends ChangeCredentialStatusInput {
  @override
  final String? changeReason;
  @override
  final String? issuanceFlowDataId;

  factory _$ChangeCredentialStatusInput(
          [void Function(ChangeCredentialStatusInputBuilder)? updates]) =>
      (ChangeCredentialStatusInputBuilder()..update(updates))._build();

  _$ChangeCredentialStatusInput._({this.changeReason, this.issuanceFlowDataId})
      : super._();
  @override
  ChangeCredentialStatusInput rebuild(
          void Function(ChangeCredentialStatusInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCredentialStatusInputBuilder toBuilder() =>
      ChangeCredentialStatusInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCredentialStatusInput &&
        changeReason == other.changeReason &&
        issuanceFlowDataId == other.issuanceFlowDataId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, changeReason.hashCode);
    _$hash = $jc(_$hash, issuanceFlowDataId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeCredentialStatusInput')
          ..add('changeReason', changeReason)
          ..add('issuanceFlowDataId', issuanceFlowDataId))
        .toString();
  }
}

class ChangeCredentialStatusInputBuilder
    implements
        Builder<ChangeCredentialStatusInput,
            ChangeCredentialStatusInputBuilder> {
  _$ChangeCredentialStatusInput? _$v;

  String? _changeReason;
  String? get changeReason => _$this._changeReason;
  set changeReason(String? changeReason) => _$this._changeReason = changeReason;

  String? _issuanceFlowDataId;
  String? get issuanceFlowDataId => _$this._issuanceFlowDataId;
  set issuanceFlowDataId(String? issuanceFlowDataId) =>
      _$this._issuanceFlowDataId = issuanceFlowDataId;

  ChangeCredentialStatusInputBuilder() {
    ChangeCredentialStatusInput._defaults(this);
  }

  ChangeCredentialStatusInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _changeReason = $v.changeReason;
      _issuanceFlowDataId = $v.issuanceFlowDataId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCredentialStatusInput other) {
    _$v = other as _$ChangeCredentialStatusInput;
  }

  @override
  void update(void Function(ChangeCredentialStatusInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCredentialStatusInput build() => _build();

  _$ChangeCredentialStatusInput _build() {
    final _$result = _$v ??
        _$ChangeCredentialStatusInput._(
          changeReason: changeReason,
          issuanceFlowDataId: issuanceFlowDataId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
