// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_nodes_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitNodesOK extends InitNodesOK {
  @override
  final ConsumerMetadataDto? consumerMetadata;
  @override
  final NodeDto? defaultProfile;

  factory _$InitNodesOK([void Function(InitNodesOKBuilder)? updates]) =>
      (InitNodesOKBuilder()..update(updates))._build();

  _$InitNodesOK._({this.consumerMetadata, this.defaultProfile}) : super._();
  @override
  InitNodesOK rebuild(void Function(InitNodesOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitNodesOKBuilder toBuilder() => InitNodesOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitNodesOK &&
        consumerMetadata == other.consumerMetadata &&
        defaultProfile == other.defaultProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, consumerMetadata.hashCode);
    _$hash = $jc(_$hash, defaultProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InitNodesOK')
          ..add('consumerMetadata', consumerMetadata)
          ..add('defaultProfile', defaultProfile))
        .toString();
  }
}

class InitNodesOKBuilder implements Builder<InitNodesOK, InitNodesOKBuilder> {
  _$InitNodesOK? _$v;

  ConsumerMetadataDtoBuilder? _consumerMetadata;
  ConsumerMetadataDtoBuilder get consumerMetadata =>
      _$this._consumerMetadata ??= ConsumerMetadataDtoBuilder();
  set consumerMetadata(ConsumerMetadataDtoBuilder? consumerMetadata) =>
      _$this._consumerMetadata = consumerMetadata;

  NodeDto? _defaultProfile;
  NodeDto? get defaultProfile => _$this._defaultProfile;
  set defaultProfile(NodeDto? defaultProfile) =>
      _$this._defaultProfile = defaultProfile;

  InitNodesOKBuilder() {
    InitNodesOK._defaults(this);
  }

  InitNodesOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consumerMetadata = $v.consumerMetadata?.toBuilder();
      _defaultProfile = $v.defaultProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitNodesOK other) {
    _$v = other as _$InitNodesOK;
  }

  @override
  void update(void Function(InitNodesOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitNodesOK build() => _build();

  _$InitNodesOK _build() {
    _$InitNodesOK _$result;
    try {
      _$result = _$v ??
          _$InitNodesOK._(
            consumerMetadata: _consumerMetadata?.build(),
            defaultProfile: defaultProfile,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consumerMetadata';
        _consumerMetadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InitNodesOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
