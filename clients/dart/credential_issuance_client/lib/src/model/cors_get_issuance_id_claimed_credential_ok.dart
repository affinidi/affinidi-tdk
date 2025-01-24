//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cors_get_issuance_id_claimed_credential_ok.g.dart';

/// CorsGetIssuanceIdClaimedCredentialOK
///
/// Properties:
/// * [corsGetIssuanceIdClaimedCredentialOk] 
@BuiltValue()
abstract class CorsGetIssuanceIdClaimedCredentialOK implements Built<CorsGetIssuanceIdClaimedCredentialOK, CorsGetIssuanceIdClaimedCredentialOKBuilder> {
  @BuiltValueField(wireName: r'corsGetIssuanceIdClaimedCredentialOk')
  String? get corsGetIssuanceIdClaimedCredentialOk;

  CorsGetIssuanceIdClaimedCredentialOK._();

  factory CorsGetIssuanceIdClaimedCredentialOK([void updates(CorsGetIssuanceIdClaimedCredentialOKBuilder b)]) = _$CorsGetIssuanceIdClaimedCredentialOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CorsGetIssuanceIdClaimedCredentialOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CorsGetIssuanceIdClaimedCredentialOK> get serializer => _$CorsGetIssuanceIdClaimedCredentialOKSerializer();
}

class _$CorsGetIssuanceIdClaimedCredentialOKSerializer implements PrimitiveSerializer<CorsGetIssuanceIdClaimedCredentialOK> {
  @override
  final Iterable<Type> types = const [CorsGetIssuanceIdClaimedCredentialOK, _$CorsGetIssuanceIdClaimedCredentialOK];

  @override
  final String wireName = r'CorsGetIssuanceIdClaimedCredentialOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CorsGetIssuanceIdClaimedCredentialOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.corsGetIssuanceIdClaimedCredentialOk != null) {
      yield r'corsGetIssuanceIdClaimedCredentialOk';
      yield serializers.serialize(
        object.corsGetIssuanceIdClaimedCredentialOk,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CorsGetIssuanceIdClaimedCredentialOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CorsGetIssuanceIdClaimedCredentialOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'corsGetIssuanceIdClaimedCredentialOk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.corsGetIssuanceIdClaimedCredentialOk = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CorsGetIssuanceIdClaimedCredentialOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CorsGetIssuanceIdClaimedCredentialOKBuilder();
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

