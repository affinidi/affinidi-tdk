// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_credential_exchange_operation_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsCredentialExchangeOperationOK
    extends AwsCredentialExchangeOperationOK {
  @override
  final String token;
  @override
  final String identityId;

  factory _$AwsCredentialExchangeOperationOK(
          [void Function(AwsCredentialExchangeOperationOKBuilder)? updates]) =>
      (AwsCredentialExchangeOperationOKBuilder()..update(updates))._build();

  _$AwsCredentialExchangeOperationOK._(
      {required this.token, required this.identityId})
      : super._();
  @override
  AwsCredentialExchangeOperationOK rebuild(
          void Function(AwsCredentialExchangeOperationOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwsCredentialExchangeOperationOKBuilder toBuilder() =>
      AwsCredentialExchangeOperationOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsCredentialExchangeOperationOK &&
        token == other.token &&
        identityId == other.identityId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, identityId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AwsCredentialExchangeOperationOK')
          ..add('token', token)
          ..add('identityId', identityId))
        .toString();
  }
}

class AwsCredentialExchangeOperationOKBuilder
    implements
        Builder<AwsCredentialExchangeOperationOK,
            AwsCredentialExchangeOperationOKBuilder> {
  _$AwsCredentialExchangeOperationOK? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _identityId;
  String? get identityId => _$this._identityId;
  set identityId(String? identityId) => _$this._identityId = identityId;

  AwsCredentialExchangeOperationOKBuilder() {
    AwsCredentialExchangeOperationOK._defaults(this);
  }

  AwsCredentialExchangeOperationOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _identityId = $v.identityId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwsCredentialExchangeOperationOK other) {
    _$v = other as _$AwsCredentialExchangeOperationOK;
  }

  @override
  void update(void Function(AwsCredentialExchangeOperationOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsCredentialExchangeOperationOK build() => _build();

  _$AwsCredentialExchangeOperationOK _build() {
    final _$result = _$v ??
        _$AwsCredentialExchangeOperationOK._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'AwsCredentialExchangeOperationOK', 'token'),
          identityId: BuiltValueNullFieldError.checkNotNull(
              identityId, r'AwsCredentialExchangeOperationOK', 'identityId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
