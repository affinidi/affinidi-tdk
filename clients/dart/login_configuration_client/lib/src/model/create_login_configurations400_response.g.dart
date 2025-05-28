// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_login_configurations400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateLoginConfigurations400ResponseNameEnum
    _$createLoginConfigurations400ResponseNameEnum_createProjectNetworkError =
    const CreateLoginConfigurations400ResponseNameEnum._(
        'createProjectNetworkError');

CreateLoginConfigurations400ResponseNameEnum
    _$createLoginConfigurations400ResponseNameEnumValueOf(String name) {
  switch (name) {
    case 'createProjectNetworkError':
      return _$createLoginConfigurations400ResponseNameEnum_createProjectNetworkError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateLoginConfigurations400ResponseNameEnum>
    _$createLoginConfigurations400ResponseNameEnumValues = BuiltSet<
        CreateLoginConfigurations400ResponseNameEnum>(const <CreateLoginConfigurations400ResponseNameEnum>[
  _$createLoginConfigurations400ResponseNameEnum_createProjectNetworkError,
]);

const CreateLoginConfigurations400ResponseMessageEnum
    _$createLoginConfigurations400ResponseMessageEnum_createProjectNetworkError =
    const CreateLoginConfigurations400ResponseMessageEnum._(
        'createProjectNetworkError');

CreateLoginConfigurations400ResponseMessageEnum
    _$createLoginConfigurations400ResponseMessageEnumValueOf(String name) {
  switch (name) {
    case 'createProjectNetworkError':
      return _$createLoginConfigurations400ResponseMessageEnum_createProjectNetworkError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateLoginConfigurations400ResponseMessageEnum>
    _$createLoginConfigurations400ResponseMessageEnumValues = BuiltSet<
        CreateLoginConfigurations400ResponseMessageEnum>(const <CreateLoginConfigurations400ResponseMessageEnum>[
  _$createLoginConfigurations400ResponseMessageEnum_createProjectNetworkError,
]);

const CreateLoginConfigurations400ResponseHttpStatusCodeEnum
    _$createLoginConfigurations400ResponseHttpStatusCodeEnum_number400 =
    const CreateLoginConfigurations400ResponseHttpStatusCodeEnum._('number400');

CreateLoginConfigurations400ResponseHttpStatusCodeEnum
    _$createLoginConfigurations400ResponseHttpStatusCodeEnumValueOf(
        String name) {
  switch (name) {
    case 'number400':
      return _$createLoginConfigurations400ResponseHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateLoginConfigurations400ResponseHttpStatusCodeEnum>
    _$createLoginConfigurations400ResponseHttpStatusCodeEnumValues = BuiltSet<
        CreateLoginConfigurations400ResponseHttpStatusCodeEnum>(const <CreateLoginConfigurations400ResponseHttpStatusCodeEnum>[
  _$createLoginConfigurations400ResponseHttpStatusCodeEnum_number400,
]);

Serializer<CreateLoginConfigurations400ResponseNameEnum>
    _$createLoginConfigurations400ResponseNameEnumSerializer =
    _$CreateLoginConfigurations400ResponseNameEnumSerializer();
Serializer<CreateLoginConfigurations400ResponseMessageEnum>
    _$createLoginConfigurations400ResponseMessageEnumSerializer =
    _$CreateLoginConfigurations400ResponseMessageEnumSerializer();
Serializer<CreateLoginConfigurations400ResponseHttpStatusCodeEnum>
    _$createLoginConfigurations400ResponseHttpStatusCodeEnumSerializer =
    _$CreateLoginConfigurations400ResponseHttpStatusCodeEnumSerializer();

class _$CreateLoginConfigurations400ResponseNameEnumSerializer
    implements
        PrimitiveSerializer<CreateLoginConfigurations400ResponseNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'createProjectNetworkError': 'CreateProjectNetworkError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CreateProjectNetworkError': 'createProjectNetworkError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateLoginConfigurations400ResponseNameEnum
  ];
  @override
  final String wireName = 'CreateLoginConfigurations400ResponseNameEnum';

  @override
  Object serialize(Serializers serializers,
          CreateLoginConfigurations400ResponseNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateLoginConfigurations400ResponseNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateLoginConfigurations400ResponseNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateLoginConfigurations400ResponseMessageEnumSerializer
    implements
        PrimitiveSerializer<CreateLoginConfigurations400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'createProjectNetworkError': 'CreateProjectNetworkError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CreateProjectNetworkError': 'createProjectNetworkError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateLoginConfigurations400ResponseMessageEnum
  ];
  @override
  final String wireName = 'CreateLoginConfigurations400ResponseMessageEnum';

  @override
  Object serialize(Serializers serializers,
          CreateLoginConfigurations400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateLoginConfigurations400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateLoginConfigurations400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateLoginConfigurations400ResponseHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<
            CreateLoginConfigurations400ResponseHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateLoginConfigurations400ResponseHttpStatusCodeEnum
  ];
  @override
  final String wireName =
      'CreateLoginConfigurations400ResponseHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          CreateLoginConfigurations400ResponseHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateLoginConfigurations400ResponseHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateLoginConfigurations400ResponseHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateLoginConfigurations400Response
    extends CreateLoginConfigurations400Response {
  @override
  final OneOf oneOf;

  factory _$CreateLoginConfigurations400Response(
          [void Function(CreateLoginConfigurations400ResponseBuilder)?
              updates]) =>
      (CreateLoginConfigurations400ResponseBuilder()..update(updates))._build();

  _$CreateLoginConfigurations400Response._({required this.oneOf}) : super._();
  @override
  CreateLoginConfigurations400Response rebuild(
          void Function(CreateLoginConfigurations400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLoginConfigurations400ResponseBuilder toBuilder() =>
      CreateLoginConfigurations400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLoginConfigurations400Response &&
        oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'CreateLoginConfigurations400Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateLoginConfigurations400ResponseBuilder
    implements
        Builder<CreateLoginConfigurations400Response,
            CreateLoginConfigurations400ResponseBuilder> {
  _$CreateLoginConfigurations400Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateLoginConfigurations400ResponseBuilder() {
    CreateLoginConfigurations400Response._defaults(this);
  }

  CreateLoginConfigurations400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLoginConfigurations400Response other) {
    _$v = other as _$CreateLoginConfigurations400Response;
  }

  @override
  void update(
      void Function(CreateLoginConfigurations400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLoginConfigurations400Response build() => _build();

  _$CreateLoginConfigurations400Response _build() {
    final _$result = _$v ??
        _$CreateLoginConfigurations400Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateLoginConfigurations400Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
