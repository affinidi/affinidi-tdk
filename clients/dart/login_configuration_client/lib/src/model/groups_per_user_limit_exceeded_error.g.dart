// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_per_user_limit_exceeded_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GroupsPerUserLimitExceededErrorNameEnum
    _$groupsPerUserLimitExceededErrorNameEnum_groupsPerUserLimitExceededError =
    const GroupsPerUserLimitExceededErrorNameEnum._(
        'groupsPerUserLimitExceededError');

GroupsPerUserLimitExceededErrorNameEnum
    _$groupsPerUserLimitExceededErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'groupsPerUserLimitExceededError':
      return _$groupsPerUserLimitExceededErrorNameEnum_groupsPerUserLimitExceededError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GroupsPerUserLimitExceededErrorNameEnum>
    _$groupsPerUserLimitExceededErrorNameEnumValues = BuiltSet<
        GroupsPerUserLimitExceededErrorNameEnum>(const <GroupsPerUserLimitExceededErrorNameEnum>[
  _$groupsPerUserLimitExceededErrorNameEnum_groupsPerUserLimitExceededError,
]);

const GroupsPerUserLimitExceededErrorMessageEnum
    _$groupsPerUserLimitExceededErrorMessageEnum_amountOfGroupsPerUserIsLimitedPeriod =
    const GroupsPerUserLimitExceededErrorMessageEnum._(
        'amountOfGroupsPerUserIsLimitedPeriod');

GroupsPerUserLimitExceededErrorMessageEnum
    _$groupsPerUserLimitExceededErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'amountOfGroupsPerUserIsLimitedPeriod':
      return _$groupsPerUserLimitExceededErrorMessageEnum_amountOfGroupsPerUserIsLimitedPeriod;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GroupsPerUserLimitExceededErrorMessageEnum>
    _$groupsPerUserLimitExceededErrorMessageEnumValues = BuiltSet<
        GroupsPerUserLimitExceededErrorMessageEnum>(const <GroupsPerUserLimitExceededErrorMessageEnum>[
  _$groupsPerUserLimitExceededErrorMessageEnum_amountOfGroupsPerUserIsLimitedPeriod,
]);

const GroupsPerUserLimitExceededErrorHttpStatusCodeEnum
    _$groupsPerUserLimitExceededErrorHttpStatusCodeEnum_number409 =
    const GroupsPerUserLimitExceededErrorHttpStatusCodeEnum._('number409');

GroupsPerUserLimitExceededErrorHttpStatusCodeEnum
    _$groupsPerUserLimitExceededErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number409':
      return _$groupsPerUserLimitExceededErrorHttpStatusCodeEnum_number409;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GroupsPerUserLimitExceededErrorHttpStatusCodeEnum>
    _$groupsPerUserLimitExceededErrorHttpStatusCodeEnumValues = BuiltSet<
        GroupsPerUserLimitExceededErrorHttpStatusCodeEnum>(const <GroupsPerUserLimitExceededErrorHttpStatusCodeEnum>[
  _$groupsPerUserLimitExceededErrorHttpStatusCodeEnum_number409,
]);

Serializer<GroupsPerUserLimitExceededErrorNameEnum>
    _$groupsPerUserLimitExceededErrorNameEnumSerializer =
    _$GroupsPerUserLimitExceededErrorNameEnumSerializer();
Serializer<GroupsPerUserLimitExceededErrorMessageEnum>
    _$groupsPerUserLimitExceededErrorMessageEnumSerializer =
    _$GroupsPerUserLimitExceededErrorMessageEnumSerializer();
Serializer<GroupsPerUserLimitExceededErrorHttpStatusCodeEnum>
    _$groupsPerUserLimitExceededErrorHttpStatusCodeEnumSerializer =
    _$GroupsPerUserLimitExceededErrorHttpStatusCodeEnumSerializer();

class _$GroupsPerUserLimitExceededErrorNameEnumSerializer
    implements PrimitiveSerializer<GroupsPerUserLimitExceededErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'groupsPerUserLimitExceededError': 'GroupsPerUserLimitExceededError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GroupsPerUserLimitExceededError': 'groupsPerUserLimitExceededError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GroupsPerUserLimitExceededErrorNameEnum
  ];
  @override
  final String wireName = 'GroupsPerUserLimitExceededErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          GroupsPerUserLimitExceededErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GroupsPerUserLimitExceededErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GroupsPerUserLimitExceededErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GroupsPerUserLimitExceededErrorMessageEnumSerializer
    implements PrimitiveSerializer<GroupsPerUserLimitExceededErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'amountOfGroupsPerUserIsLimitedPeriod':
        'Amount of groups per user is limited.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Amount of groups per user is limited.':
        'amountOfGroupsPerUserIsLimitedPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GroupsPerUserLimitExceededErrorMessageEnum
  ];
  @override
  final String wireName = 'GroupsPerUserLimitExceededErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          GroupsPerUserLimitExceededErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GroupsPerUserLimitExceededErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GroupsPerUserLimitExceededErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GroupsPerUserLimitExceededErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<GroupsPerUserLimitExceededErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number409': 409,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    409: 'number409',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GroupsPerUserLimitExceededErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'GroupsPerUserLimitExceededErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          GroupsPerUserLimitExceededErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GroupsPerUserLimitExceededErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GroupsPerUserLimitExceededErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GroupsPerUserLimitExceededError
    extends GroupsPerUserLimitExceededError {
  @override
  final GroupsPerUserLimitExceededErrorNameEnum name;
  @override
  final GroupsPerUserLimitExceededErrorMessageEnum message;
  @override
  final GroupsPerUserLimitExceededErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$GroupsPerUserLimitExceededError(
          [void Function(GroupsPerUserLimitExceededErrorBuilder)? updates]) =>
      (GroupsPerUserLimitExceededErrorBuilder()..update(updates))._build();

  _$GroupsPerUserLimitExceededError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  GroupsPerUserLimitExceededError rebuild(
          void Function(GroupsPerUserLimitExceededErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupsPerUserLimitExceededErrorBuilder toBuilder() =>
      GroupsPerUserLimitExceededErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupsPerUserLimitExceededError &&
        name == other.name &&
        message == other.message &&
        httpStatusCode == other.httpStatusCode &&
        traceId == other.traceId &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, httpStatusCode.hashCode);
    _$hash = $jc(_$hash, traceId.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupsPerUserLimitExceededError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class GroupsPerUserLimitExceededErrorBuilder
    implements
        Builder<GroupsPerUserLimitExceededError,
            GroupsPerUserLimitExceededErrorBuilder> {
  _$GroupsPerUserLimitExceededError? _$v;

  GroupsPerUserLimitExceededErrorNameEnum? _name;
  GroupsPerUserLimitExceededErrorNameEnum? get name => _$this._name;
  set name(GroupsPerUserLimitExceededErrorNameEnum? name) =>
      _$this._name = name;

  GroupsPerUserLimitExceededErrorMessageEnum? _message;
  GroupsPerUserLimitExceededErrorMessageEnum? get message => _$this._message;
  set message(GroupsPerUserLimitExceededErrorMessageEnum? message) =>
      _$this._message = message;

  GroupsPerUserLimitExceededErrorHttpStatusCodeEnum? _httpStatusCode;
  GroupsPerUserLimitExceededErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          GroupsPerUserLimitExceededErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  GroupsPerUserLimitExceededErrorBuilder() {
    GroupsPerUserLimitExceededError._defaults(this);
  }

  GroupsPerUserLimitExceededErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _message = $v.message;
      _httpStatusCode = $v.httpStatusCode;
      _traceId = $v.traceId;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupsPerUserLimitExceededError other) {
    _$v = other as _$GroupsPerUserLimitExceededError;
  }

  @override
  void update(void Function(GroupsPerUserLimitExceededErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupsPerUserLimitExceededError build() => _build();

  _$GroupsPerUserLimitExceededError _build() {
    _$GroupsPerUserLimitExceededError _$result;
    try {
      _$result = _$v ??
          _$GroupsPerUserLimitExceededError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GroupsPerUserLimitExceededError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'GroupsPerUserLimitExceededError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'GroupsPerUserLimitExceededError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'GroupsPerUserLimitExceededError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GroupsPerUserLimitExceededError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
