//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_credential_config_not_exist_error.g.dart';

/// ProjectCredentialConfigNotExistError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class ProjectCredentialConfigNotExistError
    implements
        Built<ProjectCredentialConfigNotExistError,
            ProjectCredentialConfigNotExistErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  ProjectCredentialConfigNotExistErrorNameEnum get name;
  // enum nameEnum {  ProjectCredentialConfigNotExistError,  };

  @BuiltValueField(wireName: r'message')
  ProjectCredentialConfigNotExistErrorMessageEnum get message;
  // enum messageEnum {  Credential config is not available for the project,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  ProjectCredentialConfigNotExistError._();

  factory ProjectCredentialConfigNotExistError(
          [void updates(ProjectCredentialConfigNotExistErrorBuilder b)]) =
      _$ProjectCredentialConfigNotExistError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectCredentialConfigNotExistErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectCredentialConfigNotExistError> get serializer =>
      _$ProjectCredentialConfigNotExistErrorSerializer();
}

class _$ProjectCredentialConfigNotExistErrorSerializer
    implements PrimitiveSerializer<ProjectCredentialConfigNotExistError> {
  @override
  final Iterable<Type> types = const [
    ProjectCredentialConfigNotExistError,
    _$ProjectCredentialConfigNotExistError
  ];

  @override
  final String wireName = r'ProjectCredentialConfigNotExistError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectCredentialConfigNotExistError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType:
          const FullType(ProjectCredentialConfigNotExistErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType:
          const FullType(ProjectCredentialConfigNotExistErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(
          ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum),
    );
    yield r'traceId';
    yield serializers.serialize(
      object.traceId,
      specifiedType: const FullType(String),
    );
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(
            BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectCredentialConfigNotExistError object, {
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
    required ProjectCredentialConfigNotExistErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ProjectCredentialConfigNotExistErrorNameEnum),
          ) as ProjectCredentialConfigNotExistErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ProjectCredentialConfigNotExistErrorMessageEnum),
          ) as ProjectCredentialConfigNotExistErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum),
          ) as ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum;
          result.httpStatusCode = valueDes;
          break;
        case r'traceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.traceId = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
          ) as BuiltList<ActionForbiddenErrorDetailsInner>;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectCredentialConfigNotExistError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectCredentialConfigNotExistErrorBuilder();
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

class ProjectCredentialConfigNotExistErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ProjectCredentialConfigNotExistError')
  static const ProjectCredentialConfigNotExistErrorNameEnum
      projectCredentialConfigNotExistError =
      _$projectCredentialConfigNotExistErrorNameEnum_projectCredentialConfigNotExistError;

  static Serializer<ProjectCredentialConfigNotExistErrorNameEnum>
      get serializer =>
          _$projectCredentialConfigNotExistErrorNameEnumSerializer;

  const ProjectCredentialConfigNotExistErrorNameEnum._(String name)
      : super(name);

  static BuiltSet<ProjectCredentialConfigNotExistErrorNameEnum> get values =>
      _$projectCredentialConfigNotExistErrorNameEnumValues;
  static ProjectCredentialConfigNotExistErrorNameEnum valueOf(String name) =>
      _$projectCredentialConfigNotExistErrorNameEnumValueOf(name);
}

class ProjectCredentialConfigNotExistErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName: r'Credential config is not available for the project')
  static const ProjectCredentialConfigNotExistErrorMessageEnum
      credentialConfigIsNotAvailableForTheProject =
      _$projectCredentialConfigNotExistErrorMessageEnum_credentialConfigIsNotAvailableForTheProject;

  static Serializer<ProjectCredentialConfigNotExistErrorMessageEnum>
      get serializer =>
          _$projectCredentialConfigNotExistErrorMessageEnumSerializer;

  const ProjectCredentialConfigNotExistErrorMessageEnum._(String name)
      : super(name);

  static BuiltSet<ProjectCredentialConfigNotExistErrorMessageEnum> get values =>
      _$projectCredentialConfigNotExistErrorMessageEnumValues;
  static ProjectCredentialConfigNotExistErrorMessageEnum valueOf(String name) =>
      _$projectCredentialConfigNotExistErrorMessageEnumValueOf(name);
}

class ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum
      number400 =
      _$projectCredentialConfigNotExistErrorHttpStatusCodeEnum_number400;

  static Serializer<ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum>
      get serializer =>
          _$projectCredentialConfigNotExistErrorHttpStatusCodeEnumSerializer;

  const ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum>
      get values =>
          _$projectCredentialConfigNotExistErrorHttpStatusCodeEnumValues;
  static ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum valueOf(
          String name) =>
      _$projectCredentialConfigNotExistErrorHttpStatusCodeEnumValueOf(name);
}
