//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/rights_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grant_access_input.g.dart';

/// GrantAccessInput
///
/// Properties:
/// * [granteeDid] - DID of the subject being granted access
/// * [rights] - List of rights to grant to the subject
@BuiltValue()
abstract class GrantAccessInput
    implements Built<GrantAccessInput, GrantAccessInputBuilder> {
  /// DID of the subject being granted access
  @BuiltValueField(wireName: r'granteeDid')
  String get granteeDid;

  /// List of rights to grant to the subject
  @BuiltValueField(wireName: r'rights')
  BuiltList<RightsEnum> get rights;

  GrantAccessInput._();

  factory GrantAccessInput([void updates(GrantAccessInputBuilder b)]) =
      _$GrantAccessInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GrantAccessInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GrantAccessInput> get serializer =>
      _$GrantAccessInputSerializer();
}

class _$GrantAccessInputSerializer
    implements PrimitiveSerializer<GrantAccessInput> {
  @override
  final Iterable<Type> types = const [GrantAccessInput, _$GrantAccessInput];

  @override
  final String wireName = r'GrantAccessInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GrantAccessInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'granteeDid';
    yield serializers.serialize(
      object.granteeDid,
      specifiedType: const FullType(String),
    );
    yield r'rights';
    yield serializers.serialize(
      object.rights,
      specifiedType: const FullType(BuiltList, [FullType(RightsEnum)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GrantAccessInput object, {
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
    required GrantAccessInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'granteeDid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.granteeDid = valueDes;
          break;
        case r'rights':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(RightsEnum)]),
          ) as BuiltList<RightsEnum>;
          result.rights.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GrantAccessInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GrantAccessInputBuilder();
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
