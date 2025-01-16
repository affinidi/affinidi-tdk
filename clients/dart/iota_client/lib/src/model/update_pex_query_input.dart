//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_pex_query_input.g.dart';

/// UpdatePexQueryInput
///
/// Properties:
/// * [vpDefinition] - The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
/// * [description] - An optional description of what the query is used for.
@BuiltValue()
abstract class UpdatePexQueryInput implements Built<UpdatePexQueryInput, UpdatePexQueryInputBuilder> {
  /// The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
  @BuiltValueField(wireName: r'vpDefinition')
  String? get vpDefinition;

  /// An optional description of what the query is used for.
  @BuiltValueField(wireName: r'description')
  String? get description;

  UpdatePexQueryInput._();

  factory UpdatePexQueryInput([void updates(UpdatePexQueryInputBuilder b)]) = _$UpdatePexQueryInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdatePexQueryInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdatePexQueryInput> get serializer => _$UpdatePexQueryInputSerializer();
}

class _$UpdatePexQueryInputSerializer implements PrimitiveSerializer<UpdatePexQueryInput> {
  @override
  final Iterable<Type> types = const [UpdatePexQueryInput, _$UpdatePexQueryInput];

  @override
  final String wireName = r'UpdatePexQueryInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdatePexQueryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.vpDefinition != null) {
      yield r'vpDefinition';
      yield serializers.serialize(
        object.vpDefinition,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdatePexQueryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdatePexQueryInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'vpDefinition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vpDefinition = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdatePexQueryInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdatePexQueryInputBuilder();
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

