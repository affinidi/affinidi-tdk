//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_verification_client/src/model/jwt_object.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/ldp_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'format.g.dart';

/// Format
///
/// Properties:
/// * [jwt] 
/// * [jwtVc] 
/// * [jwtVp] 
/// * [ldp] 
/// * [ldpVc] 
/// * [ldpVp] 
@BuiltValue()
abstract class Format implements Built<Format, FormatBuilder> {
  @BuiltValueField(wireName: r'jwt')
  JwtObject? get jwt;

  @BuiltValueField(wireName: r'jwt_vc')
  JwtObject? get jwtVc;

  @BuiltValueField(wireName: r'jwt_vp')
  JwtObject? get jwtVp;

  @BuiltValueField(wireName: r'ldp')
  LdpObject? get ldp;

  @BuiltValueField(wireName: r'ldp_vc')
  LdpObject? get ldpVc;

  @BuiltValueField(wireName: r'ldp_vp')
  LdpObject? get ldpVp;

  Format._();

  factory Format([void updates(FormatBuilder b)]) = _$Format;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FormatBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Format> get serializer => _$FormatSerializer();
}

class _$FormatSerializer implements PrimitiveSerializer<Format> {
  @override
  final Iterable<Type> types = const [Format, _$Format];

  @override
  final String wireName = r'Format';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Format object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.jwt != null) {
      yield r'jwt';
      yield serializers.serialize(
        object.jwt,
        specifiedType: const FullType(JwtObject),
      );
    }
    if (object.jwtVc != null) {
      yield r'jwt_vc';
      yield serializers.serialize(
        object.jwtVc,
        specifiedType: const FullType(JwtObject),
      );
    }
    if (object.jwtVp != null) {
      yield r'jwt_vp';
      yield serializers.serialize(
        object.jwtVp,
        specifiedType: const FullType(JwtObject),
      );
    }
    if (object.ldp != null) {
      yield r'ldp';
      yield serializers.serialize(
        object.ldp,
        specifiedType: const FullType(LdpObject),
      );
    }
    if (object.ldpVc != null) {
      yield r'ldp_vc';
      yield serializers.serialize(
        object.ldpVc,
        specifiedType: const FullType(LdpObject),
      );
    }
    if (object.ldpVp != null) {
      yield r'ldp_vp';
      yield serializers.serialize(
        object.ldpVp,
        specifiedType: const FullType(LdpObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Format object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FormatBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jwt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JwtObject),
          ) as JwtObject;
          result.jwt.replace(valueDes);
          break;
        case r'jwt_vc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JwtObject),
          ) as JwtObject;
          result.jwtVc.replace(valueDes);
          break;
        case r'jwt_vp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JwtObject),
          ) as JwtObject;
          result.jwtVp.replace(valueDes);
          break;
        case r'ldp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LdpObject),
          ) as LdpObject;
          result.ldp.replace(valueDes);
          break;
        case r'ldp_vc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LdpObject),
          ) as LdpObject;
          result.ldpVc.replace(valueDes);
          break;
        case r'ldp_vp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LdpObject),
          ) as LdpObject;
          result.ldpVp.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Format deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FormatBuilder();
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

