//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'w3c_credential_credential_subject.g.dart';

/// W3cCredentialCredentialSubject
@BuiltValue()
abstract class W3cCredentialCredentialSubject implements Built<W3cCredentialCredentialSubject, W3cCredentialCredentialSubjectBuilder> {
  /// One Of [BuiltList<String>], [JsonObject]
  OneOf get oneOf;

  W3cCredentialCredentialSubject._();

  factory W3cCredentialCredentialSubject([void updates(W3cCredentialCredentialSubjectBuilder b)]) = _$W3cCredentialCredentialSubject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cCredentialCredentialSubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cCredentialCredentialSubject> get serializer => _$W3cCredentialCredentialSubjectSerializer();
}

class _$W3cCredentialCredentialSubjectSerializer implements PrimitiveSerializer<W3cCredentialCredentialSubject> {
  @override
  final Iterable<Type> types = const [W3cCredentialCredentialSubject, _$W3cCredentialCredentialSubject];

  @override
  final String wireName = r'W3cCredentialCredentialSubject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cCredentialCredentialSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cCredentialCredentialSubject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  W3cCredentialCredentialSubject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cCredentialCredentialSubjectBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(JsonObject), FullType(BuiltList, [FullType(String)]), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

