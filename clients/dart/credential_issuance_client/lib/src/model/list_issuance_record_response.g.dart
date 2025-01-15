// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_issuance_record_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListIssuanceRecordResponse extends ListIssuanceRecordResponse {
  @override
  final BuiltList<FlowData>? flowData;
  @override
  final String? lastEvaluatedKey;

  factory _$ListIssuanceRecordResponse(
          [void Function(ListIssuanceRecordResponseBuilder)? updates]) =>
      (new ListIssuanceRecordResponseBuilder()..update(updates))._build();

  _$ListIssuanceRecordResponse._({this.flowData, this.lastEvaluatedKey})
      : super._();

  @override
  ListIssuanceRecordResponse rebuild(
          void Function(ListIssuanceRecordResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListIssuanceRecordResponseBuilder toBuilder() =>
      new ListIssuanceRecordResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListIssuanceRecordResponse &&
        flowData == other.flowData &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, flowData.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListIssuanceRecordResponse')
          ..add('flowData', flowData)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ListIssuanceRecordResponseBuilder
    implements
        Builder<ListIssuanceRecordResponse, ListIssuanceRecordResponseBuilder> {
  _$ListIssuanceRecordResponse? _$v;

  ListBuilder<FlowData>? _flowData;
  ListBuilder<FlowData> get flowData =>
      _$this._flowData ??= new ListBuilder<FlowData>();
  set flowData(ListBuilder<FlowData>? flowData) => _$this._flowData = flowData;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ListIssuanceRecordResponseBuilder() {
    ListIssuanceRecordResponse._defaults(this);
  }

  ListIssuanceRecordResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _flowData = $v.flowData?.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListIssuanceRecordResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListIssuanceRecordResponse;
  }

  @override
  void update(void Function(ListIssuanceRecordResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListIssuanceRecordResponse build() => _build();

  _$ListIssuanceRecordResponse _build() {
    _$ListIssuanceRecordResponse _$result;
    try {
      _$result = _$v ??
          new _$ListIssuanceRecordResponse._(
            flowData: _flowData?.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'flowData';
        _flowData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListIssuanceRecordResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
