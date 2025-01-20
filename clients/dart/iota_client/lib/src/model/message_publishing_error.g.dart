// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_publishing_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MessagePublishingErrorNameEnum
    _$messagePublishingErrorNameEnum_messagePublishingError =
    const MessagePublishingErrorNameEnum._('messagePublishingError');

MessagePublishingErrorNameEnum _$messagePublishingErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'messagePublishingError':
      return _$messagePublishingErrorNameEnum_messagePublishingError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MessagePublishingErrorNameEnum>
    _$messagePublishingErrorNameEnumValues = new BuiltSet<
        MessagePublishingErrorNameEnum>(const <MessagePublishingErrorNameEnum>[
  _$messagePublishingErrorNameEnum_messagePublishingError,
]);

const MessagePublishingErrorMessageEnum
    _$messagePublishingErrorMessageEnum_notAbleToPublishMessagesToTopic =
    const MessagePublishingErrorMessageEnum._(
        'notAbleToPublishMessagesToTopic');

MessagePublishingErrorMessageEnum _$messagePublishingErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'notAbleToPublishMessagesToTopic':
      return _$messagePublishingErrorMessageEnum_notAbleToPublishMessagesToTopic;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MessagePublishingErrorMessageEnum>
    _$messagePublishingErrorMessageEnumValues = new BuiltSet<
        MessagePublishingErrorMessageEnum>(const <MessagePublishingErrorMessageEnum>[
  _$messagePublishingErrorMessageEnum_notAbleToPublishMessagesToTopic,
]);

const MessagePublishingErrorHttpStatusCodeEnum
    _$messagePublishingErrorHttpStatusCodeEnum_number500 =
    const MessagePublishingErrorHttpStatusCodeEnum._('number500');

MessagePublishingErrorHttpStatusCodeEnum
    _$messagePublishingErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number500':
      return _$messagePublishingErrorHttpStatusCodeEnum_number500;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MessagePublishingErrorHttpStatusCodeEnum>
    _$messagePublishingErrorHttpStatusCodeEnumValues = new BuiltSet<
        MessagePublishingErrorHttpStatusCodeEnum>(const <MessagePublishingErrorHttpStatusCodeEnum>[
  _$messagePublishingErrorHttpStatusCodeEnum_number500,
]);

Serializer<MessagePublishingErrorNameEnum>
    _$messagePublishingErrorNameEnumSerializer =
    new _$MessagePublishingErrorNameEnumSerializer();
Serializer<MessagePublishingErrorMessageEnum>
    _$messagePublishingErrorMessageEnumSerializer =
    new _$MessagePublishingErrorMessageEnumSerializer();
Serializer<MessagePublishingErrorHttpStatusCodeEnum>
    _$messagePublishingErrorHttpStatusCodeEnumSerializer =
    new _$MessagePublishingErrorHttpStatusCodeEnumSerializer();

class _$MessagePublishingErrorNameEnumSerializer
    implements PrimitiveSerializer<MessagePublishingErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'messagePublishingError': 'MessagePublishingError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MessagePublishingError': 'messagePublishingError',
  };

  @override
  final Iterable<Type> types = const <Type>[MessagePublishingErrorNameEnum];
  @override
  final String wireName = 'MessagePublishingErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, MessagePublishingErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MessagePublishingErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MessagePublishingErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MessagePublishingErrorMessageEnumSerializer
    implements PrimitiveSerializer<MessagePublishingErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'notAbleToPublishMessagesToTopic': 'Not able to publish messages to topic',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Not able to publish messages to topic': 'notAbleToPublishMessagesToTopic',
  };

  @override
  final Iterable<Type> types = const <Type>[MessagePublishingErrorMessageEnum];
  @override
  final String wireName = 'MessagePublishingErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, MessagePublishingErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MessagePublishingErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MessagePublishingErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MessagePublishingErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<MessagePublishingErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number500': 500,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    500: 'number500',
  };

  @override
  final Iterable<Type> types = const <Type>[
    MessagePublishingErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'MessagePublishingErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          MessagePublishingErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MessagePublishingErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MessagePublishingErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MessagePublishingError extends MessagePublishingError {
  @override
  final MessagePublishingErrorNameEnum name;
  @override
  final MessagePublishingErrorMessageEnum message;
  @override
  final MessagePublishingErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$MessagePublishingError(
          [void Function(MessagePublishingErrorBuilder)? updates]) =>
      (new MessagePublishingErrorBuilder()..update(updates))._build();

  _$MessagePublishingError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'MessagePublishingError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'MessagePublishingError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'MessagePublishingError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'MessagePublishingError', 'traceId');
  }

  @override
  MessagePublishingError rebuild(
          void Function(MessagePublishingErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessagePublishingErrorBuilder toBuilder() =>
      new MessagePublishingErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessagePublishingError &&
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
    return (newBuiltValueToStringHelper(r'MessagePublishingError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class MessagePublishingErrorBuilder
    implements Builder<MessagePublishingError, MessagePublishingErrorBuilder> {
  _$MessagePublishingError? _$v;

  MessagePublishingErrorNameEnum? _name;
  MessagePublishingErrorNameEnum? get name => _$this._name;
  set name(MessagePublishingErrorNameEnum? name) => _$this._name = name;

  MessagePublishingErrorMessageEnum? _message;
  MessagePublishingErrorMessageEnum? get message => _$this._message;
  set message(MessagePublishingErrorMessageEnum? message) =>
      _$this._message = message;

  MessagePublishingErrorHttpStatusCodeEnum? _httpStatusCode;
  MessagePublishingErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          MessagePublishingErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  MessagePublishingErrorBuilder() {
    MessagePublishingError._defaults(this);
  }

  MessagePublishingErrorBuilder get _$this {
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
  void replace(MessagePublishingError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessagePublishingError;
  }

  @override
  void update(void Function(MessagePublishingErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessagePublishingError build() => _build();

  _$MessagePublishingError _build() {
    _$MessagePublishingError _$result;
    try {
      _$result = _$v ??
          new _$MessagePublishingError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'MessagePublishingError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'MessagePublishingError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'MessagePublishingError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'MessagePublishingError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MessagePublishingError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
