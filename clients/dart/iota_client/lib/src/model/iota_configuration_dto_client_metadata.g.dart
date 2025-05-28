// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iota_configuration_dto_client_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IotaConfigurationDtoClientMetadata
    extends IotaConfigurationDtoClientMetadata {
  @override
  final String name;
  @override
  final String origin;
  @override
  final String logo;

  factory _$IotaConfigurationDtoClientMetadata(
          [void Function(IotaConfigurationDtoClientMetadataBuilder)?
              updates]) =>
      (IotaConfigurationDtoClientMetadataBuilder()..update(updates))._build();

  _$IotaConfigurationDtoClientMetadata._(
      {required this.name, required this.origin, required this.logo})
      : super._();
  @override
  IotaConfigurationDtoClientMetadata rebuild(
          void Function(IotaConfigurationDtoClientMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IotaConfigurationDtoClientMetadataBuilder toBuilder() =>
      IotaConfigurationDtoClientMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IotaConfigurationDtoClientMetadata &&
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
    return (newBuiltValueToStringHelper(r'IotaConfigurationDtoClientMetadata')
          ..add('name', name)
          ..add('origin', origin)
          ..add('logo', logo))
        .toString();
  }
}

class IotaConfigurationDtoClientMetadataBuilder
    implements
        Builder<IotaConfigurationDtoClientMetadata,
            IotaConfigurationDtoClientMetadataBuilder> {
  _$IotaConfigurationDtoClientMetadata? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  IotaConfigurationDtoClientMetadataBuilder() {
    IotaConfigurationDtoClientMetadata._defaults(this);
  }

  IotaConfigurationDtoClientMetadataBuilder get _$this {
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
  void replace(IotaConfigurationDtoClientMetadata other) {
    _$v = other as _$IotaConfigurationDtoClientMetadata;
  }

  @override
  void update(
      void Function(IotaConfigurationDtoClientMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IotaConfigurationDtoClientMetadata build() => _build();

  _$IotaConfigurationDtoClientMetadata _build() {
    final _$result = _$v ??
        _$IotaConfigurationDtoClientMetadata._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'IotaConfigurationDtoClientMetadata', 'name'),
          origin: BuiltValueNullFieldError.checkNotNull(
              origin, r'IotaConfigurationDtoClientMetadata', 'origin'),
          logo: BuiltValueNullFieldError.checkNotNull(
              logo, r'IotaConfigurationDtoClientMetadata', 'logo'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
