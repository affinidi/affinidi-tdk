// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_issuance_input_data_inner_meta_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartIssuanceInputDataInnerMetaData
    extends StartIssuanceInputDataInnerMetaData {
  @override
  final DateTime expirationDate;

  factory _$StartIssuanceInputDataInnerMetaData(
          [void Function(StartIssuanceInputDataInnerMetaDataBuilder)?
              updates]) =>
      (new StartIssuanceInputDataInnerMetaDataBuilder()..update(updates))
          ._build();

  _$StartIssuanceInputDataInnerMetaData._({required this.expirationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(expirationDate,
        r'StartIssuanceInputDataInnerMetaData', 'expirationDate');
  }

  @override
  StartIssuanceInputDataInnerMetaData rebuild(
          void Function(StartIssuanceInputDataInnerMetaDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartIssuanceInputDataInnerMetaDataBuilder toBuilder() =>
      new StartIssuanceInputDataInnerMetaDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartIssuanceInputDataInnerMetaData &&
        expirationDate == other.expirationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expirationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartIssuanceInputDataInnerMetaData')
          ..add('expirationDate', expirationDate))
        .toString();
  }
}

class StartIssuanceInputDataInnerMetaDataBuilder
    implements
        Builder<StartIssuanceInputDataInnerMetaData,
            StartIssuanceInputDataInnerMetaDataBuilder> {
  _$StartIssuanceInputDataInnerMetaData? _$v;

  DateTime? _expirationDate;
  DateTime? get expirationDate => _$this._expirationDate;
  set expirationDate(DateTime? expirationDate) =>
      _$this._expirationDate = expirationDate;

  StartIssuanceInputDataInnerMetaDataBuilder() {
    StartIssuanceInputDataInnerMetaData._defaults(this);
  }

  StartIssuanceInputDataInnerMetaDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expirationDate = $v.expirationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartIssuanceInputDataInnerMetaData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartIssuanceInputDataInnerMetaData;
  }

  @override
  void update(
      void Function(StartIssuanceInputDataInnerMetaDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartIssuanceInputDataInnerMetaData build() => _build();

  _$StartIssuanceInputDataInnerMetaData _build() {
    final _$result = _$v ??
        new _$StartIssuanceInputDataInnerMetaData._(
          expirationDate: BuiltValueNullFieldError.checkNotNull(expirationDate,
              r'StartIssuanceInputDataInnerMetaData', 'expirationDate'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
