// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteAccountDto extends DeleteAccountDto {
  @override
  final int? accountIndex;

  factory _$DeleteAccountDto(
          [void Function(DeleteAccountDtoBuilder)? updates]) =>
      (new DeleteAccountDtoBuilder()..update(updates))._build();

  _$DeleteAccountDto._({this.accountIndex}) : super._();

  @override
  DeleteAccountDto rebuild(void Function(DeleteAccountDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteAccountDtoBuilder toBuilder() =>
      new DeleteAccountDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteAccountDto && accountIndex == other.accountIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteAccountDto')
          ..add('accountIndex', accountIndex))
        .toString();
  }
}

class DeleteAccountDtoBuilder
    implements Builder<DeleteAccountDto, DeleteAccountDtoBuilder> {
  _$DeleteAccountDto? _$v;

  int? _accountIndex;
  int? get accountIndex => _$this._accountIndex;
  set accountIndex(int? accountIndex) => _$this._accountIndex = accountIndex;

  DeleteAccountDtoBuilder() {
    DeleteAccountDto._defaults(this);
  }

  DeleteAccountDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountIndex = $v.accountIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteAccountDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteAccountDto;
  }

  @override
  void update(void Function(DeleteAccountDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteAccountDto build() => _build();

  _$DeleteAccountDto _build() {
    final _$result = _$v ??
        new _$DeleteAccountDto._(
          accountIndex: accountIndex,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
