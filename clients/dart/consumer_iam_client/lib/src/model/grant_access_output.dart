//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'grant_access_output.g.dart';

/// GrantAccessOutput
///
/// Properties:
/// * [success]
/// * [grantId] - Unique identifier for the access grant
@BuiltValue()
abstract class GrantAccessOutput
    implements Built<GrantAccessOutput, GrantAccessOutputBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Unique identifier for the access grant
  @BuiltValueField(wireName: r'grantId')
  String? get grantId;

  GrantAccessOutput._();

  factory GrantAccessOutput([void updates(GrantAccessOutputBuilder b)]) =
      _$GrantAccessOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GrantAccessOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GrantAccessOutput> get serializer =>
      _$GrantAccessOutputSerializer();
}

class _$GrantAccessOutputSerializer
    implements PrimitiveSerializer<GrantAccessOutput> {
  @override
  final Iterable<Type> types = const [GrantAccessOutput, _$GrantAccessOutput];

  @override
  final String wireName = r'GrantAccessOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GrantAccessOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    if (object.grantId != null) {
      yield r'grantId';
      yield serializers.serialize(
        object.grantId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GrantAccessOutput object, {
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
    required GrantAccessOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'grantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.grantId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GrantAccessOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GrantAccessOutputBuilder();
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
