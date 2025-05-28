// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_logged_consents_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListLoggedConsentsOK extends ListLoggedConsentsOK {
  @override
  final BuiltList<ConsentDto> consents;
  @override
  final String? lastEvaluatedKey;

  factory _$ListLoggedConsentsOK(
          [void Function(ListLoggedConsentsOKBuilder)? updates]) =>
      (ListLoggedConsentsOKBuilder()..update(updates))._build();

  _$ListLoggedConsentsOK._({required this.consents, this.lastEvaluatedKey})
      : super._();
  @override
  ListLoggedConsentsOK rebuild(
          void Function(ListLoggedConsentsOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListLoggedConsentsOKBuilder toBuilder() =>
      ListLoggedConsentsOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListLoggedConsentsOK &&
        consents == other.consents &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, consents.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListLoggedConsentsOK')
          ..add('consents', consents)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ListLoggedConsentsOKBuilder
    implements Builder<ListLoggedConsentsOK, ListLoggedConsentsOKBuilder> {
  _$ListLoggedConsentsOK? _$v;

  ListBuilder<ConsentDto>? _consents;
  ListBuilder<ConsentDto> get consents =>
      _$this._consents ??= ListBuilder<ConsentDto>();
  set consents(ListBuilder<ConsentDto>? consents) =>
      _$this._consents = consents;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ListLoggedConsentsOKBuilder() {
    ListLoggedConsentsOK._defaults(this);
  }

  ListLoggedConsentsOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _consents = $v.consents.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListLoggedConsentsOK other) {
    _$v = other as _$ListLoggedConsentsOK;
  }

  @override
  void update(void Function(ListLoggedConsentsOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListLoggedConsentsOK build() => _build();

  _$ListLoggedConsentsOK _build() {
    _$ListLoggedConsentsOK _$result;
    try {
      _$result = _$v ??
          _$ListLoggedConsentsOK._(
            consents: consents.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'consents';
        consents.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListLoggedConsentsOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
