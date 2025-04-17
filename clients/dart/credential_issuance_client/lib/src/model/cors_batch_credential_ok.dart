//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_batch_credential_ok.g.dart';

/// CorsBatchCredentialOK
///
/// Properties:
/// * [corsBatchCredentialOk] 
@BuiltValue()
abstract class CorsBatchCredentialOK implements Built<CorsBatchCredentialOK, CorsBatchCredentialOKBuilder> {
  @BuiltValueField(wireName: r'corsBatchCredentialOk')
  String? get corsBatchCredentialOk;

  CorsBatchCredentialOK._();

  factory CorsBatchCredentialOK([void updates(CorsBatchCredentialOKBuilder b)]) = _$CorsBatchCredentialOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsBatchCredentialOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsBatchCredentialOK> get serializer => _$CorsBatchCredentialOKSerializer();
}

class _$CorsBatchCredentialOKSerializer implements PrimitiveSerializer<CorsBatchCredentialOK> {
  @override
  final Iterable<Type> types = const [CorsBatchCredentialOK, _$CorsBatchCredentialOK];

  @override
  final String wireName = r'CorsBatchCredentialOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsBatchCredentialOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsBatchCredentialOk != null) {
      yield r'corsBatchCredentialOk';
      yield serializers.serialize(
        object.corsBatchCredentialOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsBatchCredentialOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsBatchCredentialOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsBatchCredentialOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsBatchCredentialOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsBatchCredentialOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsBatchCredentialOKBuilder();
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

