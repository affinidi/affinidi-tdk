// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consent_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsentDtoStatusEnum _$consentDtoStatusEnum_GIVEN =
    const ConsentDtoStatusEnum._('GIVEN');

ConsentDtoStatusEnum _$consentDtoStatusEnumValueOf(String name) {
  switch (name) {
    case 'GIVEN':
      return _$consentDtoStatusEnum_GIVEN;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ConsentDtoStatusEnum> _$consentDtoStatusEnumValues =
    new BuiltSet<ConsentDtoStatusEnum>(const <ConsentDtoStatusEnum>[
  _$consentDtoStatusEnum_GIVEN,
]);

Serializer<ConsentDtoStatusEnum> _$consentDtoStatusEnumSerializer =
    new _$ConsentDtoStatusEnumSerializer();

class _$ConsentDtoStatusEnumSerializer
    implements PrimitiveSerializer<ConsentDtoStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GIVEN': 'GIVEN',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GIVEN': 'GIVEN',
  };

  @override
  final Iterable<Type> types = const <Type>[ConsentDtoStatusEnum];
  @override
  final String wireName = 'ConsentDtoStatusEnum';

  @override
  Object serialize(Serializers serializers, ConsentDtoStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsentDtoStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsentDtoStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConsentDto extends ConsentDto {
  @override
  final String projectId;
  @override
  final String id;
  @override
  final String userId;
  @override
  final String vcType;
  @override
  final ConsentDtoStatusEnum status;
  @override
  final String modifiedAt;
  @override
  final String modifiedBy;
  @override
  final String createdAt;
  @override
  final String createdBy;

  factory _$ConsentDto([void Function(ConsentDtoBuilder)? updates]) =>
      (new ConsentDtoBuilder()..update(updates))._build();

  _$ConsentDto._(
      {required this.projectId,
      required this.id,
      required this.userId,
      required this.vcType,
      required this.status,
      required this.modifiedAt,
      required this.modifiedBy,
      required this.createdAt,
      required this.createdBy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        projectId, r'ConsentDto', 'projectId');
    BuiltValueNullFieldError.checkNotNull(id, r'ConsentDto', 'id');
    BuiltValueNullFieldError.checkNotNull(userId, r'ConsentDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(vcType, r'ConsentDto', 'vcType');
    BuiltValueNullFieldError.checkNotNull(status, r'ConsentDto', 'status');
    BuiltValueNullFieldError.checkNotNull(
        modifiedAt, r'ConsentDto', 'modifiedAt');
    BuiltValueNullFieldError.checkNotNull(
        modifiedBy, r'ConsentDto', 'modifiedBy');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, r'ConsentDto', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        createdBy, r'ConsentDto', 'createdBy');
  }

  @override
  ConsentDto rebuild(void Function(ConsentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsentDtoBuilder toBuilder() => new ConsentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsentDto &&
        projectId == other.projectId &&
        id == other.id &&
        userId == other.userId &&
        vcType == other.vcType &&
        status == other.status &&
        modifiedAt == other.modifiedAt &&
        modifiedBy == other.modifiedBy &&
        createdAt == other.createdAt &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, vcType.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, modifiedBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsentDto')
          ..add('projectId', projectId)
          ..add('id', id)
          ..add('userId', userId)
          ..add('vcType', vcType)
          ..add('status', status)
          ..add('modifiedAt', modifiedAt)
          ..add('modifiedBy', modifiedBy)
          ..add('createdAt', createdAt)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class ConsentDtoBuilder implements Builder<ConsentDto, ConsentDtoBuilder> {
  _$ConsentDto? _$v;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _vcType;
  String? get vcType => _$this._vcType;
  set vcType(String? vcType) => _$this._vcType = vcType;

  ConsentDtoStatusEnum? _status;
  ConsentDtoStatusEnum? get status => _$this._status;
  set status(ConsentDtoStatusEnum? status) => _$this._status = status;

  String? _modifiedAt;
  String? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(String? modifiedAt) => _$this._modifiedAt = modifiedAt;

  String? _modifiedBy;
  String? get modifiedBy => _$this._modifiedBy;
  set modifiedBy(String? modifiedBy) => _$this._modifiedBy = modifiedBy;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  ConsentDtoBuilder() {
    ConsentDto._defaults(this);
  }

  ConsentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _id = $v.id;
      _userId = $v.userId;
      _vcType = $v.vcType;
      _status = $v.status;
      _modifiedAt = $v.modifiedAt;
      _modifiedBy = $v.modifiedBy;
      _createdAt = $v.createdAt;
      _createdBy = $v.createdBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsentDto;
  }

  @override
  void update(void Function(ConsentDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsentDto build() => _build();

  _$ConsentDto _build() {
    final _$result = _$v ??
        new _$ConsentDto._(
          projectId: BuiltValueNullFieldError.checkNotNull(
              projectId, r'ConsentDto', 'projectId'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'ConsentDto', 'id'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ConsentDto', 'userId'),
          vcType: BuiltValueNullFieldError.checkNotNull(
              vcType, r'ConsentDto', 'vcType'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'ConsentDto', 'status'),
          modifiedAt: BuiltValueNullFieldError.checkNotNull(
              modifiedAt, r'ConsentDto', 'modifiedAt'),
          modifiedBy: BuiltValueNullFieldError.checkNotNull(
              modifiedBy, r'ConsentDto', 'modifiedBy'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ConsentDto', 'createdAt'),
          createdBy: BuiltValueNullFieldError.checkNotNull(
              createdBy, r'ConsentDto', 'createdBy'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
