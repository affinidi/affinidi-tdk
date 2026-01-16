// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unpack_message_result_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnpackMessageResultDto extends UnpackMessageResultDto {
  @override
  final JsonObject message;

  factory _$UnpackMessageResultDto(
          [void Function(UnpackMessageResultDtoBuilder)? updates]) =>
      (UnpackMessageResultDtoBuilder()..update(updates))._build();

  _$UnpackMessageResultDto._({required this.message}) : super._();
  @override
  UnpackMessageResultDto rebuild(
          void Function(UnpackMessageResultDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnpackMessageResultDtoBuilder toBuilder() =>
      UnpackMessageResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnpackMessageResultDto && message == other.message;
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
    return (newBuiltValueToStringHelper(r'UnpackMessageResultDto')
          ..add('message', message))
        .toString();
  }
}

class UnpackMessageResultDtoBuilder
    implements Builder<UnpackMessageResultDto, UnpackMessageResultDtoBuilder> {
  _$UnpackMessageResultDto? _$v;

  JsonObject? _message;
  JsonObject? get message => _$this._message;
  set message(JsonObject? message) => _$this._message = message;

  UnpackMessageResultDtoBuilder() {
    UnpackMessageResultDto._defaults(this);
  }

  UnpackMessageResultDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnpackMessageResultDto other) {
    _$v = other as _$UnpackMessageResultDto;
  }

  @override
  void update(void Function(UnpackMessageResultDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnpackMessageResultDto build() => _build();

  _$UnpackMessageResultDto _build() {
    final _$result = _$v ??
        _$UnpackMessageResultDto._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'UnpackMessageResultDto', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
