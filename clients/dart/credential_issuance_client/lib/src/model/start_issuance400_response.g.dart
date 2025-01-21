// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_issuance400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StartIssuance400ResponseNameEnum
    _$startIssuance400ResponseNameEnum_missingHolderDidError =
    const StartIssuance400ResponseNameEnum._('missingHolderDidError');

StartIssuance400ResponseNameEnum _$startIssuance400ResponseNameEnumValueOf(
    String name) {
  switch (name) {
    case 'missingHolderDidError':
      return _$startIssuance400ResponseNameEnum_missingHolderDidError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<StartIssuance400ResponseNameEnum>
    _$startIssuance400ResponseNameEnumValues = new BuiltSet<
        StartIssuance400ResponseNameEnum>(const <StartIssuance400ResponseNameEnum>[
  _$startIssuance400ResponseNameEnum_missingHolderDidError,
]);

const StartIssuance400ResponseMessageEnum
    _$startIssuance400ResponseMessageEnum_holderDIDIsRequiredInThisClaimMode =
    const StartIssuance400ResponseMessageEnum._(
        'holderDIDIsRequiredInThisClaimMode');

StartIssuance400ResponseMessageEnum
    _$startIssuance400ResponseMessageEnumValueOf(String name) {
  switch (name) {
    case 'holderDIDIsRequiredInThisClaimMode':
      return _$startIssuance400ResponseMessageEnum_holderDIDIsRequiredInThisClaimMode;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<StartIssuance400ResponseMessageEnum>
    _$startIssuance400ResponseMessageEnumValues = new BuiltSet<
        StartIssuance400ResponseMessageEnum>(const <StartIssuance400ResponseMessageEnum>[
  _$startIssuance400ResponseMessageEnum_holderDIDIsRequiredInThisClaimMode,
]);

const StartIssuance400ResponseHttpStatusCodeEnum
    _$startIssuance400ResponseHttpStatusCodeEnum_number400 =
    const StartIssuance400ResponseHttpStatusCodeEnum._('number400');

StartIssuance400ResponseHttpStatusCodeEnum
    _$startIssuance400ResponseHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$startIssuance400ResponseHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<StartIssuance400ResponseHttpStatusCodeEnum>
    _$startIssuance400ResponseHttpStatusCodeEnumValues = new BuiltSet<
        StartIssuance400ResponseHttpStatusCodeEnum>(const <StartIssuance400ResponseHttpStatusCodeEnum>[
  _$startIssuance400ResponseHttpStatusCodeEnum_number400,
]);

Serializer<StartIssuance400ResponseNameEnum>
    _$startIssuance400ResponseNameEnumSerializer =
    new _$StartIssuance400ResponseNameEnumSerializer();
Serializer<StartIssuance400ResponseMessageEnum>
    _$startIssuance400ResponseMessageEnumSerializer =
    new _$StartIssuance400ResponseMessageEnumSerializer();
Serializer<StartIssuance400ResponseHttpStatusCodeEnum>
    _$startIssuance400ResponseHttpStatusCodeEnumSerializer =
    new _$StartIssuance400ResponseHttpStatusCodeEnumSerializer();

class _$StartIssuance400ResponseNameEnumSerializer
    implements PrimitiveSerializer<StartIssuance400ResponseNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'missingHolderDidError': 'MissingHolderDidError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MissingHolderDidError': 'missingHolderDidError',
  };

  @override
  final Iterable<Type> types = const <Type>[StartIssuance400ResponseNameEnum];
  @override
  final String wireName = 'StartIssuance400ResponseNameEnum';

  @override
  Object serialize(
          Serializers serializers, StartIssuance400ResponseNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StartIssuance400ResponseNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StartIssuance400ResponseNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StartIssuance400ResponseMessageEnumSerializer
    implements PrimitiveSerializer<StartIssuance400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'holderDIDIsRequiredInThisClaimMode':
        'holderDID is required in this claimMode',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'holderDID is required in this claimMode':
        'holderDIDIsRequiredInThisClaimMode',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StartIssuance400ResponseMessageEnum
  ];
  @override
  final String wireName = 'StartIssuance400ResponseMessageEnum';

  @override
  Object serialize(
          Serializers serializers, StartIssuance400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StartIssuance400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StartIssuance400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StartIssuance400ResponseHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<StartIssuance400ResponseHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    StartIssuance400ResponseHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'StartIssuance400ResponseHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          StartIssuance400ResponseHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StartIssuance400ResponseHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StartIssuance400ResponseHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StartIssuance400Response extends StartIssuance400Response {
  @override
  final OneOf oneOf;

  factory _$StartIssuance400Response(
          [void Function(StartIssuance400ResponseBuilder)? updates]) =>
      (new StartIssuance400ResponseBuilder()..update(updates))._build();

  _$StartIssuance400Response._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'StartIssuance400Response', 'oneOf');
  }

  @override
  StartIssuance400Response rebuild(
          void Function(StartIssuance400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartIssuance400ResponseBuilder toBuilder() =>
      new StartIssuance400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartIssuance400Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'StartIssuance400Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class StartIssuance400ResponseBuilder
    implements
        Builder<StartIssuance400Response, StartIssuance400ResponseBuilder> {
  _$StartIssuance400Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  StartIssuance400ResponseBuilder() {
    StartIssuance400Response._defaults(this);
  }

  StartIssuance400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartIssuance400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartIssuance400Response;
  }

  @override
  void update(void Function(StartIssuance400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartIssuance400Response build() => _build();

  _$StartIssuance400Response _build() {
    final _$result = _$v ??
        new _$StartIssuance400Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'StartIssuance400Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
