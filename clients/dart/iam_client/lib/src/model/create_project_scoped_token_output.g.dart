// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_scoped_token_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateProjectScopedTokenOutput extends CreateProjectScopedTokenOutput {
  @override
  final String accessToken;
  @override
  final int expiresIn;
  @override
  final String scope;

  factory _$CreateProjectScopedTokenOutput(
          [void Function(CreateProjectScopedTokenOutputBuilder)? updates]) =>
      (CreateProjectScopedTokenOutputBuilder()..update(updates))._build();

  _$CreateProjectScopedTokenOutput._(
      {required this.accessToken, required this.expiresIn, required this.scope})
      : super._();
  @override
  CreateProjectScopedTokenOutput rebuild(
          void Function(CreateProjectScopedTokenOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateProjectScopedTokenOutputBuilder toBuilder() =>
      CreateProjectScopedTokenOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateProjectScopedTokenOutput &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateProjectScopedTokenOutput')
          ..add('accessToken', accessToken)
          ..add('expiresIn', expiresIn)
          ..add('scope', scope))
        .toString();
  }
}

class CreateProjectScopedTokenOutputBuilder
    implements
        Builder<CreateProjectScopedTokenOutput,
            CreateProjectScopedTokenOutputBuilder> {
  _$CreateProjectScopedTokenOutput? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  CreateProjectScopedTokenOutputBuilder() {
    CreateProjectScopedTokenOutput._defaults(this);
  }

  CreateProjectScopedTokenOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _expiresIn = $v.expiresIn;
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateProjectScopedTokenOutput other) {
    _$v = other as _$CreateProjectScopedTokenOutput;
  }

  @override
  void update(void Function(CreateProjectScopedTokenOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateProjectScopedTokenOutput build() => _build();

  _$CreateProjectScopedTokenOutput _build() {
    final _$result = _$v ??
        _$CreateProjectScopedTokenOutput._(
          accessToken: BuiltValueNullFieldError.checkNotNull(
              accessToken, r'CreateProjectScopedTokenOutput', 'accessToken'),
          expiresIn: BuiltValueNullFieldError.checkNotNull(
              expiresIn, r'CreateProjectScopedTokenOutput', 'expiresIn'),
          scope: BuiltValueNullFieldError.checkNotNull(
              scope, r'CreateProjectScopedTokenOutput', 'scope'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
