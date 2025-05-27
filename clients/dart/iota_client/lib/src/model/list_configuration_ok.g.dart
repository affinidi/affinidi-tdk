// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_configuration_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListConfigurationOK extends ListConfigurationOK {
  @override
  final BuiltList<IotaConfigurationDto> configurations;

  factory _$ListConfigurationOK(
          [void Function(ListConfigurationOKBuilder)? updates]) =>
      (ListConfigurationOKBuilder()..update(updates))._build();

  _$ListConfigurationOK._({required this.configurations}) : super._();
  @override
  ListConfigurationOK rebuild(
          void Function(ListConfigurationOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListConfigurationOKBuilder toBuilder() =>
      ListConfigurationOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListConfigurationOK &&
        configurations == other.configurations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListConfigurationOK')
          ..add('configurations', configurations))
        .toString();
  }
}

class ListConfigurationOKBuilder
    implements Builder<ListConfigurationOK, ListConfigurationOKBuilder> {
  _$ListConfigurationOK? _$v;

  ListBuilder<IotaConfigurationDto>? _configurations;
  ListBuilder<IotaConfigurationDto> get configurations =>
      _$this._configurations ??= ListBuilder<IotaConfigurationDto>();
  set configurations(ListBuilder<IotaConfigurationDto>? configurations) =>
      _$this._configurations = configurations;

  ListConfigurationOKBuilder() {
    ListConfigurationOK._defaults(this);
  }

  ListConfigurationOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurations = $v.configurations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListConfigurationOK other) {
    _$v = other as _$ListConfigurationOK;
  }

  @override
  void update(void Function(ListConfigurationOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListConfigurationOK build() => _build();

  _$ListConfigurationOK _build() {
    _$ListConfigurationOK _$result;
    try {
      _$result = _$v ??
          _$ListConfigurationOK._(
            configurations: configurations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurations';
        configurations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListConfigurationOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
