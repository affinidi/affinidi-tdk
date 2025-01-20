// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_iotavp_response_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FetchIOTAVPResponseOK extends FetchIOTAVPResponseOK {
  @override
  final String? correlationId;
  @override
  final String? presentationSubmission;
  @override
  final String? vpToken;

  factory _$FetchIOTAVPResponseOK(
          [void Function(FetchIOTAVPResponseOKBuilder)? updates]) =>
      (new FetchIOTAVPResponseOKBuilder()..update(updates))._build();

  _$FetchIOTAVPResponseOK._(
      {this.correlationId, this.presentationSubmission, this.vpToken})
      : super._();

  @override
  FetchIOTAVPResponseOK rebuild(
          void Function(FetchIOTAVPResponseOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchIOTAVPResponseOKBuilder toBuilder() =>
      new FetchIOTAVPResponseOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchIOTAVPResponseOK &&
        correlationId == other.correlationId &&
        presentationSubmission == other.presentationSubmission &&
        vpToken == other.vpToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jc(_$hash, presentationSubmission.hashCode);
    _$hash = $jc(_$hash, vpToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FetchIOTAVPResponseOK')
          ..add('correlationId', correlationId)
          ..add('presentationSubmission', presentationSubmission)
          ..add('vpToken', vpToken))
        .toString();
  }
}

class FetchIOTAVPResponseOKBuilder
    implements Builder<FetchIOTAVPResponseOK, FetchIOTAVPResponseOKBuilder> {
  _$FetchIOTAVPResponseOK? _$v;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  String? _presentationSubmission;
  String? get presentationSubmission => _$this._presentationSubmission;
  set presentationSubmission(String? presentationSubmission) =>
      _$this._presentationSubmission = presentationSubmission;

  String? _vpToken;
  String? get vpToken => _$this._vpToken;
  set vpToken(String? vpToken) => _$this._vpToken = vpToken;

  FetchIOTAVPResponseOKBuilder() {
    FetchIOTAVPResponseOK._defaults(this);
  }

  FetchIOTAVPResponseOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _correlationId = $v.correlationId;
      _presentationSubmission = $v.presentationSubmission;
      _vpToken = $v.vpToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchIOTAVPResponseOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FetchIOTAVPResponseOK;
  }

  @override
  void update(void Function(FetchIOTAVPResponseOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FetchIOTAVPResponseOK build() => _build();

  _$FetchIOTAVPResponseOK _build() {
    final _$result = _$v ??
        new _$FetchIOTAVPResponseOK._(
          correlationId: correlationId,
          presentationSubmission: presentationSubmission,
          vpToken: vpToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
