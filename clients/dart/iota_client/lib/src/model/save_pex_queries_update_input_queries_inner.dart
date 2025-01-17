//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'save_pex_queries_update_input_queries_inner.g.dart';

/// SavePexQueriesUpdateInputQueriesInner
///
/// Properties:
/// * [queryId] - The ID of the query.
/// * [vpDefinition] - The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
/// * [description] - An optional description of what the query is used for.
@BuiltValue()
abstract class SavePexQueriesUpdateInputQueriesInner implements Built<SavePexQueriesUpdateInputQueriesInner, SavePexQueriesUpdateInputQueriesInnerBuilder> {
  /// The ID of the query.
  @BuiltValueField(wireName: r'queryId')
  String get queryId;

  /// The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
  @BuiltValueField(wireName: r'vpDefinition')
  String? get vpDefinition;

  /// An optional description of what the query is used for.
  @BuiltValueField(wireName: r'description')
  String? get description;

  SavePexQueriesUpdateInputQueriesInner._();

  factory SavePexQueriesUpdateInputQueriesInner([void updates(SavePexQueriesUpdateInputQueriesInnerBuilder b)]) = _$SavePexQueriesUpdateInputQueriesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SavePexQueriesUpdateInputQueriesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SavePexQueriesUpdateInputQueriesInner> get serializer => _$SavePexQueriesUpdateInputQueriesInnerSerializer();
}

class _$SavePexQueriesUpdateInputQueriesInnerSerializer implements PrimitiveSerializer<SavePexQueriesUpdateInputQueriesInner> {
  @override
  final Iterable<Type> types = const [SavePexQueriesUpdateInputQueriesInner, _$SavePexQueriesUpdateInputQueriesInner];

  @override
  final String wireName = r'SavePexQueriesUpdateInputQueriesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SavePexQueriesUpdateInputQueriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'queryId';
    yield serializers.serialize(
      object.queryId,
      specifiedType: const FullType(String),
    );
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
    SavePexQueriesUpdateInputQueriesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SavePexQueriesUpdateInputQueriesInnerBuilder result,
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
  SavePexQueriesUpdateInputQueriesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SavePexQueriesUpdateInputQueriesInnerBuilder();
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

