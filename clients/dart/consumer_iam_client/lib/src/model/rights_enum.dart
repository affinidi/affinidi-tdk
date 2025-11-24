//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rights_enum.g.dart';

class RightsEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'vfs-read')
  static const RightsEnum vfsRead = _$vfsRead;
  @BuiltValueEnumConst(wireName: r'vfs-write')
  static const RightsEnum vfsWrite = _$vfsWrite;

  static Serializer<RightsEnum> get serializer => _$rightsEnumSerializer;

  const RightsEnum._(String name) : super(name);

  static BuiltSet<RightsEnum> get values => _$values;
  static RightsEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RightsEnumMixin = Object with _$RightsEnumMixin;
