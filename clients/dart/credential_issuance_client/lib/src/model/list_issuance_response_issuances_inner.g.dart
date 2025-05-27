// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_issuance_response_issuances_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListIssuanceResponseIssuancesInner
    extends ListIssuanceResponseIssuancesInner {
  @override
  final String id;

  factory _$ListIssuanceResponseIssuancesInner(
          [void Function(ListIssuanceResponseIssuancesInnerBuilder)?
              updates]) =>
      (ListIssuanceResponseIssuancesInnerBuilder()..update(updates))._build();

  _$ListIssuanceResponseIssuancesInner._({required this.id}) : super._();
  @override
  ListIssuanceResponseIssuancesInner rebuild(
          void Function(ListIssuanceResponseIssuancesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListIssuanceResponseIssuancesInnerBuilder toBuilder() =>
      ListIssuanceResponseIssuancesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListIssuanceResponseIssuancesInner && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListIssuanceResponseIssuancesInner')
          ..add('id', id))
        .toString();
  }
}

class ListIssuanceResponseIssuancesInnerBuilder
    implements
        Builder<ListIssuanceResponseIssuancesInner,
            ListIssuanceResponseIssuancesInnerBuilder> {
  _$ListIssuanceResponseIssuancesInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListIssuanceResponseIssuancesInnerBuilder() {
    ListIssuanceResponseIssuancesInner._defaults(this);
  }

  ListIssuanceResponseIssuancesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListIssuanceResponseIssuancesInner other) {
    _$v = other as _$ListIssuanceResponseIssuancesInner;
  }

  @override
  void update(
      void Function(ListIssuanceResponseIssuancesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListIssuanceResponseIssuancesInner build() => _build();

  _$ListIssuanceResponseIssuancesInner _build() {
    final _$result = _$v ??
        _$ListIssuanceResponseIssuancesInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ListIssuanceResponseIssuancesInner', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
