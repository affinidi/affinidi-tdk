//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pd_status.g.dart';

/// PdStatus
///
/// Properties:
/// * [directive] 
@BuiltValue()
abstract class PdStatus implements Built<PdStatus, PdStatusBuilder> {
  @BuiltValueField(wireName: r'directive')
  PdStatusDirectiveEnum? get directive;
  // enum directiveEnum {  required,  allowed,  disallowed,  };

  PdStatus._();

  factory PdStatus([void updates(PdStatusBuilder b)]) = _$PdStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PdStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PdStatus> get serializer => _$PdStatusSerializer();
}

class _$PdStatusSerializer implements PrimitiveSerializer<PdStatus> {
  @override
  final Iterable<Type> types = const [PdStatus, _$PdStatus];

  @override
  final String wireName = r'PdStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PdStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.directive != null) {
      yield r'directive';
      yield serializers.serialize(
        object.directive,
        specifiedType: const FullType(PdStatusDirectiveEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PdStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PdStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'directive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PdStatusDirectiveEnum),
          ) as PdStatusDirectiveEnum;
          result.directive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PdStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PdStatusBuilder();
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

class PdStatusDirectiveEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'required')
  static const PdStatusDirectiveEnum required_ = _$pdStatusDirectiveEnum_required_;
  @BuiltValueEnumConst(wireName: r'allowed')
  static const PdStatusDirectiveEnum allowed = _$pdStatusDirectiveEnum_allowed;
  @BuiltValueEnumConst(wireName: r'disallowed')
  static const PdStatusDirectiveEnum disallowed = _$pdStatusDirectiveEnum_disallowed;

  static Serializer<PdStatusDirectiveEnum> get serializer => _$pdStatusDirectiveEnumSerializer;

  const PdStatusDirectiveEnum._(String name): super(name);

  static BuiltSet<PdStatusDirectiveEnum> get values => _$pdStatusDirectiveEnumValues;
  static PdStatusDirectiveEnum valueOf(String name) => _$pdStatusDirectiveEnumValueOf(name);
}

