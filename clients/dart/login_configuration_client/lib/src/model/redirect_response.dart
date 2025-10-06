//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'redirect_response.g.dart';

/// Redirect Response
///
/// Properties:
/// * [type] - type
/// * [to] - URL to redirect to
@BuiltValue()
abstract class RedirectResponse
    implements Built<RedirectResponse, RedirectResponseBuilder> {
  /// type
  @BuiltValueField(wireName: r'type')
  RedirectResponseTypeEnum get type;
  // enum typeEnum {  REDIRECT_RESPONSE,  };

  /// URL to redirect to
  @BuiltValueField(wireName: r'to')
  String get to;

  RedirectResponse._();

  factory RedirectResponse([void updates(RedirectResponseBuilder b)]) =
      _$RedirectResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RedirectResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RedirectResponse> get serializer =>
      _$RedirectResponseSerializer();
}

class _$RedirectResponseSerializer
    implements PrimitiveSerializer<RedirectResponse> {
  @override
  final Iterable<Type> types = const [RedirectResponse, _$RedirectResponse];

  @override
  final String wireName = r'RedirectResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RedirectResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(RedirectResponseTypeEnum),
    );
    yield r'to';
    yield serializers.serialize(
      object.to,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RedirectResponse object, {
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
    required RedirectResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RedirectResponseTypeEnum),
          ) as RedirectResponseTypeEnum;
          result.type = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RedirectResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RedirectResponseBuilder();
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

class RedirectResponseTypeEnum extends EnumClass {
  /// type
  @BuiltValueEnumConst(wireName: r'REDIRECT_RESPONSE')
  static const RedirectResponseTypeEnum REDIRECT_RESPONSE =
      _$redirectResponseTypeEnum_REDIRECT_RESPONSE;

  static Serializer<RedirectResponseTypeEnum> get serializer =>
      _$redirectResponseTypeEnumSerializer;

  const RedirectResponseTypeEnum._(String name) : super(name);

  static BuiltSet<RedirectResponseTypeEnum> get values =>
      _$redirectResponseTypeEnumValues;
  static RedirectResponseTypeEnum valueOf(String name) =>
      _$redirectResponseTypeEnumValueOf(name);
}
