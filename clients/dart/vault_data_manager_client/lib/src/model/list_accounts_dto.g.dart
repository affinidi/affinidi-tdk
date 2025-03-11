// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_accounts_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAccountsDto extends ListAccountsDto {
  @override
  final BuiltList<AccountDto>? nodes;

  factory _$ListAccountsDto([void Function(ListAccountsDtoBuilder)? updates]) =>
      (new ListAccountsDtoBuilder()..update(updates))._build();

  _$ListAccountsDto._({this.nodes}) : super._();

  @override
  ListAccountsDto rebuild(void Function(ListAccountsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAccountsDtoBuilder toBuilder() =>
      new ListAccountsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAccountsDto && nodes == other.nodes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nodes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListAccountsDto')
          ..add('nodes', nodes))
        .toString();
  }
}

class ListAccountsDtoBuilder
    implements Builder<ListAccountsDto, ListAccountsDtoBuilder> {
  _$ListAccountsDto? _$v;

  ListBuilder<AccountDto>? _nodes;
  ListBuilder<AccountDto> get nodes =>
      _$this._nodes ??= new ListBuilder<AccountDto>();
  set nodes(ListBuilder<AccountDto>? nodes) => _$this._nodes = nodes;

  ListAccountsDtoBuilder() {
    ListAccountsDto._defaults(this);
  }

  ListAccountsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAccountsDto other) {
    ArgumentError.checkNotNull(other, 'other');
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
          new _$ListAccountsDto._(
            nodes: _nodes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListAccountsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
