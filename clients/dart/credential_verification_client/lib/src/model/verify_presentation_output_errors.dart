//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'verify_presentation_output_errors.g.dart';

/// Error of the verification
@BuiltValue()
abstract class VerifyPresentationOutputErrors
    implements
        Built<VerifyPresentationOutputErrors,
            VerifyPresentationOutputErrorsBuilder> {
  /// Any Of [BuiltList<BuiltMap<String, BuiltList<JsonObject>>>], [BuiltList<String>]
  AnyOf get anyOf;

  VerifyPresentationOutputErrors._();

  factory VerifyPresentationOutputErrors(
          [void updates(VerifyPresentationOutputErrorsBuilder b)]) =
      _$VerifyPresentationOutputErrors;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyPresentationOutputErrorsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyPresentationOutputErrors> get serializer =>
      _$VerifyPresentationOutputErrorsSerializer();
}

class _$VerifyPresentationOutputErrorsSerializer
    implements PrimitiveSerializer<VerifyPresentationOutputErrors> {
  @override
  final Iterable<Type> types = const [
    VerifyPresentationOutputErrors,
    _$VerifyPresentationOutputErrors
  ];

  @override
  final String wireName = r'VerifyPresentationOutputErrors';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, VerifyPresentationOutputErrors object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    VerifyPresentationOutputErrors object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf,
        specifiedType: FullType(
            AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  VerifyPresentationOutputErrors deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyPresentationOutputErrorsBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(BuiltList, [FullType(String)]),
      FullType(BuiltList, [
        FullType(BuiltMap, [
          FullType(String),
          FullType(BuiltList, [FullType.nullable(JsonObject)])
        ])
      ]),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc,
        specifiedType: targetType) as AnyOf;
    return result.build();
  }
}
