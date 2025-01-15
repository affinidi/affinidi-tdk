//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_config_ok.g.dart';

/// GetConfigOK
///
/// Properties:
/// * [profileName] 
/// * [maximumProfiles] 
@BuiltValue()
abstract class GetConfigOK implements Built<GetConfigOK, GetConfigOKBuilder> {
  @BuiltValueField(wireName: r'profileName')
  String get profileName;

  @BuiltValueField(wireName: r'maximumProfiles')
  int get maximumProfiles;

  GetConfigOK._();

  factory GetConfigOK([void updates(GetConfigOKBuilder b)]) = _$GetConfigOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetConfigOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetConfigOK> get serializer => _$GetConfigOKSerializer();
}

class _$GetConfigOKSerializer implements PrimitiveSerializer<GetConfigOK> {
  @override
  final Iterable<Type> types = const [GetConfigOK, _$GetConfigOK];

  @override
  final String wireName = r'GetConfigOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetConfigOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'profileName';
    yield serializers.serialize(
      object.profileName,
      specifiedType: const FullType(String),
    );
    yield r'maximumProfiles';
    yield serializers.serialize(
      object.maximumProfiles,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetConfigOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetConfigOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'profileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profileName = valueDes;
          break;
        case r'maximumProfiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maximumProfiles = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetConfigOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConfigOKBuilder();
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

