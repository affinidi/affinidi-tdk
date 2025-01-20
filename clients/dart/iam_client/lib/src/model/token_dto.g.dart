// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenDto extends TokenDto {
  @override
  final String id;
  @override
  final String ari;
  @override
  final String ownerAri;
  @override
  final String name;
  @override
  final TokenAuthenticationMethodDto authenticationMethod;
  @override
  final BuiltList<String> scopes;

  factory _$TokenDto([void Function(TokenDtoBuilder)? updates]) =>
      (new TokenDtoBuilder()..update(updates))._build();

  _$TokenDto._(
      {required this.id,
      required this.ari,
      required this.ownerAri,
      required this.name,
      required this.authenticationMethod,
      required this.scopes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TokenDto', 'id');
    BuiltValueNullFieldError.checkNotNull(ari, r'TokenDto', 'ari');
    BuiltValueNullFieldError.checkNotNull(ownerAri, r'TokenDto', 'ownerAri');
    BuiltValueNullFieldError.checkNotNull(name, r'TokenDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        authenticationMethod, r'TokenDto', 'authenticationMethod');
    BuiltValueNullFieldError.checkNotNull(scopes, r'TokenDto', 'scopes');
  }

  @override
  TokenDto rebuild(void Function(TokenDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenDtoBuilder toBuilder() => new TokenDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenDto &&
        id == other.id &&
        ari == other.ari &&
        ownerAri == other.ownerAri &&
        name == other.name &&
        authenticationMethod == other.authenticationMethod &&
        scopes == other.scopes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, ownerAri.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, authenticationMethod.hashCode);
    _$hash = $jc(_$hash, scopes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenDto')
          ..add('id', id)
          ..add('ari', ari)
          ..add('ownerAri', ownerAri)
          ..add('name', name)
          ..add('authenticationMethod', authenticationMethod)
          ..add('scopes', scopes))
        .toString();
  }
}

class TokenDtoBuilder implements Builder<TokenDto, TokenDtoBuilder> {
  _$TokenDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  String? _ownerAri;
  String? get ownerAri => _$this._ownerAri;
  set ownerAri(String? ownerAri) => _$this._ownerAri = ownerAri;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TokenAuthenticationMethodDtoBuilder? _authenticationMethod;
  TokenAuthenticationMethodDtoBuilder get authenticationMethod =>
      _$this._authenticationMethod ??=
          new TokenAuthenticationMethodDtoBuilder();
  set authenticationMethod(
          TokenAuthenticationMethodDtoBuilder? authenticationMethod) =>
      _$this._authenticationMethod = authenticationMethod;

  ListBuilder<String>? _scopes;
  ListBuilder<String> get scopes =>
      _$this._scopes ??= new ListBuilder<String>();
  set scopes(ListBuilder<String>? scopes) => _$this._scopes = scopes;

  TokenDtoBuilder() {
    TokenDto._defaults(this);
  }

  TokenDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _ari = $v.ari;
      _ownerAri = $v.ownerAri;
      _name = $v.name;
      _authenticationMethod = $v.authenticationMethod.toBuilder();
      _scopes = $v.scopes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenDto;
  }

  @override
  void update(void Function(TokenDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenDto build() => _build();

  _$TokenDto _build() {
    _$TokenDto _$result;
    try {
      _$result = _$v ??
          new _$TokenDto._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'TokenDto', 'id'),
            ari: BuiltValueNullFieldError.checkNotNull(ari, r'TokenDto', 'ari'),
            ownerAri: BuiltValueNullFieldError.checkNotNull(
                ownerAri, r'TokenDto', 'ownerAri'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'TokenDto', 'name'),
            authenticationMethod: authenticationMethod.build(),
            scopes: scopes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authenticationMethod';
        authenticationMethod.build();
        _$failedField = 'scopes';
        scopes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TokenDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
