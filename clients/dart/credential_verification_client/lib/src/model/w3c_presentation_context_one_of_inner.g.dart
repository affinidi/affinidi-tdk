// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_presentation_context_one_of_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cPresentationContextOneOfInner
    extends W3cPresentationContextOneOfInner {
  @override
  final OneOf oneOf;

  factory _$W3cPresentationContextOneOfInner(
          [void Function(W3cPresentationContextOneOfInnerBuilder)? updates]) =>
      (W3cPresentationContextOneOfInnerBuilder()..update(updates))._build();

  _$W3cPresentationContextOneOfInner._({required this.oneOf}) : super._();
  @override
  W3cPresentationContextOneOfInner rebuild(
          void Function(W3cPresentationContextOneOfInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cPresentationContextOneOfInnerBuilder toBuilder() =>
      W3cPresentationContextOneOfInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cPresentationContextOneOfInner && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'W3cPresentationContextOneOfInner')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class W3cPresentationContextOneOfInnerBuilder
    implements
        Builder<W3cPresentationContextOneOfInner,
            W3cPresentationContextOneOfInnerBuilder> {
  _$W3cPresentationContextOneOfInner? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  W3cPresentationContextOneOfInnerBuilder() {
    W3cPresentationContextOneOfInner._defaults(this);
  }

  W3cPresentationContextOneOfInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cPresentationContextOneOfInner other) {
    _$v = other as _$W3cPresentationContextOneOfInner;
  }

  @override
  void update(void Function(W3cPresentationContextOneOfInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cPresentationContextOneOfInner build() => _build();

  _$W3cPresentationContextOneOfInner _build() {
    final _$result = _$v ??
        _$W3cPresentationContextOneOfInner._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'W3cPresentationContextOneOfInner', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
