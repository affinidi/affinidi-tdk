// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GrantAccessInputRightsEnum _$grantAccessInputRightsEnum_READ =
    const GrantAccessInputRightsEnum._('READ');
const GrantAccessInputRightsEnum _$grantAccessInputRightsEnum_WRITE =
    const GrantAccessInputRightsEnum._('WRITE');

GrantAccessInputRightsEnum _$grantAccessInputRightsEnumValueOf(String name) {
  switch (name) {
    case 'READ':
      return _$grantAccessInputRightsEnum_READ;
    case 'WRITE':
      return _$grantAccessInputRightsEnum_WRITE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GrantAccessInputRightsEnum> _$grantAccessInputRightsEnumValues =
    new BuiltSet<GrantAccessInputRightsEnum>(const <GrantAccessInputRightsEnum>[
  _$grantAccessInputRightsEnum_READ,
  _$grantAccessInputRightsEnum_WRITE,
]);

Serializer<GrantAccessInputRightsEnum> _$grantAccessInputRightsEnumSerializer =
    new _$GrantAccessInputRightsEnumSerializer();

class _$GrantAccessInputRightsEnumSerializer
    implements PrimitiveSerializer<GrantAccessInputRightsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'READ': 'READ',
    'WRITE': 'WRITE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'READ': 'READ',
    'WRITE': 'WRITE',
  };

  @override
  final Iterable<Type> types = const <Type>[GrantAccessInputRightsEnum];
  @override
  final String wireName = 'GrantAccessInputRightsEnum';

  @override
  Object serialize(Serializers serializers, GrantAccessInputRightsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GrantAccessInputRightsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GrantAccessInputRightsEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateProfileInput extends CreateProfileInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final EdekInfo edekInfo;
  @override
  final String dek;
  @override
  final String? metadata;
  @override
  final String? subjectDid;
  @override
  final BuiltList<GrantAccessInputRightsEnum>? rights;

  factory _$CreateProfileInput(
          [void Function(CreateProfileInputBuilder)? updates]) =>
      (new CreateProfileInputBuilder()..update(updates))._build();

  _$CreateProfileInput._(
      {required this.name,
      this.description,
      required this.edekInfo,
      required this.dek,
      this.metadata,
      this.subjectDid,
      this.rights})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CreateProfileInput', 'name');
    BuiltValueNullFieldError.checkNotNull(
        edekInfo, r'CreateProfileInput', 'edekInfo');
    BuiltValueNullFieldError.checkNotNull(dek, r'CreateProfileInput', 'dek');
  }

  @override
  CreateProfileInput rebuild(
          void Function(CreateProfileInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateProfileInputBuilder toBuilder() =>
      new CreateProfileInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateProfileInput &&
        name == other.name &&
        description == other.description &&
        edekInfo == other.edekInfo &&
        dek == other.dek &&
        metadata == other.metadata &&
        subjectDid == other.subjectDid &&
        rights == other.rights;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, edekInfo.hashCode);
    _$hash = $jc(_$hash, dek.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, subjectDid.hashCode);
    _$hash = $jc(_$hash, rights.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateProfileInput')
          ..add('name', name)
          ..add('description', description)
          ..add('edekInfo', edekInfo)
          ..add('dek', dek)
          ..add('metadata', metadata)
          ..add('subjectDid', subjectDid)
          ..add('rights', rights))
        .toString();
  }
}

class CreateProfileInputBuilder
    implements Builder<CreateProfileInput, CreateProfileInputBuilder> {
  _$CreateProfileInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  EdekInfoBuilder? _edekInfo;
  EdekInfoBuilder get edekInfo => _$this._edekInfo ??= new EdekInfoBuilder();
  set edekInfo(EdekInfoBuilder? edekInfo) => _$this._edekInfo = edekInfo;

  String? _dek;
  String? get dek => _$this._dek;
  set dek(String? dek) => _$this._dek = dek;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(String? metadata) => _$this._metadata = metadata;

  String? _subjectDid;
  String? get subjectDid => _$this._subjectDid;
  set subjectDid(String? subjectDid) => _$this._subjectDid = subjectDid;

  ListBuilder<GrantAccessInputRightsEnum>? _rights;
  ListBuilder<GrantAccessInputRightsEnum> get rights =>
      _$this._rights ??= new ListBuilder<GrantAccessInputRightsEnum>();
  set rights(ListBuilder<GrantAccessInputRightsEnum>? rights) =>
      _$this._rights = rights;

  CreateProfileInputBuilder() {
    CreateProfileInput._defaults(this);
  }

  CreateProfileInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _edekInfo = $v.edekInfo.toBuilder();
      _dek = $v.dek;
      _metadata = $v.metadata;
      _subjectDid = $v.subjectDid;
      _rights = $v.rights?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateProfileInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateProfileInput;
  }

  @override
  void update(void Function(CreateProfileInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateProfileInput build() => _build();

  _$CreateProfileInput _build() {
    _$CreateProfileInput _$result;
    try {
      _$result = _$v ??
          new _$CreateProfileInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateProfileInput', 'name'),
            description: description,
            edekInfo: edekInfo.build(),
            dek: BuiltValueNullFieldError.checkNotNull(
                dek, r'CreateProfileInput', 'dek'),
            metadata: metadata,
            subjectDid: subjectDid,
            rights: _rights?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edekInfo';
        edekInfo.build();

        _$failedField = 'rights';
        _rights?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateProfileInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
