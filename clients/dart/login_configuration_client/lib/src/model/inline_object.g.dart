// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObjectNameEnum
    _$inlineObjectNameEnum_invalidVPTokenCreationTimeError =
    const InlineObjectNameEnum._('invalidVPTokenCreationTimeError');

InlineObjectNameEnum _$inlineObjectNameEnumValueOf(String name) {
  switch (name) {
    case 'invalidVPTokenCreationTimeError':
      return _$inlineObjectNameEnum_invalidVPTokenCreationTimeError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InlineObjectNameEnum> _$inlineObjectNameEnumValues =
    BuiltSet<InlineObjectNameEnum>(const <InlineObjectNameEnum>[
  _$inlineObjectNameEnum_invalidVPTokenCreationTimeError,
]);

const InlineObjectMessageEnum _$inlineObjectMessageEnum_vPTokenHasExpired =
    const InlineObjectMessageEnum._('vPTokenHasExpired');

InlineObjectMessageEnum _$inlineObjectMessageEnumValueOf(String name) {
  switch (name) {
    case 'vPTokenHasExpired':
      return _$inlineObjectMessageEnum_vPTokenHasExpired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InlineObjectMessageEnum> _$inlineObjectMessageEnumValues =
    BuiltSet<InlineObjectMessageEnum>(const <InlineObjectMessageEnum>[
  _$inlineObjectMessageEnum_vPTokenHasExpired,
]);

const InlineObjectHttpStatusCodeEnum
    _$inlineObjectHttpStatusCodeEnum_number400 =
    const InlineObjectHttpStatusCodeEnum._('number400');

InlineObjectHttpStatusCodeEnum _$inlineObjectHttpStatusCodeEnumValueOf(
    String name) {
  switch (name) {
    case 'number400':
      return _$inlineObjectHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InlineObjectHttpStatusCodeEnum>
    _$inlineObjectHttpStatusCodeEnumValues = BuiltSet<
        InlineObjectHttpStatusCodeEnum>(const <InlineObjectHttpStatusCodeEnum>[
  _$inlineObjectHttpStatusCodeEnum_number400,
]);

Serializer<InlineObjectNameEnum> _$inlineObjectNameEnumSerializer =
    _$InlineObjectNameEnumSerializer();
Serializer<InlineObjectMessageEnum> _$inlineObjectMessageEnumSerializer =
    _$InlineObjectMessageEnumSerializer();
Serializer<InlineObjectHttpStatusCodeEnum>
    _$inlineObjectHttpStatusCodeEnumSerializer =
    _$InlineObjectHttpStatusCodeEnumSerializer();

class _$InlineObjectNameEnumSerializer
    implements PrimitiveSerializer<InlineObjectNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidVPTokenCreationTimeError': 'InvalidVPTokenCreationTimeError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidVPTokenCreationTimeError': 'invalidVPTokenCreationTimeError',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObjectNameEnum];
  @override
  final String wireName = 'InlineObjectNameEnum';

  @override
  Object serialize(Serializers serializers, InlineObjectNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObjectNameEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObjectNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineObjectMessageEnumSerializer
    implements PrimitiveSerializer<InlineObjectMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vPTokenHasExpired': 'VP token has expired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VP token has expired': 'vPTokenHasExpired',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObjectMessageEnum];
  @override
  final String wireName = 'InlineObjectMessageEnum';

  @override
  Object serialize(Serializers serializers, InlineObjectMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObjectMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObjectMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineObjectHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InlineObjectHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObjectHttpStatusCodeEnum];
  @override
  final String wireName = 'InlineObjectHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObjectHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObjectHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObjectHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InlineObject extends InlineObject {
  @override
  final OneOf oneOf;

  factory _$InlineObject([void Function(InlineObjectBuilder)? updates]) =>
      (InlineObjectBuilder()..update(updates))._build();

  _$InlineObject._({required this.oneOf}) : super._();
  @override
  InlineObject rebuild(void Function(InlineObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObjectBuilder toBuilder() => InlineObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'InlineObject')..add('oneOf', oneOf))
        .toString();
  }
}

class InlineObjectBuilder
    implements Builder<InlineObject, InlineObjectBuilder> {
  _$InlineObject? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  InlineObjectBuilder() {
    InlineObject._defaults(this);
  }

  InlineObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject other) {
    _$v = other as _$InlineObject;
  }

  @override
  void update(void Function(InlineObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InlineObject build() => _build();

  _$InlineObject _build() {
    final _$result = _$v ??
        _$InlineObject._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'InlineObject', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
