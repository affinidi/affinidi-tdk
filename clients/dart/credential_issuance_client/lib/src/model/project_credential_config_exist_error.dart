//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_credential_config_exist_error.g.dart';

/// ProjectCredentialConfigExistError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class ProjectCredentialConfigExistError implements Built<ProjectCredentialConfigExistError, ProjectCredentialConfigExistErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  ProjectCredentialConfigExistErrorNameEnum get name;
  // enum nameEnum {  ProjectCredentialConfigExistError,  };

  @BuiltValueField(wireName: r'message')
  ProjectCredentialConfigExistErrorMessageEnum get message;
  // enum messageEnum {  Credential config is exist for the project, one config is allowed for each project,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  ProjectCredentialConfigExistErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  ProjectCredentialConfigExistError._();

  factory ProjectCredentialConfigExistError([void updates(ProjectCredentialConfigExistErrorBuilder b)]) = _$ProjectCredentialConfigExistError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectCredentialConfigExistErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectCredentialConfigExistError> get serializer => _$ProjectCredentialConfigExistErrorSerializer();
}

class _$ProjectCredentialConfigExistErrorSerializer implements PrimitiveSerializer<ProjectCredentialConfigExistError> {
  @override
  final Iterable<Type> types = const [ProjectCredentialConfigExistError, _$ProjectCredentialConfigExistError];

  @override
  final String wireName = r'ProjectCredentialConfigExistError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectCredentialConfigExistError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(ProjectCredentialConfigExistErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(ProjectCredentialConfigExistErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(ProjectCredentialConfigExistErrorHttpStatusCodeEnum),
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
        specifiedType: const FullType(BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectCredentialConfigExistError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectCredentialConfigExistErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectCredentialConfigExistErrorNameEnum),
          ) as ProjectCredentialConfigExistErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectCredentialConfigExistErrorMessageEnum),
          ) as ProjectCredentialConfigExistErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProjectCredentialConfigExistErrorHttpStatusCodeEnum),
          ) as ProjectCredentialConfigExistErrorHttpStatusCodeEnum;
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
            specifiedType: const FullType(BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
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
  ProjectCredentialConfigExistError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectCredentialConfigExistErrorBuilder();
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

class ProjectCredentialConfigExistErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ProjectCredentialConfigExistError')
  static const ProjectCredentialConfigExistErrorNameEnum projectCredentialConfigExistError = _$projectCredentialConfigExistErrorNameEnum_projectCredentialConfigExistError;

  static Serializer<ProjectCredentialConfigExistErrorNameEnum> get serializer => _$projectCredentialConfigExistErrorNameEnumSerializer;

  const ProjectCredentialConfigExistErrorNameEnum._(String name): super(name);

  static BuiltSet<ProjectCredentialConfigExistErrorNameEnum> get values => _$projectCredentialConfigExistErrorNameEnumValues;
  static ProjectCredentialConfigExistErrorNameEnum valueOf(String name) => _$projectCredentialConfigExistErrorNameEnumValueOf(name);
}

class ProjectCredentialConfigExistErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Credential config is exist for the project, one config is allowed for each project')
  static const ProjectCredentialConfigExistErrorMessageEnum credentialConfigIsExistForTheProjectCommaOneConfigIsAllowedForEachProject = _$projectCredentialConfigExistErrorMessageEnum_credentialConfigIsExistForTheProjectCommaOneConfigIsAllowedForEachProject;

  static Serializer<ProjectCredentialConfigExistErrorMessageEnum> get serializer => _$projectCredentialConfigExistErrorMessageEnumSerializer;

  const ProjectCredentialConfigExistErrorMessageEnum._(String name): super(name);

  static BuiltSet<ProjectCredentialConfigExistErrorMessageEnum> get values => _$projectCredentialConfigExistErrorMessageEnumValues;
  static ProjectCredentialConfigExistErrorMessageEnum valueOf(String name) => _$projectCredentialConfigExistErrorMessageEnumValueOf(name);
}

class ProjectCredentialConfigExistErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const ProjectCredentialConfigExistErrorHttpStatusCodeEnum number400 = _$projectCredentialConfigExistErrorHttpStatusCodeEnum_number400;

  static Serializer<ProjectCredentialConfigExistErrorHttpStatusCodeEnum> get serializer => _$projectCredentialConfigExistErrorHttpStatusCodeEnumSerializer;

  const ProjectCredentialConfigExistErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<ProjectCredentialConfigExistErrorHttpStatusCodeEnum> get values => _$projectCredentialConfigExistErrorHttpStatusCodeEnumValues;
  static ProjectCredentialConfigExistErrorHttpStatusCodeEnum valueOf(String name) => _$projectCredentialConfigExistErrorHttpStatusCodeEnumValueOf(name);
}

