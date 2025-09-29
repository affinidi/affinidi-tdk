//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_credential_status_input.g.dart';

/// ChangeCredentialStatusInput
///
/// Properties:
/// * [changeReason]
/// * [issuanceFlowDataId]
@BuiltValue()
abstract class ChangeCredentialStatusInput
    implements
        Built<ChangeCredentialStatusInput, ChangeCredentialStatusInputBuilder> {
  @BuiltValueField(wireName: r'changeReason')
  String? get changeReason;

  @BuiltValueField(wireName: r'issuanceFlowDataId')
  String? get issuanceFlowDataId;

  ChangeCredentialStatusInput._();

  factory ChangeCredentialStatusInput(
          [void updates(ChangeCredentialStatusInputBuilder b)]) =
      _$ChangeCredentialStatusInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangeCredentialStatusInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangeCredentialStatusInput> get serializer =>
      _$ChangeCredentialStatusInputSerializer();
}

class _$ChangeCredentialStatusInputSerializer
    implements PrimitiveSerializer<ChangeCredentialStatusInput> {
  @override
  final Iterable<Type> types = const [
    ChangeCredentialStatusInput,
    _$ChangeCredentialStatusInput
  ];

  @override
  final String wireName = r'ChangeCredentialStatusInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangeCredentialStatusInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.changeReason != null) {
      yield r'changeReason';
      yield serializers.serialize(
        object.changeReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuanceFlowDataId != null) {
      yield r'issuanceFlowDataId';
      yield serializers.serialize(
        object.issuanceFlowDataId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChangeCredentialStatusInput object, {
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
    required ChangeCredentialStatusInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'changeReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.changeReason = valueDes;
          break;
        case r'issuanceFlowDataId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuanceFlowDataId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ChangeCredentialStatusInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeCredentialStatusInputBuilder();
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
