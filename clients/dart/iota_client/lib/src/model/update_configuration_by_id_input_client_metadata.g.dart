// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_configuration_by_id_input_client_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateConfigurationByIdInputClientMetadata
    extends UpdateConfigurationByIdInputClientMetadata {
  @override
  final String name;
  @override
  final String origin;
  @override
  final String logo;

  factory _$UpdateConfigurationByIdInputClientMetadata(
          [void Function(UpdateConfigurationByIdInputClientMetadataBuilder)?
              updates]) =>
      (new UpdateConfigurationByIdInputClientMetadataBuilder()..update(updates))
          ._build();

  _$UpdateConfigurationByIdInputClientMetadata._(
      {required this.name, required this.origin, required this.logo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'UpdateConfigurationByIdInputClientMetadata', 'name');
    BuiltValueNullFieldError.checkNotNull(
        origin, r'UpdateConfigurationByIdInputClientMetadata', 'origin');
    BuiltValueNullFieldError.checkNotNull(
        logo, r'UpdateConfigurationByIdInputClientMetadata', 'logo');
  }

  @override
  UpdateConfigurationByIdInputClientMetadata rebuild(
          void Function(UpdateConfigurationByIdInputClientMetadataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateConfigurationByIdInputClientMetadataBuilder toBuilder() =>
      new UpdateConfigurationByIdInputClientMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateConfigurationByIdInputClientMetadata &&
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
    return (newBuiltValueToStringHelper(
            r'UpdateConfigurationByIdInputClientMetadata')
          ..add('name', name)
          ..add('origin', origin)
          ..add('logo', logo))
        .toString();
  }
}

class UpdateConfigurationByIdInputClientMetadataBuilder
    implements
        Builder<UpdateConfigurationByIdInputClientMetadata,
            UpdateConfigurationByIdInputClientMetadataBuilder> {
  _$UpdateConfigurationByIdInputClientMetadata? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  UpdateConfigurationByIdInputClientMetadataBuilder() {
    UpdateConfigurationByIdInputClientMetadata._defaults(this);
  }

  UpdateConfigurationByIdInputClientMetadataBuilder get _$this {
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
  void replace(UpdateConfigurationByIdInputClientMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateConfigurationByIdInputClientMetadata;
  }

  @override
  void update(
      void Function(UpdateConfigurationByIdInputClientMetadataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateConfigurationByIdInputClientMetadata build() => _build();

  _$UpdateConfigurationByIdInputClientMetadata _build() {
    final _$result = _$v ??
        new _$UpdateConfigurationByIdInputClientMetadata._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'UpdateConfigurationByIdInputClientMetadata', 'name'),
          origin: BuiltValueNullFieldError.checkNotNull(
              origin, r'UpdateConfigurationByIdInputClientMetadata', 'origin'),
          logo: BuiltValueNullFieldError.checkNotNull(
              logo, r'UpdateConfigurationByIdInputClientMetadata', 'logo'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
