// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_issuance_input_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartIssuanceInputDataInner extends StartIssuanceInputDataInner {
  @override
  final String credentialTypeId;
  @override
  final BuiltMap<String, JsonObject?> credentialData;
  @override
  final BuiltList<StartIssuanceInputDataInnerStatusListDetailsInner>?
      statusListDetails;
  @override
  final StartIssuanceInputDataInnerMetaData? metaData;

  factory _$StartIssuanceInputDataInner(
          [void Function(StartIssuanceInputDataInnerBuilder)? updates]) =>
      (new StartIssuanceInputDataInnerBuilder()..update(updates))._build();

  _$StartIssuanceInputDataInner._(
      {required this.credentialTypeId,
      required this.credentialData,
      this.statusListDetails,
      this.metaData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        credentialTypeId, r'StartIssuanceInputDataInner', 'credentialTypeId');
    BuiltValueNullFieldError.checkNotNull(
        credentialData, r'StartIssuanceInputDataInner', 'credentialData');
  }

  @override
  StartIssuanceInputDataInner rebuild(
          void Function(StartIssuanceInputDataInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartIssuanceInputDataInnerBuilder toBuilder() =>
      new StartIssuanceInputDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartIssuanceInputDataInner &&
        credentialTypeId == other.credentialTypeId &&
        credentialData == other.credentialData &&
        statusListDetails == other.statusListDetails &&
        metaData == other.metaData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentialTypeId.hashCode);
    _$hash = $jc(_$hash, credentialData.hashCode);
    _$hash = $jc(_$hash, statusListDetails.hashCode);
    _$hash = $jc(_$hash, metaData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartIssuanceInputDataInner')
          ..add('credentialTypeId', credentialTypeId)
          ..add('credentialData', credentialData)
          ..add('statusListDetails', statusListDetails)
          ..add('metaData', metaData))
        .toString();
  }
}

class StartIssuanceInputDataInnerBuilder
    implements
        Builder<StartIssuanceInputDataInner,
            StartIssuanceInputDataInnerBuilder> {
  _$StartIssuanceInputDataInner? _$v;

  String? _credentialTypeId;
  String? get credentialTypeId => _$this._credentialTypeId;
  set credentialTypeId(String? credentialTypeId) =>
      _$this._credentialTypeId = credentialTypeId;

  MapBuilder<String, JsonObject?>? _credentialData;
  MapBuilder<String, JsonObject?> get credentialData =>
      _$this._credentialData ??= new MapBuilder<String, JsonObject?>();
  set credentialData(MapBuilder<String, JsonObject?>? credentialData) =>
      _$this._credentialData = credentialData;

  ListBuilder<StartIssuanceInputDataInnerStatusListDetailsInner>?
      _statusListDetails;
  ListBuilder<StartIssuanceInputDataInnerStatusListDetailsInner>
      get statusListDetails => _$this._statusListDetails ??=
          new ListBuilder<StartIssuanceInputDataInnerStatusListDetailsInner>();
  set statusListDetails(
          ListBuilder<StartIssuanceInputDataInnerStatusListDetailsInner>?
              statusListDetails) =>
      _$this._statusListDetails = statusListDetails;

  StartIssuanceInputDataInnerMetaDataBuilder? _metaData;
  StartIssuanceInputDataInnerMetaDataBuilder get metaData =>
      _$this._metaData ??= new StartIssuanceInputDataInnerMetaDataBuilder();
  set metaData(StartIssuanceInputDataInnerMetaDataBuilder? metaData) =>
      _$this._metaData = metaData;

  StartIssuanceInputDataInnerBuilder() {
    StartIssuanceInputDataInner._defaults(this);
  }

  StartIssuanceInputDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialTypeId = $v.credentialTypeId;
      _credentialData = $v.credentialData.toBuilder();
      _statusListDetails = $v.statusListDetails?.toBuilder();
      _metaData = $v.metaData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartIssuanceInputDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartIssuanceInputDataInner;
  }

  @override
  void update(void Function(StartIssuanceInputDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartIssuanceInputDataInner build() => _build();

  _$StartIssuanceInputDataInner _build() {
    _$StartIssuanceInputDataInner _$result;
    try {
      _$result = _$v ??
          new _$StartIssuanceInputDataInner._(
            credentialTypeId: BuiltValueNullFieldError.checkNotNull(
                credentialTypeId,
                r'StartIssuanceInputDataInner',
                'credentialTypeId'),
            credentialData: credentialData.build(),
            statusListDetails: _statusListDetails?.build(),
            metaData: _metaData?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentialData';
        credentialData.build();
        _$failedField = 'statusListDetails';
        _statusListDetails?.build();
        _$failedField = 'metaData';
        _metaData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartIssuanceInputDataInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
