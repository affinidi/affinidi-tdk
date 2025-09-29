// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'w3c_presentation_context.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$W3cPresentationContext extends W3cPresentationContext {
  @override
  final OneOf oneOf;

  factory _$W3cPresentationContext(
          [void Function(W3cPresentationContextBuilder)? updates]) =>
      (W3cPresentationContextBuilder()..update(updates))._build();

  _$W3cPresentationContext._({required this.oneOf}) : super._();
  @override
  W3cPresentationContext rebuild(
          void Function(W3cPresentationContextBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  W3cPresentationContextBuilder toBuilder() =>
      W3cPresentationContextBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is W3cPresentationContext && oneOf == other.oneOf;
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
    return (newBuiltValueToStringHelper(r'W3cPresentationContext')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class W3cPresentationContextBuilder
    implements Builder<W3cPresentationContext, W3cPresentationContextBuilder> {
  _$W3cPresentationContext? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  W3cPresentationContextBuilder() {
    W3cPresentationContext._defaults(this);
  }

  W3cPresentationContextBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(W3cPresentationContext other) {
    _$v = other as _$W3cPresentationContext;
  }

  @override
  void update(void Function(W3cPresentationContextBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  W3cPresentationContext build() => _build();

  _$W3cPresentationContext _build() {
    final _$result = _$v ??
        _$W3cPresentationContext._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'W3cPresentationContext', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
