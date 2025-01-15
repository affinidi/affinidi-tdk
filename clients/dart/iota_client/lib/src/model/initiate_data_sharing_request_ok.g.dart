// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_data_sharing_request_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InitiateDataSharingRequestOK extends InitiateDataSharingRequestOK {
  @override
  final InitiateDataSharingRequestOKData? data;

  factory _$InitiateDataSharingRequestOK(
          [void Function(InitiateDataSharingRequestOKBuilder)? updates]) =>
      (new InitiateDataSharingRequestOKBuilder()..update(updates))._build();

  _$InitiateDataSharingRequestOK._({this.data}) : super._();

  @override
  InitiateDataSharingRequestOK rebuild(
          void Function(InitiateDataSharingRequestOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InitiateDataSharingRequestOKBuilder toBuilder() =>
      new InitiateDataSharingRequestOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiateDataSharingRequestOK && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InitiateDataSharingRequestOK')
          ..add('data', data))
        .toString();
  }
}

class InitiateDataSharingRequestOKBuilder
    implements
        Builder<InitiateDataSharingRequestOK,
            InitiateDataSharingRequestOKBuilder> {
  _$InitiateDataSharingRequestOK? _$v;

  InitiateDataSharingRequestOKDataBuilder? _data;
  InitiateDataSharingRequestOKDataBuilder get data =>
      _$this._data ??= new InitiateDataSharingRequestOKDataBuilder();
  set data(InitiateDataSharingRequestOKDataBuilder? data) =>
      _$this._data = data;

  InitiateDataSharingRequestOKBuilder() {
    InitiateDataSharingRequestOK._defaults(this);
  }

  InitiateDataSharingRequestOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InitiateDataSharingRequestOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InitiateDataSharingRequestOK;
  }

  @override
  void update(void Function(InitiateDataSharingRequestOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InitiateDataSharingRequestOK build() => _build();

  _$InitiateDataSharingRequestOK _build() {
    _$InitiateDataSharingRequestOK _$result;
    try {
      _$result = _$v ??
          new _$InitiateDataSharingRequestOK._(
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InitiateDataSharingRequestOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
