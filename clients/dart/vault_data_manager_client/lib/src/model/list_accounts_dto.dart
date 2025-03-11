//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_vault_data_manager_client/src/model/account_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_accounts_dto.g.dart';

/// ListAccountsDto
///
/// Properties:
/// * [nodes] 
@BuiltValue()
abstract class ListAccountsDto implements Built<ListAccountsDto, ListAccountsDtoBuilder> {
  @BuiltValueField(wireName: r'nodes')
  BuiltList<AccountDto>? get nodes;

  ListAccountsDto._();

  factory ListAccountsDto([void updates(ListAccountsDtoBuilder b)]) = _$ListAccountsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListAccountsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListAccountsDto> get serializer => _$ListAccountsDtoSerializer();
}

class _$ListAccountsDtoSerializer implements PrimitiveSerializer<ListAccountsDto> {
  @override
  final Iterable<Type> types = const [ListAccountsDto, _$ListAccountsDto];

  @override
  final String wireName = r'ListAccountsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListAccountsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nodes != null) {
      yield r'nodes';
      yield serializers.serialize(
        object.nodes,
        specifiedType: const FullType(BuiltList, [FullType(AccountDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListAccountsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListAccountsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AccountDto)]),
          ) as BuiltList<AccountDto>;
          result.nodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListAccountsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListAccountsDtoBuilder();
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

