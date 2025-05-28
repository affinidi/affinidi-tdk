// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prepare_request_created_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrepareRequestCreatedData extends PrepareRequestCreatedData {
  @override
  final String jwt;
  @override
  final String correlationId;

  factory _$PrepareRequestCreatedData(
          [void Function(PrepareRequestCreatedDataBuilder)? updates]) =>
      (PrepareRequestCreatedDataBuilder()..update(updates))._build();

  _$PrepareRequestCreatedData._(
      {required this.jwt, required this.correlationId})
      : super._();
  @override
  PrepareRequestCreatedData rebuild(
          void Function(PrepareRequestCreatedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrepareRequestCreatedDataBuilder toBuilder() =>
      PrepareRequestCreatedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrepareRequestCreatedData &&
        jwt == other.jwt &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jwt.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrepareRequestCreatedData')
          ..add('jwt', jwt)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class PrepareRequestCreatedDataBuilder
    implements
        Builder<PrepareRequestCreatedData, PrepareRequestCreatedDataBuilder> {
  _$PrepareRequestCreatedData? _$v;

  String? _jwt;
  String? get jwt => _$this._jwt;
  set jwt(String? jwt) => _$this._jwt = jwt;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  PrepareRequestCreatedDataBuilder() {
    PrepareRequestCreatedData._defaults(this);
  }

  PrepareRequestCreatedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwt = $v.jwt;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrepareRequestCreatedData other) {
    _$v = other as _$PrepareRequestCreatedData;
  }

  @override
  void update(void Function(PrepareRequestCreatedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrepareRequestCreatedData build() => _build();

  _$PrepareRequestCreatedData _build() {
    final _$result = _$v ??
        _$PrepareRequestCreatedData._(
          jwt: BuiltValueNullFieldError.checkNotNull(
              jwt, r'PrepareRequestCreatedData', 'jwt'),
          correlationId: BuiltValueNullFieldError.checkNotNull(
              correlationId, r'PrepareRequestCreatedData', 'correlationId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
