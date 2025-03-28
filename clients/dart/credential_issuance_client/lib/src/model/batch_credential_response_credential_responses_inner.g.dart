// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_credential_response_credential_responses_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchCredentialResponseCredentialResponsesInner
    extends BatchCredentialResponseCredentialResponsesInner {
  @override
  final JsonObject? credential;

  factory _$BatchCredentialResponseCredentialResponsesInner(
          [void Function(
                  BatchCredentialResponseCredentialResponsesInnerBuilder)?
              updates]) =>
      (new BatchCredentialResponseCredentialResponsesInnerBuilder()
            ..update(updates))
          ._build();

  _$BatchCredentialResponseCredentialResponsesInner._({this.credential})
      : super._();

  @override
  BatchCredentialResponseCredentialResponsesInner rebuild(
          void Function(BatchCredentialResponseCredentialResponsesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchCredentialResponseCredentialResponsesInnerBuilder toBuilder() =>
      new BatchCredentialResponseCredentialResponsesInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchCredentialResponseCredentialResponsesInner &&
        credential == other.credential;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credential.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BatchCredentialResponseCredentialResponsesInner')
          ..add('credential', credential))
        .toString();
  }
}

class BatchCredentialResponseCredentialResponsesInnerBuilder
    implements
        Builder<BatchCredentialResponseCredentialResponsesInner,
            BatchCredentialResponseCredentialResponsesInnerBuilder> {
  _$BatchCredentialResponseCredentialResponsesInner? _$v;

  JsonObject? _credential;
  JsonObject? get credential => _$this._credential;
  set credential(JsonObject? credential) => _$this._credential = credential;

  BatchCredentialResponseCredentialResponsesInnerBuilder() {
    BatchCredentialResponseCredentialResponsesInner._defaults(this);
  }

  BatchCredentialResponseCredentialResponsesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credential = $v.credential;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchCredentialResponseCredentialResponsesInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchCredentialResponseCredentialResponsesInner;
  }

  @override
  void update(
      void Function(BatchCredentialResponseCredentialResponsesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchCredentialResponseCredentialResponsesInner build() => _build();

  _$BatchCredentialResponseCredentialResponsesInner _build() {
    final _$result = _$v ??
        new _$BatchCredentialResponseCredentialResponsesInner._(
          credential: credential,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
