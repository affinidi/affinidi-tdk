// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuance_config_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IssuanceConfigListResponse extends IssuanceConfigListResponse {
  @override
  final BuiltList<IssuanceConfigMiniDto> configurations;

  factory _$IssuanceConfigListResponse(
          [void Function(IssuanceConfigListResponseBuilder)? updates]) =>
      (new IssuanceConfigListResponseBuilder()..update(updates))._build();

  _$IssuanceConfigListResponse._({required this.configurations}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurations, r'IssuanceConfigListResponse', 'configurations');
  }

  @override
  IssuanceConfigListResponse rebuild(
          void Function(IssuanceConfigListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuanceConfigListResponseBuilder toBuilder() =>
      new IssuanceConfigListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuanceConfigListResponse &&
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
    return (newBuiltValueToStringHelper(r'IssuanceConfigListResponse')
          ..add('configurations', configurations))
        .toString();
  }
}

class IssuanceConfigListResponseBuilder
    implements
        Builder<IssuanceConfigListResponse, IssuanceConfigListResponseBuilder> {
  _$IssuanceConfigListResponse? _$v;

  ListBuilder<IssuanceConfigMiniDto>? _configurations;
  ListBuilder<IssuanceConfigMiniDto> get configurations =>
      _$this._configurations ??= new ListBuilder<IssuanceConfigMiniDto>();
  set configurations(ListBuilder<IssuanceConfigMiniDto>? configurations) =>
      _$this._configurations = configurations;

  IssuanceConfigListResponseBuilder() {
    IssuanceConfigListResponse._defaults(this);
  }

  IssuanceConfigListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurations = $v.configurations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuanceConfigListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IssuanceConfigListResponse;
  }

  @override
  void update(void Function(IssuanceConfigListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IssuanceConfigListResponse build() => _build();

  _$IssuanceConfigListResponse _build() {
    _$IssuanceConfigListResponse _$result;
    try {
      _$result = _$v ??
          new _$IssuanceConfigListResponse._(
            configurations: configurations.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurations';
        configurations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IssuanceConfigListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
