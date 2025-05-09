import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vault_service_state.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class VaultServiceState with _$VaultServiceState {
  factory VaultServiceState({
    String? error,
    Vault? vault,
  }) = _VaultServiceState;
}
