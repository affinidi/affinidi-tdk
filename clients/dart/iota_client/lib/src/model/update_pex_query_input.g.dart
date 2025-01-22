// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_pex_query_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdatePexQueryInput extends UpdatePexQueryInput {
  @override
  final String? vpDefinition;
  @override
  final String? description;

  factory _$UpdatePexQueryInput(
          [void Function(UpdatePexQueryInputBuilder)? updates]) =>
      (new UpdatePexQueryInputBuilder()..update(updates))._build();

  _$UpdatePexQueryInput._({this.vpDefinition, this.description}) : super._();

  @override
  UpdatePexQueryInput rebuild(
          void Function(UpdatePexQueryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdatePexQueryInputBuilder toBuilder() =>
      new UpdatePexQueryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdatePexQueryInput &&
        vpDefinition == other.vpDefinition &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpDefinition.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdatePexQueryInput')
          ..add('vpDefinition', vpDefinition)
          ..add('description', description))
        .toString();
  }
}

class UpdatePexQueryInputBuilder
    implements Builder<UpdatePexQueryInput, UpdatePexQueryInputBuilder> {
  _$UpdatePexQueryInput? _$v;

  String? _vpDefinition;
  String? get vpDefinition => _$this._vpDefinition;
  set vpDefinition(String? vpDefinition) => _$this._vpDefinition = vpDefinition;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdatePexQueryInputBuilder() {
    UpdatePexQueryInput._defaults(this);
  }

  UpdatePexQueryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpDefinition = $v.vpDefinition;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdatePexQueryInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdatePexQueryInput;
  }

  @override
  void update(void Function(UpdatePexQueryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdatePexQueryInput build() => _build();

  _$UpdatePexQueryInput _build() {
    final _$result = _$v ??
        new _$UpdatePexQueryInput._(
          vpDefinition: vpDefinition,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
