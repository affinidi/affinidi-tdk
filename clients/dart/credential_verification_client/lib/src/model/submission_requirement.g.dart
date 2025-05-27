// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission_requirement.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubmissionRequirementRuleEnum _$submissionRequirementRuleEnum_all =
    const SubmissionRequirementRuleEnum._('all');
const SubmissionRequirementRuleEnum _$submissionRequirementRuleEnum_pick =
    const SubmissionRequirementRuleEnum._('pick');

SubmissionRequirementRuleEnum _$submissionRequirementRuleEnumValueOf(
    String name) {
  switch (name) {
    case 'all':
      return _$submissionRequirementRuleEnum_all;
    case 'pick':
      return _$submissionRequirementRuleEnum_pick;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SubmissionRequirementRuleEnum>
    _$submissionRequirementRuleEnumValues = BuiltSet<
        SubmissionRequirementRuleEnum>(const <SubmissionRequirementRuleEnum>[
  _$submissionRequirementRuleEnum_all,
  _$submissionRequirementRuleEnum_pick,
]);

Serializer<SubmissionRequirementRuleEnum>
    _$submissionRequirementRuleEnumSerializer =
    _$SubmissionRequirementRuleEnumSerializer();

class _$SubmissionRequirementRuleEnumSerializer
    implements PrimitiveSerializer<SubmissionRequirementRuleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'pick': 'pick',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'pick': 'pick',
  };

  @override
  final Iterable<Type> types = const <Type>[SubmissionRequirementRuleEnum];
  @override
  final String wireName = 'SubmissionRequirementRuleEnum';

  @override
  Object serialize(
          Serializers serializers, SubmissionRequirementRuleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SubmissionRequirementRuleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SubmissionRequirementRuleEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SubmissionRequirement extends SubmissionRequirement {
  @override
  final String? name;
  @override
  final String? purpose;
  @override
  final SubmissionRequirementRuleEnum rule;
  @override
  final int? count;
  @override
  final int? min;
  @override
  final int? max;
  @override
  final String? from;
  @override
  final BuiltList<SubmissionRequirement>? fromNested;

  factory _$SubmissionRequirement(
          [void Function(SubmissionRequirementBuilder)? updates]) =>
      (SubmissionRequirementBuilder()..update(updates))._build();

  _$SubmissionRequirement._(
      {this.name,
      this.purpose,
      required this.rule,
      this.count,
      this.min,
      this.max,
      this.from,
      this.fromNested})
      : super._();
  @override
  SubmissionRequirement rebuild(
          void Function(SubmissionRequirementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubmissionRequirementBuilder toBuilder() =>
      SubmissionRequirementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubmissionRequirement &&
        name == other.name &&
        purpose == other.purpose &&
        rule == other.rule &&
        count == other.count &&
        min == other.min &&
        max == other.max &&
        from == other.from &&
        fromNested == other.fromNested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, purpose.hashCode);
    _$hash = $jc(_$hash, rule.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, fromNested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubmissionRequirement')
          ..add('name', name)
          ..add('purpose', purpose)
          ..add('rule', rule)
          ..add('count', count)
          ..add('min', min)
          ..add('max', max)
          ..add('from', from)
          ..add('fromNested', fromNested))
        .toString();
  }
}

class SubmissionRequirementBuilder
    implements Builder<SubmissionRequirement, SubmissionRequirementBuilder> {
  _$SubmissionRequirement? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _purpose;
  String? get purpose => _$this._purpose;
  set purpose(String? purpose) => _$this._purpose = purpose;

  SubmissionRequirementRuleEnum? _rule;
  SubmissionRequirementRuleEnum? get rule => _$this._rule;
  set rule(SubmissionRequirementRuleEnum? rule) => _$this._rule = rule;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _min;
  int? get min => _$this._min;
  set min(int? min) => _$this._min = min;

  int? _max;
  int? get max => _$this._max;
  set max(int? max) => _$this._max = max;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  ListBuilder<SubmissionRequirement>? _fromNested;
  ListBuilder<SubmissionRequirement> get fromNested =>
      _$this._fromNested ??= ListBuilder<SubmissionRequirement>();
  set fromNested(ListBuilder<SubmissionRequirement>? fromNested) =>
      _$this._fromNested = fromNested;

  SubmissionRequirementBuilder() {
    SubmissionRequirement._defaults(this);
  }

  SubmissionRequirementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _purpose = $v.purpose;
      _rule = $v.rule;
      _count = $v.count;
      _min = $v.min;
      _max = $v.max;
      _from = $v.from;
      _fromNested = $v.fromNested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubmissionRequirement other) {
    _$v = other as _$SubmissionRequirement;
  }

  @override
  void update(void Function(SubmissionRequirementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubmissionRequirement build() => _build();

  _$SubmissionRequirement _build() {
    _$SubmissionRequirement _$result;
    try {
      _$result = _$v ??
          _$SubmissionRequirement._(
            name: name,
            purpose: purpose,
            rule: BuiltValueNullFieldError.checkNotNull(
                rule, r'SubmissionRequirement', 'rule'),
            count: count,
            min: min,
            max: max,
            from: from,
            fromNested: _fromNested?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fromNested';
        _fromNested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SubmissionRequirement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
