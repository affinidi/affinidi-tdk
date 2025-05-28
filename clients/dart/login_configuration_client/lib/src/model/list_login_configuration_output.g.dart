// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_login_configuration_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListLoginConfigurationOutput extends ListLoginConfigurationOutput {
  @override
  final BuiltList<LoginConfigurationObject> configurations;
  @override
  final String? lastEvaluatedKey;

  factory _$ListLoginConfigurationOutput(
          [void Function(ListLoginConfigurationOutputBuilder)? updates]) =>
      (ListLoginConfigurationOutputBuilder()..update(updates))._build();

  _$ListLoginConfigurationOutput._(
      {required this.configurations, this.lastEvaluatedKey})
      : super._();
  @override
  ListLoginConfigurationOutput rebuild(
          void Function(ListLoginConfigurationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListLoginConfigurationOutputBuilder toBuilder() =>
      ListLoginConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListLoginConfigurationOutput &&
        configurations == other.configurations &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurations.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListLoginConfigurationOutput')
          ..add('configurations', configurations)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ListLoginConfigurationOutputBuilder
    implements
        Builder<ListLoginConfigurationOutput,
            ListLoginConfigurationOutputBuilder> {
  _$ListLoginConfigurationOutput? _$v;

  ListBuilder<LoginConfigurationObject>? _configurations;
  ListBuilder<LoginConfigurationObject> get configurations =>
      _$this._configurations ??= ListBuilder<LoginConfigurationObject>();
  set configurations(ListBuilder<LoginConfigurationObject>? configurations) =>
      _$this._configurations = configurations;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ListLoginConfigurationOutputBuilder() {
    ListLoginConfigurationOutput._defaults(this);
  }

  ListLoginConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurations = $v.configurations.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListLoginConfigurationOutput other) {
    _$v = other as _$ListLoginConfigurationOutput;
  }

  @override
  void update(void Function(ListLoginConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListLoginConfigurationOutput build() => _build();

  _$ListLoginConfigurationOutput _build() {
    _$ListLoginConfigurationOutput _$result;
    try {
      _$result = _$v ??
          _$ListLoginConfigurationOutput._(
            configurations: configurations.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurations';
        configurations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListLoginConfigurationOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
