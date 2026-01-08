// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unpack_message_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnpackMessageInput extends UnpackMessageInput {
  @override
  final JsonObject message;

  factory _$UnpackMessageInput(
          [void Function(UnpackMessageInputBuilder)? updates]) =>
      (UnpackMessageInputBuilder()..update(updates))._build();

  _$UnpackMessageInput._({required this.message}) : super._();
  @override
  UnpackMessageInput rebuild(
          void Function(UnpackMessageInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnpackMessageInputBuilder toBuilder() =>
      UnpackMessageInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnpackMessageInput && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnpackMessageInput')
          ..add('message', message))
        .toString();
  }
}

class UnpackMessageInputBuilder
    implements Builder<UnpackMessageInput, UnpackMessageInputBuilder> {
  _$UnpackMessageInput? _$v;

  JsonObject? _message;
  JsonObject? get message => _$this._message;
  set message(JsonObject? message) => _$this._message = message;

  UnpackMessageInputBuilder() {
    UnpackMessageInput._defaults(this);
  }

  UnpackMessageInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnpackMessageInput other) {
    _$v = other as _$UnpackMessageInput;
  }

  @override
  void update(void Function(UnpackMessageInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnpackMessageInput build() => _build();

  _$UnpackMessageInput _build() {
    final _$result = _$v ??
        _$UnpackMessageInput._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'UnpackMessageInput', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
