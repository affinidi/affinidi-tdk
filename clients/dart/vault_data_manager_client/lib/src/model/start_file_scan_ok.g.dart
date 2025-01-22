// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_file_scan_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StartFileScanOKStatusEnum _$startFileScanOKStatusEnum_STARTED =
    const StartFileScanOKStatusEnum._('STARTED');
const StartFileScanOKStatusEnum _$startFileScanOKStatusEnum_FAILED =
    const StartFileScanOKStatusEnum._('FAILED');
const StartFileScanOKStatusEnum _$startFileScanOKStatusEnum_COMPLETED =
    const StartFileScanOKStatusEnum._('COMPLETED');

StartFileScanOKStatusEnum _$startFileScanOKStatusEnumValueOf(String name) {
  switch (name) {
    case 'STARTED':
      return _$startFileScanOKStatusEnum_STARTED;
    case 'FAILED':
      return _$startFileScanOKStatusEnum_FAILED;
    case 'COMPLETED':
      return _$startFileScanOKStatusEnum_COMPLETED;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<StartFileScanOKStatusEnum> _$startFileScanOKStatusEnumValues =
    new BuiltSet<StartFileScanOKStatusEnum>(const <StartFileScanOKStatusEnum>[
  _$startFileScanOKStatusEnum_STARTED,
  _$startFileScanOKStatusEnum_FAILED,
  _$startFileScanOKStatusEnum_COMPLETED,
]);

Serializer<StartFileScanOKStatusEnum> _$startFileScanOKStatusEnumSerializer =
    new _$StartFileScanOKStatusEnumSerializer();

class _$StartFileScanOKStatusEnumSerializer
    implements PrimitiveSerializer<StartFileScanOKStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'STARTED': 'STARTED',
    'FAILED': 'FAILED',
    'COMPLETED': 'COMPLETED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'STARTED': 'STARTED',
    'FAILED': 'FAILED',
    'COMPLETED': 'COMPLETED',
  };

  @override
  final Iterable<Type> types = const <Type>[StartFileScanOKStatusEnum];
  @override
  final String wireName = 'StartFileScanOKStatusEnum';

  @override
  Object serialize(Serializers serializers, StartFileScanOKStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StartFileScanOKStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StartFileScanOKStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StartFileScanOK extends StartFileScanOK {
  @override
  final String jobId;
  @override
  final StartFileScanOKStatusEnum status;

  factory _$StartFileScanOK([void Function(StartFileScanOKBuilder)? updates]) =>
      (new StartFileScanOKBuilder()..update(updates))._build();

  _$StartFileScanOK._({required this.jobId, required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(jobId, r'StartFileScanOK', 'jobId');
    BuiltValueNullFieldError.checkNotNull(status, r'StartFileScanOK', 'status');
  }

  @override
  StartFileScanOK rebuild(void Function(StartFileScanOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartFileScanOKBuilder toBuilder() =>
      new StartFileScanOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartFileScanOK &&
        jobId == other.jobId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StartFileScanOK')
          ..add('jobId', jobId)
          ..add('status', status))
        .toString();
  }
}

class StartFileScanOKBuilder
    implements Builder<StartFileScanOK, StartFileScanOKBuilder> {
  _$StartFileScanOK? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  StartFileScanOKStatusEnum? _status;
  StartFileScanOKStatusEnum? get status => _$this._status;
  set status(StartFileScanOKStatusEnum? status) => _$this._status = status;

  StartFileScanOKBuilder() {
    StartFileScanOK._defaults(this);
  }

  StartFileScanOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartFileScanOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartFileScanOK;
  }

  @override
  void update(void Function(StartFileScanOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartFileScanOK build() => _build();

  _$StartFileScanOK _build() {
    final _$result = _$v ??
        new _$StartFileScanOK._(
          jobId: BuiltValueNullFieldError.checkNotNull(
              jobId, r'StartFileScanOK', 'jobId'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'StartFileScanOK', 'status'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
