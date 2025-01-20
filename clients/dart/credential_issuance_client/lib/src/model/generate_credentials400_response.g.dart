// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_credentials400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GenerateCredentials400ResponseNameEnum
    _$generateCredentials400ResponseNameEnum_invalidProofError =
    const GenerateCredentials400ResponseNameEnum._('invalidProofError');

GenerateCredentials400ResponseNameEnum
    _$generateCredentials400ResponseNameEnumValueOf(String name) {
  switch (name) {
    case 'invalidProofError':
      return _$generateCredentials400ResponseNameEnum_invalidProofError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GenerateCredentials400ResponseNameEnum>
    _$generateCredentials400ResponseNameEnumValues = new BuiltSet<
        GenerateCredentials400ResponseNameEnum>(const <GenerateCredentials400ResponseNameEnum>[
  _$generateCredentials400ResponseNameEnum_invalidProofError,
]);

const GenerateCredentials400ResponseMessageEnum
    _$generateCredentials400ResponseMessageEnum_theProofInTheCredentialRequestIsInvalid =
    const GenerateCredentials400ResponseMessageEnum._(
        'theProofInTheCredentialRequestIsInvalid');

GenerateCredentials400ResponseMessageEnum
    _$generateCredentials400ResponseMessageEnumValueOf(String name) {
  switch (name) {
    case 'theProofInTheCredentialRequestIsInvalid':
      return _$generateCredentials400ResponseMessageEnum_theProofInTheCredentialRequestIsInvalid;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GenerateCredentials400ResponseMessageEnum>
    _$generateCredentials400ResponseMessageEnumValues = new BuiltSet<
        GenerateCredentials400ResponseMessageEnum>(const <GenerateCredentials400ResponseMessageEnum>[
  _$generateCredentials400ResponseMessageEnum_theProofInTheCredentialRequestIsInvalid,
]);

const GenerateCredentials400ResponseHttpStatusCodeEnum
    _$generateCredentials400ResponseHttpStatusCodeEnum_number400 =
    const GenerateCredentials400ResponseHttpStatusCodeEnum._('number400');

GenerateCredentials400ResponseHttpStatusCodeEnum
    _$generateCredentials400ResponseHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$generateCredentials400ResponseHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GenerateCredentials400ResponseHttpStatusCodeEnum>
    _$generateCredentials400ResponseHttpStatusCodeEnumValues = new BuiltSet<
        GenerateCredentials400ResponseHttpStatusCodeEnum>(const <GenerateCredentials400ResponseHttpStatusCodeEnum>[
  _$generateCredentials400ResponseHttpStatusCodeEnum_number400,
]);

Serializer<GenerateCredentials400ResponseNameEnum>
    _$generateCredentials400ResponseNameEnumSerializer =
    new _$GenerateCredentials400ResponseNameEnumSerializer();
Serializer<GenerateCredentials400ResponseMessageEnum>
    _$generateCredentials400ResponseMessageEnumSerializer =
    new _$GenerateCredentials400ResponseMessageEnumSerializer();
Serializer<GenerateCredentials400ResponseHttpStatusCodeEnum>
    _$generateCredentials400ResponseHttpStatusCodeEnumSerializer =
    new _$GenerateCredentials400ResponseHttpStatusCodeEnumSerializer();

class _$GenerateCredentials400ResponseNameEnumSerializer
    implements PrimitiveSerializer<GenerateCredentials400ResponseNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidProofError': 'InvalidProofError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidProofError': 'invalidProofError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GenerateCredentials400ResponseNameEnum
  ];
  @override
  final String wireName = 'GenerateCredentials400ResponseNameEnum';

  @override
  Object serialize(Serializers serializers,
          GenerateCredentials400ResponseNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GenerateCredentials400ResponseNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GenerateCredentials400ResponseNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GenerateCredentials400ResponseMessageEnumSerializer
    implements PrimitiveSerializer<GenerateCredentials400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'theProofInTheCredentialRequestIsInvalid':
        'The proof in the Credential Request is invalid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'The proof in the Credential Request is invalid':
        'theProofInTheCredentialRequestIsInvalid',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GenerateCredentials400ResponseMessageEnum
  ];
  @override
  final String wireName = 'GenerateCredentials400ResponseMessageEnum';

  @override
  Object serialize(Serializers serializers,
          GenerateCredentials400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GenerateCredentials400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GenerateCredentials400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GenerateCredentials400ResponseHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<GenerateCredentials400ResponseHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GenerateCredentials400ResponseHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'GenerateCredentials400ResponseHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          GenerateCredentials400ResponseHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GenerateCredentials400ResponseHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GenerateCredentials400ResponseHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GenerateCredentials400Response extends GenerateCredentials400Response {
  @override
  final OneOf oneOf;

  factory _$GenerateCredentials400Response(
          [void Function(GenerateCredentials400ResponseBuilder)? updates]) =>
      (new GenerateCredentials400ResponseBuilder()..update(updates))._build();

  _$GenerateCredentials400Response._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'GenerateCredentials400Response', 'oneOf');
  }

  @override
  GenerateCredentials400Response rebuild(
          void Function(GenerateCredentials400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenerateCredentials400ResponseBuilder toBuilder() =>
      new GenerateCredentials400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateCredentials400Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'GenerateCredentials400Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class GenerateCredentials400ResponseBuilder
    implements
        Builder<GenerateCredentials400Response,
            GenerateCredentials400ResponseBuilder> {
  _$GenerateCredentials400Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  GenerateCredentials400ResponseBuilder() {
    GenerateCredentials400Response._defaults(this);
  }

  GenerateCredentials400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenerateCredentials400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenerateCredentials400Response;
  }

  @override
  void update(void Function(GenerateCredentials400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenerateCredentials400Response build() => _build();

  _$GenerateCredentials400Response _build() {
    final _$result = _$v ??
        new _$GenerateCredentials400Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'GenerateCredentials400Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
