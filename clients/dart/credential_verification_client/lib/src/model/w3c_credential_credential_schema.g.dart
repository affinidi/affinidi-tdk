// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_credential_credential_schema.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cCredentialCredentialSchema extends W3cCredentialCredentialSchema {
  @override
  final String? id;
  @override
  final String? type;

  factory _$W3cCredentialCredentialSchema(
          [void Function(W3cCredentialCredentialSchemaBuilder)? updates]) =>
      (new W3cCredentialCredentialSchemaBuilder()..update(updates))._build();

  _$W3cCredentialCredentialSchema._({this.id, this.type}) : super._();

  @override
  W3cCredentialCredentialSchema rebuild(
          void Function(W3cCredentialCredentialSchemaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cCredentialCredentialSchemaBuilder toBuilder() =>
      new W3cCredentialCredentialSchemaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cCredentialCredentialSchema &&
        id == other.id &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'W3cCredentialCredentialSchema')
          ..add('id', id)
          ..add('type', type))
        .toString();
  }
}

class W3cCredentialCredentialSchemaBuilder
    implements
        Builder<W3cCredentialCredentialSchema,
            W3cCredentialCredentialSchemaBuilder> {
  _$W3cCredentialCredentialSchema? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  W3cCredentialCredentialSchemaBuilder() {
    W3cCredentialCredentialSchema._defaults(this);
  }

  W3cCredentialCredentialSchemaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cCredentialCredentialSchema other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$W3cCredentialCredentialSchema;
  }

  @override
  void update(void Function(W3cCredentialCredentialSchemaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cCredentialCredentialSchema build() => _build();

  _$W3cCredentialCredentialSchema _build() {
    final _$result = _$v ??
        new _$W3cCredentialCredentialSchema._(
          id: id,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
