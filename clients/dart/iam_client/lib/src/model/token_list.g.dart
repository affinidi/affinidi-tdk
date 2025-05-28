// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenList extends TokenList {
  @override
  final BuiltList<TokenDto> tokens;
  @override
  final String? lastEvaluatedKey;

  factory _$TokenList([void Function(TokenListBuilder)? updates]) =>
      (TokenListBuilder()..update(updates))._build();

  _$TokenList._({required this.tokens, this.lastEvaluatedKey}) : super._();
  @override
  TokenList rebuild(void Function(TokenListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenListBuilder toBuilder() => TokenListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenList &&
        tokens == other.tokens &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenList')
          ..add('tokens', tokens)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class TokenListBuilder implements Builder<TokenList, TokenListBuilder> {
  _$TokenList? _$v;

  ListBuilder<TokenDto>? _tokens;
  ListBuilder<TokenDto> get tokens =>
      _$this._tokens ??= ListBuilder<TokenDto>();
  set tokens(ListBuilder<TokenDto>? tokens) => _$this._tokens = tokens;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  TokenListBuilder() {
    TokenList._defaults(this);
  }

  TokenListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokens = $v.tokens.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenList other) {
    _$v = other as _$TokenList;
  }

  @override
  void update(void Function(TokenListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenList build() => _build();

  _$TokenList _build() {
    _$TokenList _$result;
    try {
      _$result = _$v ??
          _$TokenList._(
            tokens: tokens.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tokens';
        tokens.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TokenList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
