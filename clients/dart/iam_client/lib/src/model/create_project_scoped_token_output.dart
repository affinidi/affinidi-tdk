//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_project_scoped_token_output.g.dart';

/// CreateProjectScopedTokenOutput
///
/// Properties:
/// * [accessToken]
/// * [expiresIn]
/// * [scope]
@BuiltValue()
abstract class CreateProjectScopedTokenOutput
    implements
        Built<CreateProjectScopedTokenOutput,
            CreateProjectScopedTokenOutputBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  @BuiltValueField(wireName: r'expiresIn')
  int get expiresIn;

  @BuiltValueField(wireName: r'scope')
  String get scope;

  CreateProjectScopedTokenOutput._();

  factory CreateProjectScopedTokenOutput(
          [void updates(CreateProjectScopedTokenOutputBuilder b)]) =
      _$CreateProjectScopedTokenOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateProjectScopedTokenOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateProjectScopedTokenOutput> get serializer =>
      _$CreateProjectScopedTokenOutputSerializer();
}

class _$CreateProjectScopedTokenOutputSerializer
    implements PrimitiveSerializer<CreateProjectScopedTokenOutput> {
  @override
  final Iterable<Type> types = const [
    CreateProjectScopedTokenOutput,
    _$CreateProjectScopedTokenOutput
  ];

  @override
  final String wireName = r'CreateProjectScopedTokenOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateProjectScopedTokenOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
    yield r'expiresIn';
    yield serializers.serialize(
      object.expiresIn,
      specifiedType: const FullType(int),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateProjectScopedTokenOutput object, {
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
    required CreateProjectScopedTokenOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'expiresIn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scope = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateProjectScopedTokenOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateProjectScopedTokenOutputBuilder();
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
