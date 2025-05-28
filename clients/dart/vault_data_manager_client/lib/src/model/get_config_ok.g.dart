// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_config_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConfigOK extends GetConfigOK {
  @override
  final String profileName;
  @override
  final int maximumProfiles;

  factory _$GetConfigOK([void Function(GetConfigOKBuilder)? updates]) =>
      (GetConfigOKBuilder()..update(updates))._build();

  _$GetConfigOK._({required this.profileName, required this.maximumProfiles})
      : super._();
  @override
  GetConfigOK rebuild(void Function(GetConfigOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConfigOKBuilder toBuilder() => GetConfigOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConfigOK &&
        profileName == other.profileName &&
        maximumProfiles == other.maximumProfiles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, profileName.hashCode);
    _$hash = $jc(_$hash, maximumProfiles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetConfigOK')
          ..add('profileName', profileName)
          ..add('maximumProfiles', maximumProfiles))
        .toString();
  }
}

class GetConfigOKBuilder implements Builder<GetConfigOK, GetConfigOKBuilder> {
  _$GetConfigOK? _$v;

  String? _profileName;
  String? get profileName => _$this._profileName;
  set profileName(String? profileName) => _$this._profileName = profileName;

  int? _maximumProfiles;
  int? get maximumProfiles => _$this._maximumProfiles;
  set maximumProfiles(int? maximumProfiles) =>
      _$this._maximumProfiles = maximumProfiles;

  GetConfigOKBuilder() {
    GetConfigOK._defaults(this);
  }

  GetConfigOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profileName = $v.profileName;
      _maximumProfiles = $v.maximumProfiles;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConfigOK other) {
    _$v = other as _$GetConfigOK;
  }

  @override
  void update(void Function(GetConfigOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConfigOK build() => _build();

  _$GetConfigOK _build() {
    final _$result = _$v ??
        _$GetConfigOK._(
          profileName: BuiltValueNullFieldError.checkNotNull(
              profileName, r'GetConfigOK', 'profileName'),
          maximumProfiles: BuiltValueNullFieldError.checkNotNull(
              maximumProfiles, r'GetConfigOK', 'maximumProfiles'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
