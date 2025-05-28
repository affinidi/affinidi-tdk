// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_credential_status400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChangeCredentialStatus400ResponseNameEnum
    _$changeCredentialStatus400ResponseNameEnum_changeStatusForbiddenError =
    const ChangeCredentialStatus400ResponseNameEnum._(
        'changeStatusForbiddenError');

ChangeCredentialStatus400ResponseNameEnum
    _$changeCredentialStatus400ResponseNameEnumValueOf(String name) {
  switch (name) {
    case 'changeStatusForbiddenError':
      return _$changeCredentialStatus400ResponseNameEnum_changeStatusForbiddenError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChangeCredentialStatus400ResponseNameEnum>
    _$changeCredentialStatus400ResponseNameEnumValues = BuiltSet<
        ChangeCredentialStatus400ResponseNameEnum>(const <ChangeCredentialStatus400ResponseNameEnum>[
  _$changeCredentialStatus400ResponseNameEnum_changeStatusForbiddenError,
]);

const ChangeCredentialStatus400ResponseMessageEnum
    _$changeCredentialStatus400ResponseMessageEnum_relatedVCStatusCannotBeChanged =
    const ChangeCredentialStatus400ResponseMessageEnum._(
        'relatedVCStatusCannotBeChanged');

ChangeCredentialStatus400ResponseMessageEnum
    _$changeCredentialStatus400ResponseMessageEnumValueOf(String name) {
  switch (name) {
    case 'relatedVCStatusCannotBeChanged':
      return _$changeCredentialStatus400ResponseMessageEnum_relatedVCStatusCannotBeChanged;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChangeCredentialStatus400ResponseMessageEnum>
    _$changeCredentialStatus400ResponseMessageEnumValues = BuiltSet<
        ChangeCredentialStatus400ResponseMessageEnum>(const <ChangeCredentialStatus400ResponseMessageEnum>[
  _$changeCredentialStatus400ResponseMessageEnum_relatedVCStatusCannotBeChanged,
]);

const ChangeCredentialStatus400ResponseHttpStatusCodeEnum
    _$changeCredentialStatus400ResponseHttpStatusCodeEnum_number400 =
    const ChangeCredentialStatus400ResponseHttpStatusCodeEnum._('number400');

ChangeCredentialStatus400ResponseHttpStatusCodeEnum
    _$changeCredentialStatus400ResponseHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$changeCredentialStatus400ResponseHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ChangeCredentialStatus400ResponseHttpStatusCodeEnum>
    _$changeCredentialStatus400ResponseHttpStatusCodeEnumValues = BuiltSet<
        ChangeCredentialStatus400ResponseHttpStatusCodeEnum>(const <ChangeCredentialStatus400ResponseHttpStatusCodeEnum>[
  _$changeCredentialStatus400ResponseHttpStatusCodeEnum_number400,
]);

Serializer<ChangeCredentialStatus400ResponseNameEnum>
    _$changeCredentialStatus400ResponseNameEnumSerializer =
    _$ChangeCredentialStatus400ResponseNameEnumSerializer();
Serializer<ChangeCredentialStatus400ResponseMessageEnum>
    _$changeCredentialStatus400ResponseMessageEnumSerializer =
    _$ChangeCredentialStatus400ResponseMessageEnumSerializer();
Serializer<ChangeCredentialStatus400ResponseHttpStatusCodeEnum>
    _$changeCredentialStatus400ResponseHttpStatusCodeEnumSerializer =
    _$ChangeCredentialStatus400ResponseHttpStatusCodeEnumSerializer();

class _$ChangeCredentialStatus400ResponseNameEnumSerializer
    implements PrimitiveSerializer<ChangeCredentialStatus400ResponseNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'changeStatusForbiddenError': 'ChangeStatusForbiddenError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ChangeStatusForbiddenError': 'changeStatusForbiddenError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChangeCredentialStatus400ResponseNameEnum
  ];
  @override
  final String wireName = 'ChangeCredentialStatus400ResponseNameEnum';

  @override
  Object serialize(Serializers serializers,
          ChangeCredentialStatus400ResponseNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChangeCredentialStatus400ResponseNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChangeCredentialStatus400ResponseNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChangeCredentialStatus400ResponseMessageEnumSerializer
    implements
        PrimitiveSerializer<ChangeCredentialStatus400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'relatedVCStatusCannotBeChanged': 'Related VC status cannot be changed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Related VC status cannot be changed': 'relatedVCStatusCannotBeChanged',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChangeCredentialStatus400ResponseMessageEnum
  ];
  @override
  final String wireName = 'ChangeCredentialStatus400ResponseMessageEnum';

  @override
  Object serialize(Serializers serializers,
          ChangeCredentialStatus400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChangeCredentialStatus400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChangeCredentialStatus400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChangeCredentialStatus400ResponseHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<
            ChangeCredentialStatus400ResponseHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChangeCredentialStatus400ResponseHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'ChangeCredentialStatus400ResponseHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          ChangeCredentialStatus400ResponseHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChangeCredentialStatus400ResponseHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChangeCredentialStatus400ResponseHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChangeCredentialStatus400Response
    extends ChangeCredentialStatus400Response {
  @override
  final OneOf oneOf;

  factory _$ChangeCredentialStatus400Response(
          [void Function(ChangeCredentialStatus400ResponseBuilder)? updates]) =>
      (ChangeCredentialStatus400ResponseBuilder()..update(updates))._build();

  _$ChangeCredentialStatus400Response._({required this.oneOf}) : super._();
  @override
  ChangeCredentialStatus400Response rebuild(
          void Function(ChangeCredentialStatus400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeCredentialStatus400ResponseBuilder toBuilder() =>
      ChangeCredentialStatus400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeCredentialStatus400Response && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeCredentialStatus400Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class ChangeCredentialStatus400ResponseBuilder
    implements
        Builder<ChangeCredentialStatus400Response,
            ChangeCredentialStatus400ResponseBuilder> {
  _$ChangeCredentialStatus400Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  ChangeCredentialStatus400ResponseBuilder() {
    ChangeCredentialStatus400Response._defaults(this);
  }

  ChangeCredentialStatus400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeCredentialStatus400Response other) {
    _$v = other as _$ChangeCredentialStatus400Response;
  }

  @override
  void update(
      void Function(ChangeCredentialStatus400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeCredentialStatus400Response build() => _build();

  _$ChangeCredentialStatus400Response _build() {
    final _$result = _$v ??
        _$ChangeCredentialStatus400Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'ChangeCredentialStatus400Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
