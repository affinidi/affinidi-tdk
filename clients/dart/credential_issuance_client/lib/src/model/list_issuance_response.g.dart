// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_issuance_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListIssuanceResponse extends ListIssuanceResponse {
  @override
  final BuiltList<ListIssuanceResponseIssuancesInner> issuances;

  factory _$ListIssuanceResponse(
          [void Function(ListIssuanceResponseBuilder)? updates]) =>
      (ListIssuanceResponseBuilder()..update(updates))._build();

  _$ListIssuanceResponse._({required this.issuances}) : super._();
  @override
  ListIssuanceResponse rebuild(
          void Function(ListIssuanceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListIssuanceResponseBuilder toBuilder() =>
      ListIssuanceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListIssuanceResponse && issuances == other.issuances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, issuances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListIssuanceResponse')
          ..add('issuances', issuances))
        .toString();
  }
}

class ListIssuanceResponseBuilder
    implements Builder<ListIssuanceResponse, ListIssuanceResponseBuilder> {
  _$ListIssuanceResponse? _$v;

  ListBuilder<ListIssuanceResponseIssuancesInner>? _issuances;
  ListBuilder<ListIssuanceResponseIssuancesInner> get issuances =>
      _$this._issuances ??= ListBuilder<ListIssuanceResponseIssuancesInner>();
  set issuances(ListBuilder<ListIssuanceResponseIssuancesInner>? issuances) =>
      _$this._issuances = issuances;

  ListIssuanceResponseBuilder() {
    ListIssuanceResponse._defaults(this);
  }

  ListIssuanceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _issuances = $v.issuances.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListIssuanceResponse other) {
    _$v = other as _$ListIssuanceResponse;
  }

  @override
  void update(void Function(ListIssuanceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListIssuanceResponse build() => _build();

  _$ListIssuanceResponse _build() {
    _$ListIssuanceResponse _$result;
    try {
      _$result = _$v ??
          _$ListIssuanceResponse._(
            issuances: issuances.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'issuances';
        issuances.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListIssuanceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
