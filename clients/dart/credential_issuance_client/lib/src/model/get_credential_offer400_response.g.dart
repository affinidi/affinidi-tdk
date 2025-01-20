// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_credential_offer400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetCredentialOffer400ResponseNameEnum
    _$getCredentialOffer400ResponseNameEnum_vcClaimedError =
    const GetCredentialOffer400ResponseNameEnum._('vcClaimedError');

GetCredentialOffer400ResponseNameEnum
    _$getCredentialOffer400ResponseNameEnumValueOf(String name) {
  switch (name) {
    case 'vcClaimedError':
      return _$getCredentialOffer400ResponseNameEnum_vcClaimedError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GetCredentialOffer400ResponseNameEnum>
    _$getCredentialOffer400ResponseNameEnumValues = new BuiltSet<
        GetCredentialOffer400ResponseNameEnum>(const <GetCredentialOffer400ResponseNameEnum>[
  _$getCredentialOffer400ResponseNameEnum_vcClaimedError,
]);

const GetCredentialOffer400ResponseMessageEnum
    _$getCredentialOffer400ResponseMessageEnum_theRequestedVCHasAlreadyBeenClaimedByTheUser =
    const GetCredentialOffer400ResponseMessageEnum._(
        'theRequestedVCHasAlreadyBeenClaimedByTheUser');

GetCredentialOffer400ResponseMessageEnum
    _$getCredentialOffer400ResponseMessageEnumValueOf(String name) {
  switch (name) {
    case 'theRequestedVCHasAlreadyBeenClaimedByTheUser':
      return _$getCredentialOffer400ResponseMessageEnum_theRequestedVCHasAlreadyBeenClaimedByTheUser;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GetCredentialOffer400ResponseMessageEnum>
    _$getCredentialOffer400ResponseMessageEnumValues = new BuiltSet<
        GetCredentialOffer400ResponseMessageEnum>(const <GetCredentialOffer400ResponseMessageEnum>[
  _$getCredentialOffer400ResponseMessageEnum_theRequestedVCHasAlreadyBeenClaimedByTheUser,
]);

const GetCredentialOffer400ResponseHttpStatusCodeEnum
    _$getCredentialOffer400ResponseHttpStatusCodeEnum_number400 =
    const GetCredentialOffer400ResponseHttpStatusCodeEnum._('number400');

GetCredentialOffer400ResponseHttpStatusCodeEnum
    _$getCredentialOffer400ResponseHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$getCredentialOffer400ResponseHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GetCredentialOffer400ResponseHttpStatusCodeEnum>
    _$getCredentialOffer400ResponseHttpStatusCodeEnumValues = new BuiltSet<
        GetCredentialOffer400ResponseHttpStatusCodeEnum>(const <GetCredentialOffer400ResponseHttpStatusCodeEnum>[
  _$getCredentialOffer400ResponseHttpStatusCodeEnum_number400,
]);

Serializer<GetCredentialOffer400ResponseNameEnum>
    _$getCredentialOffer400ResponseNameEnumSerializer =
    new _$GetCredentialOffer400ResponseNameEnumSerializer();
Serializer<GetCredentialOffer400ResponseMessageEnum>
    _$getCredentialOffer400ResponseMessageEnumSerializer =
    new _$GetCredentialOffer400ResponseMessageEnumSerializer();
Serializer<GetCredentialOffer400ResponseHttpStatusCodeEnum>
    _$getCredentialOffer400ResponseHttpStatusCodeEnumSerializer =
    new _$GetCredentialOffer400ResponseHttpStatusCodeEnumSerializer();

class _$GetCredentialOffer400ResponseNameEnumSerializer
    implements PrimitiveSerializer<GetCredentialOffer400ResponseNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vcClaimedError': 'VcClaimedError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VcClaimedError': 'vcClaimedError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetCredentialOffer400ResponseNameEnum
  ];
  @override
  final String wireName = 'GetCredentialOffer400ResponseNameEnum';

  @override
  Object serialize(
          Serializers serializers, GetCredentialOffer400ResponseNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetCredentialOffer400ResponseNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetCredentialOffer400ResponseNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetCredentialOffer400ResponseMessageEnumSerializer
    implements PrimitiveSerializer<GetCredentialOffer400ResponseMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'theRequestedVCHasAlreadyBeenClaimedByTheUser':
        'The requested VC has already been claimed by the user',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'The requested VC has already been claimed by the user':
        'theRequestedVCHasAlreadyBeenClaimedByTheUser',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetCredentialOffer400ResponseMessageEnum
  ];
  @override
  final String wireName = 'GetCredentialOffer400ResponseMessageEnum';

  @override
  Object serialize(Serializers serializers,
          GetCredentialOffer400ResponseMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetCredentialOffer400ResponseMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetCredentialOffer400ResponseMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetCredentialOffer400ResponseHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<GetCredentialOffer400ResponseHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetCredentialOffer400ResponseHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'GetCredentialOffer400ResponseHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          GetCredentialOffer400ResponseHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetCredentialOffer400ResponseHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetCredentialOffer400ResponseHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetCredentialOffer400Response extends GetCredentialOffer400Response {
  @override
  final OneOf oneOf;

  factory _$GetCredentialOffer400Response(
          [void Function(GetCredentialOffer400ResponseBuilder)? updates]) =>
      (new GetCredentialOffer400ResponseBuilder()..update(updates))._build();

  _$GetCredentialOffer400Response._({required this.oneOf}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oneOf, r'GetCredentialOffer400Response', 'oneOf');
  }

  @override
  GetCredentialOffer400Response rebuild(
          void Function(GetCredentialOffer400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCredentialOffer400ResponseBuilder toBuilder() =>
      new GetCredentialOffer400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCredentialOffer400Response && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'GetCredentialOffer400Response')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class GetCredentialOffer400ResponseBuilder
    implements
        Builder<GetCredentialOffer400Response,
            GetCredentialOffer400ResponseBuilder> {
  _$GetCredentialOffer400Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  GetCredentialOffer400ResponseBuilder() {
    GetCredentialOffer400Response._defaults(this);
  }

  GetCredentialOffer400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCredentialOffer400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCredentialOffer400Response;
  }

  @override
  void update(void Function(GetCredentialOffer400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCredentialOffer400Response build() => _build();

  _$GetCredentialOffer400Response _build() {
    final _$result = _$v ??
        new _$GetCredentialOffer400Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'GetCredentialOffer400Response', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
