//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_account_ok.g.dart';

/// CreateAccountOK
///
/// Properties:
/// * [accountIndex] 
/// * [profileDid] 
@BuiltValue()
abstract class CreateAccountOK implements Built<CreateAccountOK, CreateAccountOKBuilder> {
  @BuiltValueField(wireName: r'accountIndex')
  int get accountIndex;

  @BuiltValueField(wireName: r'profileDid')
  String get profileDid;

  CreateAccountOK._();

  factory CreateAccountOK([void updates(CreateAccountOKBuilder b)]) = _$CreateAccountOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAccountOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAccountOK> get serializer => _$CreateAccountOKSerializer();
}

class _$CreateAccountOKSerializer implements PrimitiveSerializer<CreateAccountOK> {
  @override
  final Iterable<Type> types = const [CreateAccountOK, _$CreateAccountOK];

  @override
  final String wireName = r'CreateAccountOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAccountOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountIndex';
    yield serializers.serialize(
      object.accountIndex,
      specifiedType: const FullType(int),
    );
    yield r'profileDid';
    yield serializers.serialize(
      object.profileDid,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAccountOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateAccountOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accountIndex = valueDes;
          break;
        case r'profileDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profileDid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateAccountOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAccountOKBuilder();
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

