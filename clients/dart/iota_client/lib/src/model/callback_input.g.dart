// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CallbackInput extends CallbackInput {
  @override
  final String state;
  @override
  final String? presentationSubmission;
  @override
  final String? vpToken;
  @override
  final String? error;
  @override
  final String? errorDescription;
  @override
  final bool? onboarded;

  factory _$CallbackInput([void Function(CallbackInputBuilder)? updates]) =>
      (new CallbackInputBuilder()..update(updates))._build();

  _$CallbackInput._(
      {required this.state,
      this.presentationSubmission,
      this.vpToken,
      this.error,
      this.errorDescription,
      this.onboarded})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(state, r'CallbackInput', 'state');
  }

  @override
  CallbackInput rebuild(void Function(CallbackInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CallbackInputBuilder toBuilder() => new CallbackInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CallbackInput &&
        state == other.state &&
        presentationSubmission == other.presentationSubmission &&
        vpToken == other.vpToken &&
        error == other.error &&
        errorDescription == other.errorDescription &&
        onboarded == other.onboarded;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, presentationSubmission.hashCode);
    _$hash = $jc(_$hash, vpToken.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, errorDescription.hashCode);
    _$hash = $jc(_$hash, onboarded.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CallbackInput')
          ..add('state', state)
          ..add('presentationSubmission', presentationSubmission)
          ..add('vpToken', vpToken)
          ..add('error', error)
          ..add('errorDescription', errorDescription)
          ..add('onboarded', onboarded))
        .toString();
  }
}

class CallbackInputBuilder
    implements Builder<CallbackInput, CallbackInputBuilder> {
  _$CallbackInput? _$v;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _presentationSubmission;
  String? get presentationSubmission => _$this._presentationSubmission;
  set presentationSubmission(String? presentationSubmission) =>
      _$this._presentationSubmission = presentationSubmission;

  String? _vpToken;
  String? get vpToken => _$this._vpToken;
  set vpToken(String? vpToken) => _$this._vpToken = vpToken;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _errorDescription;
  String? get errorDescription => _$this._errorDescription;
  set errorDescription(String? errorDescription) =>
      _$this._errorDescription = errorDescription;

  bool? _onboarded;
  bool? get onboarded => _$this._onboarded;
  set onboarded(bool? onboarded) => _$this._onboarded = onboarded;

  CallbackInputBuilder() {
    CallbackInput._defaults(this);
  }

  CallbackInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _presentationSubmission = $v.presentationSubmission;
      _vpToken = $v.vpToken;
      _error = $v.error;
      _errorDescription = $v.errorDescription;
      _onboarded = $v.onboarded;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CallbackInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CallbackInput;
  }

  @override
  void update(void Function(CallbackInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CallbackInput build() => _build();

  _$CallbackInput _build() {
    final _$result = _$v ??
        new _$CallbackInput._(
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'CallbackInput', 'state'),
          presentationSubmission: presentationSubmission,
          vpToken: vpToken,
          error: error,
          errorDescription: errorDescription,
          onboarded: onboarded,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
