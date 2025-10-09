//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'initiate_data_sharing_request_input.g.dart';

/// InitiateDataSharingRequestInput
///
/// Properties:
/// * [queryId] - The ID of the query.
/// * [correlationId] - A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
/// * [tokenMaxAge] - This is the lifetime of the signed request token during the data-sharing flow.
/// * [nonce] - A randomly generated value that is added in the request and response to prevent replay attacks.
/// * [redirectUri] - List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
/// * [configurationId] - ID of the Affinidi Iota Framework configuration.
/// * [userDid] - User did to send the initiating request to. Only required if mode is didcomm
/// * [mode] - Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.
@BuiltValue()
abstract class InitiateDataSharingRequestInput
    implements
        Built<InitiateDataSharingRequestInput,
            InitiateDataSharingRequestInputBuilder> {
  /// The ID of the query.
  @BuiltValueField(wireName: r'queryId')
  String get queryId;

  /// A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
  @BuiltValueField(wireName: r'correlationId')
  String get correlationId;

  /// This is the lifetime of the signed request token during the data-sharing flow.
  @BuiltValueField(wireName: r'tokenMaxAge')
  int? get tokenMaxAge;

  /// A randomly generated value that is added in the request and response to prevent replay attacks.
  @BuiltValueField(wireName: r'nonce')
  String get nonce;

  /// List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
  @BuiltValueField(wireName: r'redirectUri')
  String get redirectUri;

  /// ID of the Affinidi Iota Framework configuration.
  @BuiltValueField(wireName: r'configurationId')
  String get configurationId;

  /// User did to send the initiating request to. Only required if mode is didcomm
  @BuiltValueField(wireName: r'userDid')
  String? get userDid;

  /// Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.
  @BuiltValueField(wireName: r'mode')
  InitiateDataSharingRequestInputModeEnum get mode;
  // enum modeEnum {  redirect,  websocket,  didcomm,  };

  InitiateDataSharingRequestInput._();

  factory InitiateDataSharingRequestInput(
          [void updates(InitiateDataSharingRequestInputBuilder b)]) =
      _$InitiateDataSharingRequestInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InitiateDataSharingRequestInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InitiateDataSharingRequestInput> get serializer =>
      _$InitiateDataSharingRequestInputSerializer();
}

class _$InitiateDataSharingRequestInputSerializer
    implements PrimitiveSerializer<InitiateDataSharingRequestInput> {
  @override
  final Iterable<Type> types = const [
    InitiateDataSharingRequestInput,
    _$InitiateDataSharingRequestInput
  ];

  @override
  final String wireName = r'InitiateDataSharingRequestInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InitiateDataSharingRequestInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'queryId';
    yield serializers.serialize(
      object.queryId,
      specifiedType: const FullType(String),
    );
    yield r'correlationId';
    yield serializers.serialize(
      object.correlationId,
      specifiedType: const FullType(String),
    );
    if (object.tokenMaxAge != null) {
      yield r'tokenMaxAge';
      yield serializers.serialize(
        object.tokenMaxAge,
        specifiedType: const FullType(int),
      );
    }
    yield r'nonce';
    yield serializers.serialize(
      object.nonce,
      specifiedType: const FullType(String),
    );
    yield r'redirectUri';
    yield serializers.serialize(
      object.redirectUri,
      specifiedType: const FullType(String),
    );
    yield r'configurationId';
    yield serializers.serialize(
      object.configurationId,
      specifiedType: const FullType(String),
    );
    if (object.userDid != null) {
      yield r'userDid';
      yield serializers.serialize(
        object.userDid,
        specifiedType: const FullType(String),
      );
    }
    yield r'mode';
    yield serializers.serialize(
      object.mode,
      specifiedType: const FullType(InitiateDataSharingRequestInputModeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    InitiateDataSharingRequestInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InitiateDataSharingRequestInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.queryId = valueDes;
          break;
        case r'correlationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correlationId = valueDes;
          break;
        case r'tokenMaxAge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tokenMaxAge = valueDes;
          break;
        case r'nonce':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nonce = valueDes;
          break;
        case r'redirectUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.redirectUri = valueDes;
          break;
        case r'configurationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.configurationId = valueDes;
          break;
        case r'userDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userDid = valueDes;
          break;
        case r'mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InitiateDataSharingRequestInputModeEnum),
          ) as InitiateDataSharingRequestInputModeEnum;
          result.mode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InitiateDataSharingRequestInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InitiateDataSharingRequestInputBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class InitiateDataSharingRequestInputModeEnum extends EnumClass {
  /// Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.
  @BuiltValueEnumConst(wireName: r'redirect')
  static const InitiateDataSharingRequestInputModeEnum redirect =
      _$initiateDataSharingRequestInputModeEnum_redirect;

  /// Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.
  @BuiltValueEnumConst(wireName: r'websocket')
  static const InitiateDataSharingRequestInputModeEnum websocket =
      _$initiateDataSharingRequestInputModeEnum_websocket;

  /// Determines whether to handle the data-sharing request using the WebSocket, Redirect or Didcomm messaging flow.
  @BuiltValueEnumConst(wireName: r'didcomm')
  static const InitiateDataSharingRequestInputModeEnum didcomm =
      _$initiateDataSharingRequestInputModeEnum_didcomm;

  static Serializer<InitiateDataSharingRequestInputModeEnum> get serializer =>
      _$initiateDataSharingRequestInputModeEnumSerializer;

  const InitiateDataSharingRequestInputModeEnum._(String name) : super(name);

  static BuiltSet<InitiateDataSharingRequestInputModeEnum> get values =>
      _$initiateDataSharingRequestInputModeEnumValues;
  static InitiateDataSharingRequestInputModeEnum valueOf(String name) =>
      _$initiateDataSharingRequestInputModeEnumValueOf(name);
}
