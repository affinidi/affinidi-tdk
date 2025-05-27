// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JwtObject extends JwtObject {
  @override
  final BuiltList<String> alg;

  factory _$JwtObject([void Function(JwtObjectBuilder)? updates]) =>
      (JwtObjectBuilder()..update(updates))._build();

  _$JwtObject._({required this.alg}) : super._();
  @override
  JwtObject rebuild(void Function(JwtObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwtObjectBuilder toBuilder() => JwtObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JwtObject && alg == other.alg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JwtObject')..add('alg', alg))
        .toString();
  }
}

class JwtObjectBuilder implements Builder<JwtObject, JwtObjectBuilder> {
  _$JwtObject? _$v;

  ListBuilder<String>? _alg;
  ListBuilder<String> get alg => _$this._alg ??= ListBuilder<String>();
  set alg(ListBuilder<String>? alg) => _$this._alg = alg;

  JwtObjectBuilder() {
    JwtObject._defaults(this);
  }

  JwtObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alg = $v.alg.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JwtObject other) {
    _$v = other as _$JwtObject;
  }

  @override
  void update(void Function(JwtObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JwtObject build() => _build();

  _$JwtObject _build() {
    _$JwtObject _$result;
    try {
      _$result = _$v ??
          _$JwtObject._(
            alg: alg.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alg';
        alg.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'JwtObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
