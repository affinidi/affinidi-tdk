// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_iota_configuration_meta_data_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIotaConfigurationMetaDataOK extends GetIotaConfigurationMetaDataOK {
  @override
  final String name;
  @override
  final String origin;
  @override
  final String logo;

  factory _$GetIotaConfigurationMetaDataOK(
          [void Function(GetIotaConfigurationMetaDataOKBuilder)? updates]) =>
      (new GetIotaConfigurationMetaDataOKBuilder()..update(updates))._build();

  _$GetIotaConfigurationMetaDataOK._(
      {required this.name, required this.origin, required this.logo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'GetIotaConfigurationMetaDataOK', 'name');
    BuiltValueNullFieldError.checkNotNull(
        origin, r'GetIotaConfigurationMetaDataOK', 'origin');
    BuiltValueNullFieldError.checkNotNull(
        logo, r'GetIotaConfigurationMetaDataOK', 'logo');
  }

  @override
  GetIotaConfigurationMetaDataOK rebuild(
          void Function(GetIotaConfigurationMetaDataOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIotaConfigurationMetaDataOKBuilder toBuilder() =>
      new GetIotaConfigurationMetaDataOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIotaConfigurationMetaDataOK &&
        name == other.name &&
        origin == other.origin &&
        logo == other.logo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetIotaConfigurationMetaDataOK')
          ..add('name', name)
          ..add('origin', origin)
          ..add('logo', logo))
        .toString();
  }
}

class GetIotaConfigurationMetaDataOKBuilder
    implements
        Builder<GetIotaConfigurationMetaDataOK,
            GetIotaConfigurationMetaDataOKBuilder> {
  _$GetIotaConfigurationMetaDataOK? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  GetIotaConfigurationMetaDataOKBuilder() {
    GetIotaConfigurationMetaDataOK._defaults(this);
  }

  GetIotaConfigurationMetaDataOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _origin = $v.origin;
      _logo = $v.logo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIotaConfigurationMetaDataOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIotaConfigurationMetaDataOK;
  }

  @override
  void update(void Function(GetIotaConfigurationMetaDataOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIotaConfigurationMetaDataOK build() => _build();

  _$GetIotaConfigurationMetaDataOK _build() {
    final _$result = _$v ??
        new _$GetIotaConfigurationMetaDataOK._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'GetIotaConfigurationMetaDataOK', 'name'),
          origin: BuiltValueNullFieldError.checkNotNull(
              origin, r'GetIotaConfigurationMetaDataOK', 'origin'),
          logo: BuiltValueNullFieldError.checkNotNull(
              logo, r'GetIotaConfigurationMetaDataOK', 'logo'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
