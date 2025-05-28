// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_accounts_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAccountsDto extends ListAccountsDto {
  @override
  final BuiltList<AccountDto> records;
  @override
  final String? lastEvaluatedKey;

  factory _$ListAccountsDto([void Function(ListAccountsDtoBuilder)? updates]) =>
      (ListAccountsDtoBuilder()..update(updates))._build();

  _$ListAccountsDto._({required this.records, this.lastEvaluatedKey})
      : super._();
  @override
  ListAccountsDto rebuild(void Function(ListAccountsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAccountsDtoBuilder toBuilder() => ListAccountsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAccountsDto &&
        records == other.records &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListAccountsDto')
          ..add('records', records)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ListAccountsDtoBuilder
    implements Builder<ListAccountsDto, ListAccountsDtoBuilder> {
  _$ListAccountsDto? _$v;

  ListBuilder<AccountDto>? _records;
  ListBuilder<AccountDto> get records =>
      _$this._records ??= ListBuilder<AccountDto>();
  set records(ListBuilder<AccountDto>? records) => _$this._records = records;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ListAccountsDtoBuilder() {
    ListAccountsDto._defaults(this);
  }

  ListAccountsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _records = $v.records.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAccountsDto other) {
    _$v = other as _$ListAccountsDto;
  }

  @override
  void update(void Function(ListAccountsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAccountsDto build() => _build();

  _$ListAccountsDto _build() {
    _$ListAccountsDto _$result;
    try {
      _$result = _$v ??
          _$ListAccountsDto._(
            records: records.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListAccountsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
