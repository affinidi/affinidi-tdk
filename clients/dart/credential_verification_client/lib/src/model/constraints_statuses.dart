//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_verification_client/src/model/pd_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'constraints_statuses.g.dart';

/// ConstraintsStatuses
///
/// Properties:
/// * [active] 
/// * [suspended] 
/// * [revoked] 
@BuiltValue()
abstract class ConstraintsStatuses implements Built<ConstraintsStatuses, ConstraintsStatusesBuilder> {
  @BuiltValueField(wireName: r'active')
  PdStatus? get active;

  @BuiltValueField(wireName: r'suspended')
  PdStatus? get suspended;

  @BuiltValueField(wireName: r'revoked')
  PdStatus? get revoked;

  ConstraintsStatuses._();

  factory ConstraintsStatuses([void updates(ConstraintsStatusesBuilder b)]) = _$ConstraintsStatuses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConstraintsStatusesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConstraintsStatuses> get serializer => _$ConstraintsStatusesSerializer();
}

class _$ConstraintsStatusesSerializer implements PrimitiveSerializer<ConstraintsStatuses> {
  @override
  final Iterable<Type> types = const [ConstraintsStatuses, _$ConstraintsStatuses];

  @override
  final String wireName = r'ConstraintsStatuses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConstraintsStatuses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(PdStatus),
      );
    }
    if (object.suspended != null) {
      yield r'suspended';
      yield serializers.serialize(
        object.suspended,
        specifiedType: const FullType(PdStatus),
      );
    }
    if (object.revoked != null) {
      yield r'revoked';
      yield serializers.serialize(
        object.revoked,
        specifiedType: const FullType(PdStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConstraintsStatuses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConstraintsStatusesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PdStatus),
          ) as PdStatus;
          result.active.replace(valueDes);
          break;
        case r'suspended':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PdStatus),
          ) as PdStatus;
          result.suspended.replace(valueDes);
          break;
        case r'revoked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PdStatus),
          ) as PdStatus;
          result.revoked.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConstraintsStatuses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConstraintsStatusesBuilder();
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

