//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/permission.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_access_output.g.dart';

/// GetAccessOutput
///
/// Properties:
/// * [permissions] - List of permissions currently granted
@BuiltValue()
abstract class GetAccessOutput
    implements Built<GetAccessOutput, GetAccessOutputBuilder> {
  /// List of permissions currently granted
  @BuiltValueField(wireName: r'permissions')
  BuiltList<Permission> get permissions;

  GetAccessOutput._();

  factory GetAccessOutput([void updates(GetAccessOutputBuilder b)]) =
      _$GetAccessOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAccessOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAccessOutput> get serializer =>
      _$GetAccessOutputSerializer();
}

class _$GetAccessOutputSerializer
    implements PrimitiveSerializer<GetAccessOutput> {
  @override
  final Iterable<Type> types = const [GetAccessOutput, _$GetAccessOutput];

  @override
  final String wireName = r'GetAccessOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAccessOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'permissions';
    yield serializers.serialize(
      object.permissions,
      specifiedType: const FullType(BuiltList, [FullType(Permission)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetAccessOutput object, {
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
    required GetAccessOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Permission)]),
          ) as BuiltList<Permission>;
          result.permissions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetAccessOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAccessOutputBuilder();
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
