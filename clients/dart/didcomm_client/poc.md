diff --git a/apps/vault/android/app/build.gradle b/apps/vault/android/app/build.gradle
index bd0803d36893bca0a8ed82e9df1f7f51afb6ad40..d538d01add63cf409b7d49b60637402a19d4e224 100644
--- a/apps/vault/android/app/build.gradle
+++ b/apps/vault/android/app/build.gradle
@@ -77,7 +77,7 @@ android {
         applicationId project.env.get("APP_ID")
         // You can update the following values to match your application needs.
         // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
-        minSdkVersion 24 // required for compose
+        minSdkVersion 26 // required for veriff
         targetSdkVersion 34
         versionCode System.getenv('VERSION_CODE') as Integer ?: 1
         versionName System.getenv('VERSION_NAME') as String ?: flutterVersionName
diff --git a/apps/vault/lib/src/features/authentication/screens/unlock/unlock_desktop_layout.dart b/apps/vault/lib/src/features/authentication/screens/unlock/unlock_desktop_layout.dart
index 5e5e6deca19fd5307798fb6626bdda57072e5cb8..4165b67b4bc3fce07da116a7c1b97471b41b5c64 100644
--- a/apps/vault/lib/src/features/authentication/screens/unlock/unlock_desktop_layout.dart
+++ b/apps/vault/lib/src/features/authentication/screens/unlock/unlock_desktop_layout.dart
@@ -1,3 +1,4 @@
+import 'package:avmp_application/identity_verification/identity_verification_service_interface.dart';
 import 'package:avmp_application/navigation_service.dart';
 import 'package:avmp_application/routing/route_names.dart';
 import 'package:avmp_design_system/design_system.dart';
@@ -95,6 +96,18 @@ class _UnlockDesktopLayoutState extends State<UnlockDesktopLayout> {
                           context.l10n.unlockVaultTitle,
                           style: titleTextStyle,
                         ),
+                        Spacings.gap10x,
+                        ButtonStandardML.primary(
+                          onPressed: () {
+                            // TODO: create cubit and call it from there
+                            ServiceRegistry.getIt<
+                                    IdentityVerificationServiceInterface>()
+                                .verify();
+                          },
+                          label: 'Start Verification',
+                          appearance: ButtonAppearance.solid,
+                          size: ButtonSize.m,
+                        ),
                         Spacings.gap8x,
                         const DividerHorizontal(
                           marginBottom: Spacings.spacing4x,
diff --git a/apps/vault/lib/src/features/authentication/screens/unlock/unlock_mobile_layout.dart b/apps/vault/lib/src/features/authentication/screens/unlock/unlock_mobile_layout.dart
index 0bb25d071feb6c46d106e7c17c2059e5551ac2e5..b32c5162e40a5815e537a086488d348b2d1a7bfd 100644
--- a/apps/vault/lib/src/features/authentication/screens/unlock/unlock_mobile_layout.dart
+++ b/apps/vault/lib/src/features/authentication/screens/unlock/unlock_mobile_layout.dart
@@ -1,3 +1,4 @@
+import 'package:avmp_application/identity_verification/identity_verification_service_interface.dart';
 import 'package:avmp_application/routing/routing.dart';
 import 'package:avmp_design_system/design_system.dart';
 import 'package:avmp_design_system/responsive_components/affinidi_logo.dart';
@@ -50,6 +51,17 @@ class _UnlockMobileLayoutState extends State<UnlockMobileLayout> {
                 style: TextStyles.h3Headline,
               ),
               Spacings.gap10x,
+              ButtonStandardML.primary(
+                onPressed: () {
+                  // TODO: create cubit and call it from there
+                  ServiceRegistry.getIt<IdentityVerificationServiceInterface>()
+                      .verify();
+                },
+                label: 'Start Verification',
+                appearance: ButtonAppearance.solid,
+                size: ButtonSize.m,
+              ),
+              Spacings.gap10x,
               const DividerHorizontal(
                 marginBottom: Spacings.spacing4x,
               ),
diff --git a/apps/vault/lib/src/service_registry.dart b/apps/vault/lib/src/service_registry.dart
index e7e080dfc686821a95da9ff3df056347dcc4d264..1bc2d4c5977c873b60d1ddd29f7f50bba3afaa2d 100644
--- a/apps/vault/lib/src/service_registry.dart
+++ b/apps/vault/lib/src/service_registry.dart
@@ -23,6 +23,7 @@ import 'package:avmp_application/cubit/toast/toast_cubit.dart';
 import 'package:avmp_application/cubit/verification/verification_cubit.dart';
 import 'package:avmp_application/download_service.dart';
 import 'package:avmp_application/global_time_service_interface.dart';
+import 'package:avmp_application/identity_verification/identity_verification_service_interface.dart';
 import 'package:avmp_application/interceptor_interface.dart';
 import 'package:avmp_application/liveness_check_interface.dart';
 import 'package:avmp_application/message_handler_interface.dart';
@@ -85,6 +86,7 @@ import 'package:avmp_settings_workflow/settings_workflow.dart';
 import 'package:avmp_shared_preferences_service/shared_preferences_service.dart';
 import 'package:avmp_terms_and_conditions_workflow_service/terms_and_conditions_workflow_service.dart';
 import 'package:avmp_transient_cache/transient_cache.dart';
+import 'package:avmp_identity_verification_service/identity_verification_service.dart';
 import 'package:avmp_vault/src/features/authentication/bloc/authentication_controller.dart';
 import 'package:avmp_vault/src/features/authentication/bloc/authentication_cubit.dart';
 import 'package:avmp_vault/src/features/authentication/workflow/authentication_workflow.dart';
@@ -431,6 +433,9 @@ class ServiceRegistry {
         testPublishingPassphrase: Environment.testPublishingPassphrase,
       ),
     );
+
+    getIt.registerSingleton<IdentityVerificationServiceInterface>(
+        IdentityVerificationService());
   }
 
   static Iterable<Workflow> _createWorkflows(GetIt getIt) {
diff --git a/apps/vault/pubspec.lock b/apps/vault/pubspec.lock
index 569407b3750edaec98e1c918f95980543141f96b..2f60c31be9a0734131ec447d8c7701ad1d32eeab 100644
--- a/apps/vault/pubspec.lock
+++ b/apps/vault/pubspec.lock
@@ -271,6 +271,34 @@ packages:
       relative: true
     source: path
     version: "0.0.1"
+  avmp_identity_verification_service:
+    dependency: "direct main"
+    description:
+      path: "../../packages/infrastructure/identity_verification_service/identity_verification_service"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_identity_verification_service_desktop_and_mobile:
+    dependency: "direct overridden"
+    description:
+      path: "../../packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_identity_verification_service_interface:
+    dependency: "direct overridden"
+    description:
+      path: "../../packages/infrastructure/identity_verification_service/identity_verification_service_interface"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_identity_verification_service_web:
+    dependency: "direct overridden"
+    description:
+      path: "../../packages/infrastructure/identity_verification_service/identity_verification_service_web"
+      relative: true
+    source: path
+    version: "0.0.1"
   avmp_interceptor:
     dependency: "direct main"
     description:
@@ -2264,6 +2292,14 @@ packages:
       url: "https://pub.dev"
     source: hosted
     version: "2.1.4"
+  veriff_flutter:
+    dependency: transitive
+    description:
+      name: veriff_flutter
+      sha256: "761b5fa376ced95fba66950d5613cd1a11ab99cbc643907aed8774065c18a7e9"
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.2.0"
   vm_service:
     dependency: transitive
     description:
diff --git a/apps/vault/pubspec.yaml b/apps/vault/pubspec.yaml
index 5b2ea62977b60ec15d7375f9f3a4afa9a7144462..2022ff03214196c6e9770f3ad8adb9e92d15a428 100644
--- a/apps/vault/pubspec.yaml
+++ b/apps/vault/pubspec.yaml
@@ -69,6 +69,7 @@ dependencies:
   avmp_registration_workflow_service: ^0.0.1
   avmp_base_workflow: ^0.0.1
   avmp_application_lifecycle_wrapper: ^0.0.1
+  avmp_identity_verification_service: ^0.0.1
   localstorage: ^5.0.0
   avmp_liveness_check: ^0.0.1
   flutterwebapp_reload_detector: ^0.0.1
diff --git a/apps/vault/pubspec_overrides.yaml b/apps/vault/pubspec_overrides.yaml
index 60760eabbd2c7c3301bb8a4df66702bc247ae7ed..c75b0ffde241dbc63a9ea8d5d0b58e35a3393609 100644
--- a/apps/vault/pubspec_overrides.yaml
+++ b/apps/vault/pubspec_overrides.yaml
@@ -1,4 +1,4 @@
-# melos_managed_dependency_overrides: avmp_credential_claim_workflow,avmp_webauthn,avmp_webauthn_interface,avmp_webauthn_web,avmp_application_helper,avmp_application_helper_interface,avmp_application_helper_mobile,avmp_application_helper_web,avmp_multiplatform_check,avmp_html_image_loader,avmp_html_image_loader_interface,avmp_html_image_loader_web,avmp_interceptor,avmp_registration_workflow_service,avmp_sentry_service,avmp_application_lifecycle_wrapper,avmp_affinidi_logger
+# melos_managed_dependency_overrides: avmp_credential_claim_workflow,avmp_webauthn,avmp_webauthn_interface,avmp_webauthn_web,avmp_application_helper,avmp_application_helper_interface,avmp_application_helper_mobile,avmp_application_helper_web,avmp_multiplatform_check,avmp_html_image_loader,avmp_html_image_loader_interface,avmp_html_image_loader_web,avmp_interceptor,avmp_registration_workflow_service,avmp_sentry_service,avmp_application_lifecycle_wrapper,avmp_affinidi_logger,avmp_identity_verification_service,avmp_identity_verification_service_desktop_and_mobile,avmp_identity_verification_service_interface,avmp_identity_verification_service_web
 # melos_managed_dependency_overrides: avmp_aes_cbc_encryption_service,avmp_api_service,avmp_app_initialization_workflow,avmp_application,avmp_authentication_service,avmp_authentication_workflow,avmp_backup_workflow,avmp_base_workflow,avmp_common,avmp_console_application_logger,avmp_console_logger,avmp_cryptography_service,avmp_design_system,avmp_domain,avmp_download_service,avmp_global_time_service,avmp_history_workflow,avmp_liveness_check,avmp_liveness_check_interface,avmp_liveness_check_web,avmp_login_with_affinidi_workflow,avmp_message_handler,avmp_message_handler_interface,avmp_message_handler_web,avmp_navigation_service,avmp_orchestrator,avmp_passphrase_recovery_service,avmp_passphrase_reset_workflow,avmp_profile_workflow,avmp_profiles_workflow,avmp_registration_workflow,avmp_repository,avmp_restore_backup_workflow,avmp_secure_storage_service,avmp_settings_workflow,avmp_transient_cache,avmp_transient_cache_base,avmp_transient_cache_desktop_and_mobile,avmp_transient_cache_interface,avmp_transient_cache_web,avmp_verification_workflow,avmp_wallet_service,avmp_wallet_service_desktop_and_mobile,avmp_wallet_service_interface,avmp_wallet_service_web
 dependency_overrides:
   avmp_aes_cbc_encryption_service:
@@ -133,3 +133,11 @@ dependency_overrides:
     path: ../../packages/infrastructure/application_lifecycle_wrapper
   avmp_affinidi_logger:
     path: ../../packages/infrastructure/loggers/affinidi_logger
+  avmp_identity_verification_service:
+    path: ../../packages/infrastructure/identity_verification_service/identity_verification_service
+  avmp_identity_verification_service_desktop_and_mobile:
+    path: ../../packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile
+  avmp_identity_verification_service_interface:
+    path: ../../packages/infrastructure/identity_verification_service/identity_verification_service_interface
+  avmp_identity_verification_service_web:
+    path: ../../packages/infrastructure/identity_verification_service/identity_verification_service_web
diff --git a/packages/application/lib/identity_verification/identity_verification_service_interface.dart b/packages/application/lib/identity_verification/identity_verification_service_interface.dart
new file mode 100644
index 0000000000000000000000000000000000000000..a5b93321698951b63910081837d0371a62282768
--- /dev/null
+++ b/packages/application/lib/identity_verification/identity_verification_service_interface.dart
@@ -0,0 +1,3 @@
+abstract interface class IdentityVerificationServiceInterface {
+  Future<void> verify();
+}
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service/lib/identity_verification_service.dart b/packages/infrastructure/identity_verification_service/identity_verification_service/lib/identity_verification_service.dart
new file mode 100644
index 0000000000000000000000000000000000000000..583eda4fecfa91faec553ca6ec60f55e8e3ff982
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service/lib/identity_verification_service.dart
@@ -0,0 +1 @@
+export 'src/identity_verification_service.dart';
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service/lib/src/identity_verification_service.dart b/packages/infrastructure/identity_verification_service/identity_verification_service/lib/src/identity_verification_service.dart
new file mode 100644
index 0000000000000000000000000000000000000000..0fda945a145a58094e5de5a93fbad4644da965d9
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service/lib/src/identity_verification_service.dart
@@ -0,0 +1,12 @@
+import 'package:avmp_application/identity_verification/identity_verification_service_interface.dart';
+import 'package:avmp_identity_verification_service_interface/avmp_identity_verification_service_platform_interface.dart';
+
+class IdentityVerificationService
+    implements IdentityVerificationServiceInterface {
+  IdentityVerificationService();
+
+  @override
+  Future<void> verify() {
+    return IdentityVerificationServicePlatform.instance.verify();
+  }
+}
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec.lock b/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec.lock
new file mode 100644
index 0000000000000000000000000000000000000000..d5deb0ffa249b6b6447b8c002658abd3e6c1696e
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec.lock
@@ -0,0 +1,523 @@
+# Generated by pub
+# See https://dart.dev/tools/pub/glossary#lockfile
+packages:
+  async:
+    dependency: transitive
+    description:
+      name: async
+      sha256: "947bfcf187f74dbc5e146c9eb9c0f10c9f8b30743e341481c1e2ed3ecc18c20c"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.11.0"
+  avmp_api_service:
+    dependency: "direct overridden"
+    description:
+      path: "../../api_service"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_application:
+    dependency: "direct main"
+    description:
+      path: "../../../application"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_common:
+    dependency: "direct main"
+    description:
+      path: "../../../common"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_domain:
+    dependency: "direct main"
+    description:
+      path: "../../../domain"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_identity_verification_service_desktop_and_mobile:
+    dependency: "direct main"
+    description:
+      path: "../identity_verification_service_desktop_and_mobile"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_identity_verification_service_interface:
+    dependency: "direct main"
+    description:
+      path: "../identity_verification_service_interface"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_identity_verification_service_web:
+    dependency: "direct main"
+    description:
+      path: "../identity_verification_service_web"
+      relative: true
+    source: path
+    version: "0.0.1"
+  aws_common:
+    dependency: transitive
+    description:
+      name: aws_common
+      sha256: e803b51edc0657a52929b35417fa40b5658de420aafdd9ba8a7a744830798885
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.6.5"
+  aws_signature_v4:
+    dependency: transitive
+    description:
+      name: aws_signature_v4
+      sha256: be917660ce7142f176026e05cde4d70ec9a6d78fecd033b183f0d842d6b65f36
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.5.2"
+  bloc:
+    dependency: transitive
+    description:
+      name: bloc
+      sha256: "106842ad6569f0b60297619e9e0b1885c2fb9bf84812935490e6c5275777804e"
+      url: "https://pub.dev"
+    source: hosted
+    version: "8.1.4"
+  boolean_selector:
+    dependency: transitive
+    description:
+      name: boolean_selector
+      sha256: "6cfb5af12253eaf2b368f07bacc5a80d1301a071c73360d746b7f2e32d762c66"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.1"
+  built_collection:
+    dependency: transitive
+    description:
+      name: built_collection
+      sha256: "376e3dd27b51ea877c28d525560790aee2e6fbb5f20e2f85d5081027d94e2100"
+      url: "https://pub.dev"
+    source: hosted
+    version: "5.1.1"
+  built_value:
+    dependency: transitive
+    description:
+      name: built_value
+      sha256: c7913a9737ee4007efedaffc968c049fd0f3d0e49109e778edc10de9426005cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "8.9.2"
+  characters:
+    dependency: transitive
+    description:
+      name: characters
+      sha256: "04a925763edad70e8443c99234dc3328f442e811f1d8fd1a72f1c8ad0f69a605"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.0"
+  clock:
+    dependency: transitive
+    description:
+      name: clock
+      sha256: cb6d7f03e1de671e34607e909a7213e31d7752be4fb66a86d29fe1eb14bfb5cf
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.1"
+  collection:
+    dependency: transitive
+    description:
+      name: collection
+      sha256: ee67cb0715911d28db6bf4af1026078bd6f0128b07a5f66fb2ed94ec6783c09a
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.18.0"
+  convert:
+    dependency: transitive
+    description:
+      name: convert
+      sha256: "0f08b14755d163f6e2134cb58222dd25ea2a2ee8a195e53983d57c075324d592"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.1.1"
+  crypto:
+    dependency: transitive
+    description:
+      name: crypto
+      sha256: ec30d999af904f33454ba22ed9a86162b35e52b44ac4807d1d93c288041d7d27
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.5"
+  dio:
+    dependency: transitive
+    description:
+      name: dio
+      sha256: "5598aa796bbf4699afd5c67c0f5f6e2ed542afc956884b9cd58c306966efc260"
+      url: "https://pub.dev"
+    source: hosted
+    version: "5.7.0"
+  dio_web_adapter:
+    dependency: transitive
+    description:
+      name: dio_web_adapter
+      sha256: "33259a9276d6cea88774a0000cfae0d861003497755969c92faa223108620dc8"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.0"
+  equatable:
+    dependency: transitive
+    description:
+      name: equatable
+      sha256: c2b87cb7756efdf69892005af546c56c0b5037f54d2a88269b4f347a505e3ca2
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.5"
+  fake_async:
+    dependency: transitive
+    description:
+      name: fake_async
+      sha256: "511392330127add0b769b75a987850d136345d9227c6b94c96a04cf4a391bf78"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.1"
+  fixnum:
+    dependency: transitive
+    description:
+      name: fixnum
+      sha256: "25517a4deb0c03aa0f32fd12db525856438902d9c16536311e76cdc57b31d7d1"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.0"
+  flutter:
+    dependency: "direct main"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  flutter_lints:
+    dependency: "direct dev"
+    description:
+      name: flutter_lints
+      sha256: "9e8c3858111da373efc5aa341de011d9bd23e2c5c5e0c62bccf32438e192d7b1"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.2"
+  flutter_test:
+    dependency: "direct dev"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  flutter_web_plugins:
+    dependency: transitive
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  go_router:
+    dependency: transitive
+    description:
+      name: go_router
+      sha256: b465e99ce64ba75e61c8c0ce3d87b66d8ac07f0b35d0a7e0263fcfc10f99e836
+      url: "https://pub.dev"
+    source: hosted
+    version: "13.2.5"
+  http2:
+    dependency: transitive
+    description:
+      name: http2
+      sha256: "9ced024a160b77aba8fb8674e38f70875e321d319e6f303ec18e87bd5a4b0c1d"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.3.0"
+  http_parser:
+    dependency: transitive
+    description:
+      name: http_parser
+      sha256: "2aa08ce0341cc9b354a498388e30986515406668dbcc4f7c950c3e715496693b"
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.0.2"
+  iregexp:
+    dependency: transitive
+    description:
+      name: iregexp
+      sha256: "143859dcaeecf6f683102786762d70a47ef8441a0d2287a158172d32d38799cf"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.1.2"
+  js:
+    dependency: transitive
+    description:
+      name: js
+      sha256: f2c445dce49627136094980615a031419f7f3eb393237e4ecd97ac15dea343f3
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.6.7"
+  json_annotation:
+    dependency: transitive
+    description:
+      name: json_annotation
+      sha256: b10a7b2ff83d83c777edba3c6a0f97045ddadd56c944e1a23a3fdf43a1bf4467
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.8.1"
+  json_path:
+    dependency: transitive
+    description:
+      name: json_path
+      sha256: "7a06bbb1cfad390b20fb7a2ca5e67d9ba59633879c6d71142b80fbf61c3b66f6"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.7.4"
+  jwt_decoder:
+    dependency: transitive
+    description:
+      name: jwt_decoder
+      sha256: "54774aebf83f2923b99e6416b4ea915d47af3bde56884eb622de85feabbc559f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.1"
+  leak_tracker:
+    dependency: transitive
+    description:
+      name: leak_tracker
+      sha256: "7f0df31977cb2c0b88585095d168e689669a2cc9b97c309665e3386f3e9d341a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "10.0.4"
+  leak_tracker_flutter_testing:
+    dependency: transitive
+    description:
+      name: leak_tracker_flutter_testing
+      sha256: "06e98f569d004c1315b991ded39924b21af84cf14cc94791b8aea337d25b57f8"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.3"
+  leak_tracker_testing:
+    dependency: transitive
+    description:
+      name: leak_tracker_testing
+      sha256: "6ba465d5d76e67ddf503e1161d1f4a6bc42306f9d66ca1e8f079a47290fb06d3"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.1"
+  lints:
+    dependency: transitive
+    description:
+      name: lints
+      sha256: cbf8d4b858bb0134ef3ef87841abdf8d63bfc255c266b7bf6b39daa1085c4290
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.0"
+  logging:
+    dependency: transitive
+    description:
+      name: logging
+      sha256: "623a88c9594aa774443aa3eb2d41807a48486b5613e67599fb4c41c0ad47c340"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.0"
+  matcher:
+    dependency: transitive
+    description:
+      name: matcher
+      sha256: d2323aa2060500f906aa31a895b4030b6da3ebdcc5619d14ce1aada65cd161cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.12.16+1"
+  material_color_utilities:
+    dependency: transitive
+    description:
+      name: material_color_utilities
+      sha256: "0e0a020085b65b6083975e499759762399b4475f766c21668c4ecca34ea74e5a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.8.0"
+  maybe_just_nothing:
+    dependency: transitive
+    description:
+      name: maybe_just_nothing
+      sha256: "0c06326e26d08f6ed43247404376366dc4d756cef23a4f1db765f546224c35e0"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.5.3"
+  meta:
+    dependency: transitive
+    description:
+      name: meta
+      sha256: "7687075e408b093f36e6bbf6c91878cc0d4cd10f409506f7bc996f68220b9136"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.12.0"
+  mime:
+    dependency: transitive
+    description:
+      name: mime
+      sha256: "801fd0b26f14a4a58ccb09d5892c3fbdeff209594300a542492cf13fba9d247a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.0.6"
+  nanoid:
+    dependency: transitive
+    description:
+      name: nanoid
+      sha256: be3f8752d9046c825df2f3914195151eb876f3ad64b9d833dd0b799b77b8759e
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.0.0"
+  os_detect:
+    dependency: transitive
+    description:
+      name: os_detect
+      sha256: faf3bcf39515e64da8ff76b2f2805b20a6ff47ae515393e535f8579ff91d6b7f
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.1"
+  path:
+    dependency: transitive
+    description:
+      name: path
+      sha256: "087ce49c3f0dc39180befefc60fdb4acd8f8620e5682fe2476afd0b3688bb4af"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.9.0"
+  petitparser:
+    dependency: transitive
+    description:
+      name: petitparser
+      sha256: c15605cd28af66339f8eb6fbe0e541bfe2d1b72d5825efc6598f3e0a31b9ad27
+      url: "https://pub.dev"
+    source: hosted
+    version: "6.0.2"
+  plugin_platform_interface:
+    dependency: "direct main"
+    description:
+      name: plugin_platform_interface
+      sha256: "4820fbfdb9478b1ebae27888254d445073732dae3d6ea81f0b7e06d5dedc3f02"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.8"
+  rfc_6901:
+    dependency: transitive
+    description:
+      name: rfc_6901
+      sha256: df1bbfa3d023009598f19636d6114c6ac1e0b7bb7bf6a260f0e6e6ce91416820
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.2.0"
+  sky_engine:
+    dependency: transitive
+    description: flutter
+    source: sdk
+    version: "0.0.99"
+  source_span:
+    dependency: transitive
+    description:
+      name: source_span
+      sha256: "53e943d4206a5e30df338fd4c6e7a077e02254531b138a15aec3bd143c1a8b3c"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.10.0"
+  sprintf:
+    dependency: transitive
+    description:
+      name: sprintf
+      sha256: "1fc9ffe69d4df602376b52949af107d8f5703b77cda567c4d7d86a0693120f23"
+      url: "https://pub.dev"
+    source: hosted
+    version: "7.0.0"
+  stack_trace:
+    dependency: transitive
+    description:
+      name: stack_trace
+      sha256: "73713990125a6d93122541237550ee3352a2d84baad52d375a4cad2eb9b7ce0b"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.11.1"
+  stream_channel:
+    dependency: transitive
+    description:
+      name: stream_channel
+      sha256: ba2aa5d8cc609d96bbb2899c28934f9e1af5cddbd60a827822ea467161eb54e7
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.2"
+  stream_transform:
+    dependency: transitive
+    description:
+      name: stream_transform
+      sha256: "14a00e794c7c11aa145a170587321aedce29769c08d7f58b1d141da75e3b1c6f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.0"
+  string_scanner:
+    dependency: transitive
+    description:
+      name: string_scanner
+      sha256: "556692adab6cfa87322a115640c11f13cb77b3f076ddcc5d6ae3c20242bedcde"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.0"
+  term_glyph:
+    dependency: transitive
+    description:
+      name: term_glyph
+      sha256: a29248a84fbb7c79282b40b8c72a1209db169a2e0542bce341da992fe1bc7e84
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.1"
+  test_api:
+    dependency: transitive
+    description:
+      name: test_api
+      sha256: "9955ae474176f7ac8ee4e989dadfb411a58c30415bcfb648fa04b2b8a03afa7f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.7.0"
+  typed_data:
+    dependency: transitive
+    description:
+      name: typed_data
+      sha256: facc8d6582f16042dd49f2463ff1bd6e2c9ef9f3d5da3d9b087e244a7b564b3c
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.2"
+  uuid:
+    dependency: transitive
+    description:
+      name: uuid
+      sha256: a5be9ef6618a7ac1e964353ef476418026db906c4facdedaa299b7a2e71690ff
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.5.1"
+  vector_math:
+    dependency: transitive
+    description:
+      name: vector_math
+      sha256: "80b3257d1492ce4d091729e3a67a60407d227c27241d6927be0130c98e741803"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.4"
+  veriff_flutter:
+    dependency: transitive
+    description:
+      name: veriff_flutter
+      sha256: "761b5fa376ced95fba66950d5613cd1a11ab99cbc643907aed8774065c18a7e9"
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.2.0"
+  vm_service:
+    dependency: transitive
+    description:
+      name: vm_service
+      sha256: "3923c89304b715fb1eb6423f017651664a03bf5f4b29983627c4da791f74a4ec"
+      url: "https://pub.dev"
+    source: hosted
+    version: "14.2.1"
+  web:
+    dependency: transitive
+    description:
+      name: web
+      sha256: cd3543bd5798f6ad290ea73d210f423502e71900302dde696f8bff84bf89a1cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.0"
+sdks:
+  dart: ">=3.4.0 <4.0.0"
+  flutter: ">=3.18.0-18.0.pre.54"
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec.yaml b/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..aea597283c92e8b7bad05814a325a88211f29074
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec.yaml
@@ -0,0 +1,37 @@
+name: avmp_identity_verification_service
+description: "Identity Verification Service."
+version: 0.0.1
+
+environment:
+  sdk: '>=3.3.0 <4.0.0'
+  flutter: '>=3.3.0'
+
+flutter:
+  plugin:
+    platforms:
+      android:
+        default_package: avmp_identity_verification_service_desktop_and_mobile
+      ios:
+        default_package: avmp_identity_verification_service_desktop_and_mobile
+      macos:
+        default_package: avmp_identity_verification_service_desktop_and_mobile
+      windows:
+        default_package: avmp_identity_verification_service_desktop_and_mobile
+      web:
+        default_package: avmp_identity_verification_service_web
+
+dependencies:
+  flutter:
+    sdk: flutter
+  plugin_platform_interface: ^2.0.2
+  avmp_domain: ^0.0.1
+  avmp_common: ^0.0.1
+  avmp_application: ^0.0.1
+  avmp_identity_verification_service_interface: ^0.0.1
+  avmp_identity_verification_service_desktop_and_mobile: ^0.0.1
+  avmp_identity_verification_service_web: ^0.0.1
+
+dev_dependencies:
+  flutter_test:
+    sdk: flutter
+  flutter_lints: ^3.0.0
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec_overrides.yaml b/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec_overrides.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..dec442d7fb8721808ece8183854d15482a40cc7c
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service/pubspec_overrides.yaml
@@ -0,0 +1,16 @@
+# melos_managed_dependency_overrides: avmp_api_service,avmp_application,avmp_common,avmp_domain,avmp_identity_verification_service_interface,avmp_identity_verification_service_desktop_and_mobile,avmp_identity_verification_service_web
+dependency_overrides:
+  avmp_api_service:
+    path: ../../api_service
+  avmp_application:
+    path: ../../../application
+  avmp_common:
+    path: ../../../common
+  avmp_domain:
+    path: ../../../domain
+  avmp_identity_verification_service_desktop_and_mobile:
+    path: ../identity_verification_service_desktop_and_mobile
+  avmp_identity_verification_service_interface:
+    path: ../identity_verification_service_interface
+  avmp_identity_verification_service_web:
+    path: ../identity_verification_service_web
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/lib/avmp_identity_verification_service_desktop_and_mobile.dart b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/lib/avmp_identity_verification_service_desktop_and_mobile.dart
new file mode 100644
index 0000000000000000000000000000000000000000..9d9f8d01d615a74f63b1a3a29bfd7bc6405568b2
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/lib/avmp_identity_verification_service_desktop_and_mobile.dart
@@ -0,0 +1 @@
+export 'src/identity_verification_service_desktop_and_mobile.dart';
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/lib/src/identity_verification_service_desktop_and_mobile.dart b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/lib/src/identity_verification_service_desktop_and_mobile.dart
new file mode 100644
index 0000000000000000000000000000000000000000..0ede6f3aec21b5b226fb454ee314086d332502ab
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/lib/src/identity_verification_service_desktop_and_mobile.dart
@@ -0,0 +1,49 @@
+import 'package:avmp_identity_verification_service_interface/avmp_identity_verification_service_platform_interface.dart';
+import 'package:veriff_flutter/veriff_flutter.dart';
+import 'package:dio/dio.dart';
+
+class IdentityVerificationServiceDesktopAndMobile
+    extends IdentityVerificationServicePlatform {
+  final _veriff = Veriff();
+  // TODO: create respective API service to get session ULR
+  final _dio = Dio(
+    BaseOptions(
+      baseUrl: 'https://stationapi.veriff.com/v1',
+      headers: {
+        'Content-Type': 'application/json',
+        'X-AUTH-CLIENT': '<put api key here>'
+      },
+    ),
+  );
+
+  static void registerWith() {
+    IdentityVerificationServicePlatform.instance =
+        IdentityVerificationServiceDesktopAndMobile();
+  }
+
+  @override
+  Future<void> verify() async {
+    // TODO: this will be done by backned
+    final response = await _dio.post(
+      '/sessions',
+      data: {
+        'verification': {
+          'callback': 'https://veriff.com',
+          'vendorData': '2bf528f7-4b9c-44f0-b928-fdc7afc5ca1b'
+        },
+      },
+    );
+
+    final sessionUrl = response.data['verification']['url'];
+
+    final config = Configuration(sessionUrl);
+    final result = await _veriff.start(config);
+
+    print('--------------------------------------');
+
+    print(result.status);
+    print(result.error);
+
+    print('--------------------------------------');
+  }
+}
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec.lock b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec.lock
new file mode 100644
index 0000000000000000000000000000000000000000..6f928c863ae57ed4b46414794cec37f673bc7ee6
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec.lock
@@ -0,0 +1,509 @@
+# Generated by pub
+# See https://dart.dev/tools/pub/glossary#lockfile
+packages:
+  async:
+    dependency: transitive
+    description:
+      name: async
+      sha256: "947bfcf187f74dbc5e146c9eb9c0f10c9f8b30743e341481c1e2ed3ecc18c20c"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.11.0"
+  avmp_api_service:
+    dependency: "direct overridden"
+    description:
+      path: "../../api_service"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_application:
+    dependency: "direct overridden"
+    description:
+      path: "../../../application"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_common:
+    dependency: "direct overridden"
+    description:
+      path: "../../../common"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_domain:
+    dependency: "direct overridden"
+    description:
+      path: "../../../domain"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_identity_verification_service_interface:
+    dependency: "direct main"
+    description:
+      path: "../identity_verification_service_interface"
+      relative: true
+    source: path
+    version: "0.0.1"
+  aws_common:
+    dependency: transitive
+    description:
+      name: aws_common
+      sha256: e803b51edc0657a52929b35417fa40b5658de420aafdd9ba8a7a744830798885
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.6.5"
+  aws_signature_v4:
+    dependency: transitive
+    description:
+      name: aws_signature_v4
+      sha256: be917660ce7142f176026e05cde4d70ec9a6d78fecd033b183f0d842d6b65f36
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.5.2"
+  bloc:
+    dependency: transitive
+    description:
+      name: bloc
+      sha256: "106842ad6569f0b60297619e9e0b1885c2fb9bf84812935490e6c5275777804e"
+      url: "https://pub.dev"
+    source: hosted
+    version: "8.1.4"
+  boolean_selector:
+    dependency: transitive
+    description:
+      name: boolean_selector
+      sha256: "6cfb5af12253eaf2b368f07bacc5a80d1301a071c73360d746b7f2e32d762c66"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.1"
+  built_collection:
+    dependency: transitive
+    description:
+      name: built_collection
+      sha256: "376e3dd27b51ea877c28d525560790aee2e6fbb5f20e2f85d5081027d94e2100"
+      url: "https://pub.dev"
+    source: hosted
+    version: "5.1.1"
+  built_value:
+    dependency: transitive
+    description:
+      name: built_value
+      sha256: c7913a9737ee4007efedaffc968c049fd0f3d0e49109e778edc10de9426005cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "8.9.2"
+  characters:
+    dependency: transitive
+    description:
+      name: characters
+      sha256: "04a925763edad70e8443c99234dc3328f442e811f1d8fd1a72f1c8ad0f69a605"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.0"
+  clock:
+    dependency: transitive
+    description:
+      name: clock
+      sha256: cb6d7f03e1de671e34607e909a7213e31d7752be4fb66a86d29fe1eb14bfb5cf
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.1"
+  collection:
+    dependency: transitive
+    description:
+      name: collection
+      sha256: ee67cb0715911d28db6bf4af1026078bd6f0128b07a5f66fb2ed94ec6783c09a
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.18.0"
+  convert:
+    dependency: transitive
+    description:
+      name: convert
+      sha256: "0f08b14755d163f6e2134cb58222dd25ea2a2ee8a195e53983d57c075324d592"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.1.1"
+  crypto:
+    dependency: transitive
+    description:
+      name: crypto
+      sha256: ec30d999af904f33454ba22ed9a86162b35e52b44ac4807d1d93c288041d7d27
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.5"
+  dio:
+    dependency: "direct main"
+    description:
+      name: dio
+      sha256: "5598aa796bbf4699afd5c67c0f5f6e2ed542afc956884b9cd58c306966efc260"
+      url: "https://pub.dev"
+    source: hosted
+    version: "5.7.0"
+  dio_web_adapter:
+    dependency: transitive
+    description:
+      name: dio_web_adapter
+      sha256: "33259a9276d6cea88774a0000cfae0d861003497755969c92faa223108620dc8"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.0"
+  equatable:
+    dependency: transitive
+    description:
+      name: equatable
+      sha256: c2b87cb7756efdf69892005af546c56c0b5037f54d2a88269b4f347a505e3ca2
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.5"
+  fake_async:
+    dependency: transitive
+    description:
+      name: fake_async
+      sha256: "511392330127add0b769b75a987850d136345d9227c6b94c96a04cf4a391bf78"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.1"
+  fixnum:
+    dependency: transitive
+    description:
+      name: fixnum
+      sha256: "25517a4deb0c03aa0f32fd12db525856438902d9c16536311e76cdc57b31d7d1"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.0"
+  flutter:
+    dependency: "direct main"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  flutter_lints:
+    dependency: "direct dev"
+    description:
+      name: flutter_lints
+      sha256: "9e8c3858111da373efc5aa341de011d9bd23e2c5c5e0c62bccf32438e192d7b1"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.2"
+  flutter_test:
+    dependency: "direct dev"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  flutter_web_plugins:
+    dependency: transitive
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  go_router:
+    dependency: transitive
+    description:
+      name: go_router
+      sha256: b465e99ce64ba75e61c8c0ce3d87b66d8ac07f0b35d0a7e0263fcfc10f99e836
+      url: "https://pub.dev"
+    source: hosted
+    version: "13.2.5"
+  http2:
+    dependency: transitive
+    description:
+      name: http2
+      sha256: "9ced024a160b77aba8fb8674e38f70875e321d319e6f303ec18e87bd5a4b0c1d"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.3.0"
+  http_parser:
+    dependency: transitive
+    description:
+      name: http_parser
+      sha256: "2aa08ce0341cc9b354a498388e30986515406668dbcc4f7c950c3e715496693b"
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.0.2"
+  iregexp:
+    dependency: transitive
+    description:
+      name: iregexp
+      sha256: "143859dcaeecf6f683102786762d70a47ef8441a0d2287a158172d32d38799cf"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.1.2"
+  js:
+    dependency: transitive
+    description:
+      name: js
+      sha256: f2c445dce49627136094980615a031419f7f3eb393237e4ecd97ac15dea343f3
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.6.7"
+  json_annotation:
+    dependency: transitive
+    description:
+      name: json_annotation
+      sha256: b10a7b2ff83d83c777edba3c6a0f97045ddadd56c944e1a23a3fdf43a1bf4467
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.8.1"
+  json_path:
+    dependency: transitive
+    description:
+      name: json_path
+      sha256: "7a06bbb1cfad390b20fb7a2ca5e67d9ba59633879c6d71142b80fbf61c3b66f6"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.7.4"
+  jwt_decoder:
+    dependency: transitive
+    description:
+      name: jwt_decoder
+      sha256: "54774aebf83f2923b99e6416b4ea915d47af3bde56884eb622de85feabbc559f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.1"
+  leak_tracker:
+    dependency: transitive
+    description:
+      name: leak_tracker
+      sha256: "7f0df31977cb2c0b88585095d168e689669a2cc9b97c309665e3386f3e9d341a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "10.0.4"
+  leak_tracker_flutter_testing:
+    dependency: transitive
+    description:
+      name: leak_tracker_flutter_testing
+      sha256: "06e98f569d004c1315b991ded39924b21af84cf14cc94791b8aea337d25b57f8"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.3"
+  leak_tracker_testing:
+    dependency: transitive
+    description:
+      name: leak_tracker_testing
+      sha256: "6ba465d5d76e67ddf503e1161d1f4a6bc42306f9d66ca1e8f079a47290fb06d3"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.1"
+  lints:
+    dependency: transitive
+    description:
+      name: lints
+      sha256: cbf8d4b858bb0134ef3ef87841abdf8d63bfc255c266b7bf6b39daa1085c4290
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.0"
+  logging:
+    dependency: transitive
+    description:
+      name: logging
+      sha256: "623a88c9594aa774443aa3eb2d41807a48486b5613e67599fb4c41c0ad47c340"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.0"
+  matcher:
+    dependency: transitive
+    description:
+      name: matcher
+      sha256: d2323aa2060500f906aa31a895b4030b6da3ebdcc5619d14ce1aada65cd161cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.12.16+1"
+  material_color_utilities:
+    dependency: transitive
+    description:
+      name: material_color_utilities
+      sha256: "0e0a020085b65b6083975e499759762399b4475f766c21668c4ecca34ea74e5a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.8.0"
+  maybe_just_nothing:
+    dependency: transitive
+    description:
+      name: maybe_just_nothing
+      sha256: "0c06326e26d08f6ed43247404376366dc4d756cef23a4f1db765f546224c35e0"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.5.3"
+  meta:
+    dependency: transitive
+    description:
+      name: meta
+      sha256: "7687075e408b093f36e6bbf6c91878cc0d4cd10f409506f7bc996f68220b9136"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.12.0"
+  mime:
+    dependency: transitive
+    description:
+      name: mime
+      sha256: "801fd0b26f14a4a58ccb09d5892c3fbdeff209594300a542492cf13fba9d247a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.0.6"
+  nanoid:
+    dependency: transitive
+    description:
+      name: nanoid
+      sha256: be3f8752d9046c825df2f3914195151eb876f3ad64b9d833dd0b799b77b8759e
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.0.0"
+  os_detect:
+    dependency: transitive
+    description:
+      name: os_detect
+      sha256: faf3bcf39515e64da8ff76b2f2805b20a6ff47ae515393e535f8579ff91d6b7f
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.1"
+  path:
+    dependency: transitive
+    description:
+      name: path
+      sha256: "087ce49c3f0dc39180befefc60fdb4acd8f8620e5682fe2476afd0b3688bb4af"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.9.0"
+  petitparser:
+    dependency: transitive
+    description:
+      name: petitparser
+      sha256: c15605cd28af66339f8eb6fbe0e541bfe2d1b72d5825efc6598f3e0a31b9ad27
+      url: "https://pub.dev"
+    source: hosted
+    version: "6.0.2"
+  plugin_platform_interface:
+    dependency: "direct main"
+    description:
+      name: plugin_platform_interface
+      sha256: "4820fbfdb9478b1ebae27888254d445073732dae3d6ea81f0b7e06d5dedc3f02"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.8"
+  rfc_6901:
+    dependency: transitive
+    description:
+      name: rfc_6901
+      sha256: df1bbfa3d023009598f19636d6114c6ac1e0b7bb7bf6a260f0e6e6ce91416820
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.2.0"
+  sky_engine:
+    dependency: transitive
+    description: flutter
+    source: sdk
+    version: "0.0.99"
+  source_span:
+    dependency: transitive
+    description:
+      name: source_span
+      sha256: "53e943d4206a5e30df338fd4c6e7a077e02254531b138a15aec3bd143c1a8b3c"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.10.0"
+  sprintf:
+    dependency: transitive
+    description:
+      name: sprintf
+      sha256: "1fc9ffe69d4df602376b52949af107d8f5703b77cda567c4d7d86a0693120f23"
+      url: "https://pub.dev"
+    source: hosted
+    version: "7.0.0"
+  stack_trace:
+    dependency: transitive
+    description:
+      name: stack_trace
+      sha256: "73713990125a6d93122541237550ee3352a2d84baad52d375a4cad2eb9b7ce0b"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.11.1"
+  stream_channel:
+    dependency: transitive
+    description:
+      name: stream_channel
+      sha256: ba2aa5d8cc609d96bbb2899c28934f9e1af5cddbd60a827822ea467161eb54e7
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.2"
+  stream_transform:
+    dependency: transitive
+    description:
+      name: stream_transform
+      sha256: "14a00e794c7c11aa145a170587321aedce29769c08d7f58b1d141da75e3b1c6f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.0"
+  string_scanner:
+    dependency: transitive
+    description:
+      name: string_scanner
+      sha256: "556692adab6cfa87322a115640c11f13cb77b3f076ddcc5d6ae3c20242bedcde"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.0"
+  term_glyph:
+    dependency: transitive
+    description:
+      name: term_glyph
+      sha256: a29248a84fbb7c79282b40b8c72a1209db169a2e0542bce341da992fe1bc7e84
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.1"
+  test_api:
+    dependency: transitive
+    description:
+      name: test_api
+      sha256: "9955ae474176f7ac8ee4e989dadfb411a58c30415bcfb648fa04b2b8a03afa7f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.7.0"
+  typed_data:
+    dependency: transitive
+    description:
+      name: typed_data
+      sha256: facc8d6582f16042dd49f2463ff1bd6e2c9ef9f3d5da3d9b087e244a7b564b3c
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.2"
+  uuid:
+    dependency: transitive
+    description:
+      name: uuid
+      sha256: a5be9ef6618a7ac1e964353ef476418026db906c4facdedaa299b7a2e71690ff
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.5.1"
+  vector_math:
+    dependency: transitive
+    description:
+      name: vector_math
+      sha256: "80b3257d1492ce4d091729e3a67a60407d227c27241d6927be0130c98e741803"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.4"
+  veriff_flutter:
+    dependency: "direct main"
+    description:
+      name: veriff_flutter
+      sha256: "761b5fa376ced95fba66950d5613cd1a11ab99cbc643907aed8774065c18a7e9"
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.2.0"
+  vm_service:
+    dependency: transitive
+    description:
+      name: vm_service
+      sha256: "3923c89304b715fb1eb6423f017651664a03bf5f4b29983627c4da791f74a4ec"
+      url: "https://pub.dev"
+    source: hosted
+    version: "14.2.1"
+  web:
+    dependency: transitive
+    description:
+      name: web
+      sha256: cd3543bd5798f6ad290ea73d210f423502e71900302dde696f8bff84bf89a1cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.0"
+sdks:
+  dart: ">=3.4.0 <4.0.0"
+  flutter: ">=3.18.0-18.0.pre.54"
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec.yaml b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..12b11655861f7401bbd772d8563407299e1c2690
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec.yaml
@@ -0,0 +1,37 @@
+name: avmp_identity_verification_service_desktop_and_mobile
+description: "Identity Verification Service (Desktop and Mobile)."
+version: 0.0.1
+
+environment:
+  sdk: '>=3.3.0 <4.0.0'
+  flutter: '>=3.3.0'
+
+flutter:
+  plugin:
+    implements: avmp_identity_verification
+    platforms:
+      android:
+        fileName: identity_verification_service_desktop_and_mobile.dart
+        dartPluginClass: IdentityVerificationServiceDesktopAndMobile
+      ios:
+        fileName: identity_verification_service_desktop_and_mobile.dart
+        dartPluginClass: IdentityVerificationServiceDesktopAndMobile
+      macos:
+        fileName: identity_verification_service_desktop_and_mobile.dart
+        dartPluginClass: IdentityVerificationServiceDesktopAndMobile
+      windows:
+        fileName: identity_verification_service_desktop_and_mobile.dart
+        dartPluginClass: IdentityVerificationServiceDesktopAndMobile
+
+dependencies:
+  flutter:
+    sdk: flutter
+  plugin_platform_interface: ^2.0.2
+  veriff_flutter: ^4.2.0
+  avmp_identity_verification_service_interface: ^0.0.1
+  dio: ^5.7.0
+
+dev_dependencies:
+  flutter_test:
+    sdk: flutter
+  flutter_lints: ^3.0.0
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec_overrides.yaml b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec_overrides.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..c6c4dc13c614adbfbead865555848694101d52b5
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_desktop_and_mobile/pubspec_overrides.yaml
@@ -0,0 +1,12 @@
+# melos_managed_dependency_overrides: avmp_api_service,avmp_application,avmp_common,avmp_domain,avmp_identity_verification_service_interface
+dependency_overrides:
+  avmp_api_service:
+    path: ../../api_service
+  avmp_application:
+    path: ../../../application
+  avmp_common:
+    path: ../../../common
+  avmp_domain:
+    path: ../../../domain
+  avmp_identity_verification_service_interface:
+    path: ../identity_verification_service_interface
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_interface/lib/avmp_identity_verification_service_method_channel.dart b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/lib/avmp_identity_verification_service_method_channel.dart
new file mode 100644
index 0000000000000000000000000000000000000000..397137ab3d92bd161684383e8620b4d7e52a6854
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/lib/avmp_identity_verification_service_method_channel.dart
@@ -0,0 +1,17 @@
+import 'package:flutter/foundation.dart';
+import 'package:flutter/services.dart';
+
+import 'avmp_identity_verification_service_platform_interface.dart';
+
+/// An implementation of [IdentityVerificationServicePlatform] that uses method channels.
+class MethodChannelIdentityVerificationService
+    extends IdentityVerificationServicePlatform {
+  /// The method channel used to interact with the native platform.
+  @visibleForTesting
+  final methodChannel = const MethodChannel('avmp_identity_verification');
+
+  @override
+  Future<void> verify() {
+    return methodChannel.invokeMethod<void>('verify');
+  }
+}
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_interface/lib/avmp_identity_verification_service_platform_interface.dart b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/lib/avmp_identity_verification_service_platform_interface.dart
new file mode 100644
index 0000000000000000000000000000000000000000..6edb8ab8366df652721ef36fa9c143d8336afb50
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/lib/avmp_identity_verification_service_platform_interface.dart
@@ -0,0 +1,26 @@
+import 'package:avmp_application/identity_verification/identity_verification_service_interface.dart';
+import 'package:plugin_platform_interface/plugin_platform_interface.dart';
+import 'avmp_identity_verification_service_method_channel.dart';
+
+abstract class IdentityVerificationServicePlatform extends PlatformInterface
+    implements IdentityVerificationServiceInterface {
+  /// Constructs a IdentityVerificationPlatform.
+  IdentityVerificationServicePlatform() : super(token: _token);
+
+  static final Object _token = Object();
+  static IdentityVerificationServicePlatform _instance =
+      MethodChannelIdentityVerificationService();
+
+  /// The default instance of [IdentityVerificationServicePlatform] to use.
+  ///
+  /// Defaults to [MethodChannelIdentityVerificationService].
+  static IdentityVerificationServicePlatform get instance => _instance;
+
+  /// Platform-specific implementations should set this with their own
+  /// platform-specific class that extends [IdentityVerificationServicePlatform] when
+  /// they register themselves.
+  static set instance(IdentityVerificationServicePlatform instance) {
+    PlatformInterface.verifyToken(instance, _token);
+    _instance = instance;
+  }
+}
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec.lock b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec.lock
new file mode 100644
index 0000000000000000000000000000000000000000..2f8ca4a7e939b237b6e22a00dbcaa315c5f7e808
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec.lock
@@ -0,0 +1,494 @@
+# Generated by pub
+# See https://dart.dev/tools/pub/glossary#lockfile
+packages:
+  async:
+    dependency: transitive
+    description:
+      name: async
+      sha256: "947bfcf187f74dbc5e146c9eb9c0f10c9f8b30743e341481c1e2ed3ecc18c20c"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.11.0"
+  avmp_api_service:
+    dependency: "direct overridden"
+    description:
+      path: "../../api_service"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_application:
+    dependency: "direct main"
+    description:
+      path: "../../../application"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_common:
+    dependency: "direct main"
+    description:
+      path: "../../../common"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_domain:
+    dependency: "direct overridden"
+    description:
+      path: "../../../domain"
+      relative: true
+    source: path
+    version: "0.0.1"
+  aws_common:
+    dependency: transitive
+    description:
+      name: aws_common
+      sha256: e803b51edc0657a52929b35417fa40b5658de420aafdd9ba8a7a744830798885
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.6.5"
+  aws_signature_v4:
+    dependency: transitive
+    description:
+      name: aws_signature_v4
+      sha256: be917660ce7142f176026e05cde4d70ec9a6d78fecd033b183f0d842d6b65f36
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.5.2"
+  bloc:
+    dependency: transitive
+    description:
+      name: bloc
+      sha256: "106842ad6569f0b60297619e9e0b1885c2fb9bf84812935490e6c5275777804e"
+      url: "https://pub.dev"
+    source: hosted
+    version: "8.1.4"
+  boolean_selector:
+    dependency: transitive
+    description:
+      name: boolean_selector
+      sha256: "6cfb5af12253eaf2b368f07bacc5a80d1301a071c73360d746b7f2e32d762c66"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.1"
+  built_collection:
+    dependency: transitive
+    description:
+      name: built_collection
+      sha256: "376e3dd27b51ea877c28d525560790aee2e6fbb5f20e2f85d5081027d94e2100"
+      url: "https://pub.dev"
+    source: hosted
+    version: "5.1.1"
+  built_value:
+    dependency: transitive
+    description:
+      name: built_value
+      sha256: c7913a9737ee4007efedaffc968c049fd0f3d0e49109e778edc10de9426005cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "8.9.2"
+  characters:
+    dependency: transitive
+    description:
+      name: characters
+      sha256: "04a925763edad70e8443c99234dc3328f442e811f1d8fd1a72f1c8ad0f69a605"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.0"
+  clock:
+    dependency: transitive
+    description:
+      name: clock
+      sha256: cb6d7f03e1de671e34607e909a7213e31d7752be4fb66a86d29fe1eb14bfb5cf
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.1"
+  collection:
+    dependency: transitive
+    description:
+      name: collection
+      sha256: ee67cb0715911d28db6bf4af1026078bd6f0128b07a5f66fb2ed94ec6783c09a
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.18.0"
+  convert:
+    dependency: transitive
+    description:
+      name: convert
+      sha256: "0f08b14755d163f6e2134cb58222dd25ea2a2ee8a195e53983d57c075324d592"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.1.1"
+  crypto:
+    dependency: transitive
+    description:
+      name: crypto
+      sha256: ec30d999af904f33454ba22ed9a86162b35e52b44ac4807d1d93c288041d7d27
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.5"
+  dio:
+    dependency: transitive
+    description:
+      name: dio
+      sha256: "5598aa796bbf4699afd5c67c0f5f6e2ed542afc956884b9cd58c306966efc260"
+      url: "https://pub.dev"
+    source: hosted
+    version: "5.7.0"
+  dio_web_adapter:
+    dependency: transitive
+    description:
+      name: dio_web_adapter
+      sha256: "33259a9276d6cea88774a0000cfae0d861003497755969c92faa223108620dc8"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.0"
+  equatable:
+    dependency: transitive
+    description:
+      name: equatable
+      sha256: c2b87cb7756efdf69892005af546c56c0b5037f54d2a88269b4f347a505e3ca2
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.5"
+  fake_async:
+    dependency: transitive
+    description:
+      name: fake_async
+      sha256: "511392330127add0b769b75a987850d136345d9227c6b94c96a04cf4a391bf78"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.1"
+  fixnum:
+    dependency: transitive
+    description:
+      name: fixnum
+      sha256: "25517a4deb0c03aa0f32fd12db525856438902d9c16536311e76cdc57b31d7d1"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.0"
+  flutter:
+    dependency: "direct main"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  flutter_lints:
+    dependency: "direct dev"
+    description:
+      name: flutter_lints
+      sha256: "9e8c3858111da373efc5aa341de011d9bd23e2c5c5e0c62bccf32438e192d7b1"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.2"
+  flutter_test:
+    dependency: "direct dev"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  flutter_web_plugins:
+    dependency: transitive
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  go_router:
+    dependency: transitive
+    description:
+      name: go_router
+      sha256: b465e99ce64ba75e61c8c0ce3d87b66d8ac07f0b35d0a7e0263fcfc10f99e836
+      url: "https://pub.dev"
+    source: hosted
+    version: "13.2.5"
+  http2:
+    dependency: transitive
+    description:
+      name: http2
+      sha256: "9ced024a160b77aba8fb8674e38f70875e321d319e6f303ec18e87bd5a4b0c1d"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.3.0"
+  http_parser:
+    dependency: transitive
+    description:
+      name: http_parser
+      sha256: "2aa08ce0341cc9b354a498388e30986515406668dbcc4f7c950c3e715496693b"
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.0.2"
+  iregexp:
+    dependency: transitive
+    description:
+      name: iregexp
+      sha256: "143859dcaeecf6f683102786762d70a47ef8441a0d2287a158172d32d38799cf"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.1.2"
+  js:
+    dependency: transitive
+    description:
+      name: js
+      sha256: f2c445dce49627136094980615a031419f7f3eb393237e4ecd97ac15dea343f3
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.6.7"
+  json_annotation:
+    dependency: transitive
+    description:
+      name: json_annotation
+      sha256: b10a7b2ff83d83c777edba3c6a0f97045ddadd56c944e1a23a3fdf43a1bf4467
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.8.1"
+  json_path:
+    dependency: transitive
+    description:
+      name: json_path
+      sha256: "7a06bbb1cfad390b20fb7a2ca5e67d9ba59633879c6d71142b80fbf61c3b66f6"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.7.4"
+  jwt_decoder:
+    dependency: transitive
+    description:
+      name: jwt_decoder
+      sha256: "54774aebf83f2923b99e6416b4ea915d47af3bde56884eb622de85feabbc559f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.1"
+  leak_tracker:
+    dependency: transitive
+    description:
+      name: leak_tracker
+      sha256: "7f0df31977cb2c0b88585095d168e689669a2cc9b97c309665e3386f3e9d341a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "10.0.4"
+  leak_tracker_flutter_testing:
+    dependency: transitive
+    description:
+      name: leak_tracker_flutter_testing
+      sha256: "06e98f569d004c1315b991ded39924b21af84cf14cc94791b8aea337d25b57f8"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.3"
+  leak_tracker_testing:
+    dependency: transitive
+    description:
+      name: leak_tracker_testing
+      sha256: "6ba465d5d76e67ddf503e1161d1f4a6bc42306f9d66ca1e8f079a47290fb06d3"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.1"
+  lints:
+    dependency: transitive
+    description:
+      name: lints
+      sha256: cbf8d4b858bb0134ef3ef87841abdf8d63bfc255c266b7bf6b39daa1085c4290
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.0"
+  logging:
+    dependency: transitive
+    description:
+      name: logging
+      sha256: "623a88c9594aa774443aa3eb2d41807a48486b5613e67599fb4c41c0ad47c340"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.0"
+  matcher:
+    dependency: transitive
+    description:
+      name: matcher
+      sha256: d2323aa2060500f906aa31a895b4030b6da3ebdcc5619d14ce1aada65cd161cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.12.16+1"
+  material_color_utilities:
+    dependency: transitive
+    description:
+      name: material_color_utilities
+      sha256: "0e0a020085b65b6083975e499759762399b4475f766c21668c4ecca34ea74e5a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.8.0"
+  maybe_just_nothing:
+    dependency: transitive
+    description:
+      name: maybe_just_nothing
+      sha256: "0c06326e26d08f6ed43247404376366dc4d756cef23a4f1db765f546224c35e0"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.5.3"
+  meta:
+    dependency: transitive
+    description:
+      name: meta
+      sha256: "7687075e408b093f36e6bbf6c91878cc0d4cd10f409506f7bc996f68220b9136"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.12.0"
+  mime:
+    dependency: transitive
+    description:
+      name: mime
+      sha256: "801fd0b26f14a4a58ccb09d5892c3fbdeff209594300a542492cf13fba9d247a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.0.6"
+  nanoid:
+    dependency: transitive
+    description:
+      name: nanoid
+      sha256: be3f8752d9046c825df2f3914195151eb876f3ad64b9d833dd0b799b77b8759e
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.0.0"
+  os_detect:
+    dependency: transitive
+    description:
+      name: os_detect
+      sha256: faf3bcf39515e64da8ff76b2f2805b20a6ff47ae515393e535f8579ff91d6b7f
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.1"
+  path:
+    dependency: transitive
+    description:
+      name: path
+      sha256: "087ce49c3f0dc39180befefc60fdb4acd8f8620e5682fe2476afd0b3688bb4af"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.9.0"
+  petitparser:
+    dependency: transitive
+    description:
+      name: petitparser
+      sha256: c15605cd28af66339f8eb6fbe0e541bfe2d1b72d5825efc6598f3e0a31b9ad27
+      url: "https://pub.dev"
+    source: hosted
+    version: "6.0.2"
+  plugin_platform_interface:
+    dependency: "direct main"
+    description:
+      name: plugin_platform_interface
+      sha256: "4820fbfdb9478b1ebae27888254d445073732dae3d6ea81f0b7e06d5dedc3f02"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.8"
+  rfc_6901:
+    dependency: transitive
+    description:
+      name: rfc_6901
+      sha256: df1bbfa3d023009598f19636d6114c6ac1e0b7bb7bf6a260f0e6e6ce91416820
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.2.0"
+  sky_engine:
+    dependency: transitive
+    description: flutter
+    source: sdk
+    version: "0.0.99"
+  source_span:
+    dependency: transitive
+    description:
+      name: source_span
+      sha256: "53e943d4206a5e30df338fd4c6e7a077e02254531b138a15aec3bd143c1a8b3c"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.10.0"
+  sprintf:
+    dependency: transitive
+    description:
+      name: sprintf
+      sha256: "1fc9ffe69d4df602376b52949af107d8f5703b77cda567c4d7d86a0693120f23"
+      url: "https://pub.dev"
+    source: hosted
+    version: "7.0.0"
+  stack_trace:
+    dependency: transitive
+    description:
+      name: stack_trace
+      sha256: "73713990125a6d93122541237550ee3352a2d84baad52d375a4cad2eb9b7ce0b"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.11.1"
+  stream_channel:
+    dependency: transitive
+    description:
+      name: stream_channel
+      sha256: ba2aa5d8cc609d96bbb2899c28934f9e1af5cddbd60a827822ea467161eb54e7
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.2"
+  stream_transform:
+    dependency: transitive
+    description:
+      name: stream_transform
+      sha256: "14a00e794c7c11aa145a170587321aedce29769c08d7f58b1d141da75e3b1c6f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.0"
+  string_scanner:
+    dependency: transitive
+    description:
+      name: string_scanner
+      sha256: "556692adab6cfa87322a115640c11f13cb77b3f076ddcc5d6ae3c20242bedcde"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.0"
+  term_glyph:
+    dependency: transitive
+    description:
+      name: term_glyph
+      sha256: a29248a84fbb7c79282b40b8c72a1209db169a2e0542bce341da992fe1bc7e84
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.1"
+  test_api:
+    dependency: transitive
+    description:
+      name: test_api
+      sha256: "9955ae474176f7ac8ee4e989dadfb411a58c30415bcfb648fa04b2b8a03afa7f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.7.0"
+  typed_data:
+    dependency: transitive
+    description:
+      name: typed_data
+      sha256: facc8d6582f16042dd49f2463ff1bd6e2c9ef9f3d5da3d9b087e244a7b564b3c
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.2"
+  uuid:
+    dependency: transitive
+    description:
+      name: uuid
+      sha256: a5be9ef6618a7ac1e964353ef476418026db906c4facdedaa299b7a2e71690ff
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.5.1"
+  vector_math:
+    dependency: transitive
+    description:
+      name: vector_math
+      sha256: "80b3257d1492ce4d091729e3a67a60407d227c27241d6927be0130c98e741803"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.4"
+  vm_service:
+    dependency: transitive
+    description:
+      name: vm_service
+      sha256: "3923c89304b715fb1eb6423f017651664a03bf5f4b29983627c4da791f74a4ec"
+      url: "https://pub.dev"
+    source: hosted
+    version: "14.2.1"
+  web:
+    dependency: transitive
+    description:
+      name: web
+      sha256: cd3543bd5798f6ad290ea73d210f423502e71900302dde696f8bff84bf89a1cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.0"
+sdks:
+  dart: ">=3.4.0 <4.0.0"
+  flutter: ">=3.18.0-18.0.pre.54"
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec.yaml b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..c3d95b3b8fe18f423d1458ba52b6142302f821e8
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec.yaml
@@ -0,0 +1,19 @@
+name: avmp_identity_verification_service_interface
+description: "Identity Verification Service (Interface)."
+version: 0.0.1
+
+environment:
+  sdk: '>=3.3.0 <4.0.0'
+  flutter: '>=3.3.0'
+
+dependencies:
+  flutter:
+    sdk: flutter
+  plugin_platform_interface: ^2.0.2
+  avmp_common: ^0.0.1
+  avmp_application: ^0.0.1
+
+dev_dependencies:
+  flutter_test:
+    sdk: flutter
+  flutter_lints: ^3.0.0
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec_overrides.yaml b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec_overrides.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..0ae810b0d6902a00280ad16b9a2664f4269cfa6f
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_interface/pubspec_overrides.yaml
@@ -0,0 +1,10 @@
+# melos_managed_dependency_overrides: avmp_api_service,avmp_application,avmp_common,avmp_domain
+dependency_overrides:
+  avmp_api_service:
+    path: ../../api_service
+  avmp_application:
+    path: ../../../application
+  avmp_common:
+    path: ../../../common
+  avmp_domain:
+    path: ../../../domain
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/identity_verification_service_web.dart b/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/identity_verification_service_web.dart
new file mode 100644
index 0000000000000000000000000000000000000000..ba859166564b068f9a62efa3b2e1920c8a97d795
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/identity_verification_service_web.dart
@@ -0,0 +1 @@
+export 'src/identity_verification_service_web.dart';
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/identity_verification_service_web.dart b/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/identity_verification_service_web.dart
new file mode 100644
index 0000000000000000000000000000000000000000..ed55b94d92dba64bbea469e347b2bb96f0fc3513
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/identity_verification_service_web.dart
@@ -0,0 +1,21 @@
+import 'dart:async';
+import 'dart:html';
+import 'dart:convert';
+import 'dart:js_util';
+import 'package:avmp_identity_verification_service_interface/avmp_identity_verification_service_platform_interface.dart';
+import 'package:flutter_web_plugins/flutter_web_plugins.dart';
+import 'web_bundle.dart';
+
+class IdentityVerificationServiceWeb
+    extends IdentityVerificationServicePlatform {
+  static void registerWith(Registrar registrar) {
+    IdentityVerificationServicePlatform.instance =
+        IdentityVerificationServiceWeb();
+  }
+
+  @override
+  Future<void> verify() {
+    // TODO: implement verify
+    throw UnimplementedError();
+  }
+}
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/promise.dart b/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/promise.dart
new file mode 100644
index 0000000000000000000000000000000000000000..9b270812a62451d6c726a71d38ecf8f1948091e7
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/promise.dart
@@ -0,0 +1 @@
+class Promise<T> {}
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/web_bundle.dart b/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/web_bundle.dart
new file mode 100644
index 0000000000000000000000000000000000000000..33ac537e09483020fa29e7e6ee07bc7043a80cdc
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_web/lib/src/web_bundle.dart
@@ -0,0 +1,17 @@
+@JS()
+library web_bundle;
+
+import 'package:js/js.dart';
+import 'promise.dart';
+
+@JS('JSON.stringify')
+external String jsStringify(Object obj);
+
+@JS('JSON.parse')
+external Object jsParse(String str);
+
+@JS('waitForServiceWorker')
+external Promise<bool> waitForServiceWorker();
+
+@JS('postServiceWorker')
+external Promise<String?> postServiceWorker(Object input);
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec.lock b/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec.lock
new file mode 100644
index 0000000000000000000000000000000000000000..5db991a175fda14a859dffbac1f3692442b72a8e
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec.lock
@@ -0,0 +1,501 @@
+# Generated by pub
+# See https://dart.dev/tools/pub/glossary#lockfile
+packages:
+  async:
+    dependency: transitive
+    description:
+      name: async
+      sha256: "947bfcf187f74dbc5e146c9eb9c0f10c9f8b30743e341481c1e2ed3ecc18c20c"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.11.0"
+  avmp_api_service:
+    dependency: "direct overridden"
+    description:
+      path: "../../api_service"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_application:
+    dependency: "direct main"
+    description:
+      path: "../../../application"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_common:
+    dependency: "direct overridden"
+    description:
+      path: "../../../common"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_domain:
+    dependency: "direct overridden"
+    description:
+      path: "../../../domain"
+      relative: true
+    source: path
+    version: "0.0.1"
+  avmp_identity_verification_service_interface:
+    dependency: "direct main"
+    description:
+      path: "../identity_verification_service_interface"
+      relative: true
+    source: path
+    version: "0.0.1"
+  aws_common:
+    dependency: transitive
+    description:
+      name: aws_common
+      sha256: e803b51edc0657a52929b35417fa40b5658de420aafdd9ba8a7a744830798885
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.6.5"
+  aws_signature_v4:
+    dependency: transitive
+    description:
+      name: aws_signature_v4
+      sha256: be917660ce7142f176026e05cde4d70ec9a6d78fecd033b183f0d842d6b65f36
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.5.2"
+  bloc:
+    dependency: transitive
+    description:
+      name: bloc
+      sha256: "106842ad6569f0b60297619e9e0b1885c2fb9bf84812935490e6c5275777804e"
+      url: "https://pub.dev"
+    source: hosted
+    version: "8.1.4"
+  boolean_selector:
+    dependency: transitive
+    description:
+      name: boolean_selector
+      sha256: "6cfb5af12253eaf2b368f07bacc5a80d1301a071c73360d746b7f2e32d762c66"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.1"
+  built_collection:
+    dependency: transitive
+    description:
+      name: built_collection
+      sha256: "376e3dd27b51ea877c28d525560790aee2e6fbb5f20e2f85d5081027d94e2100"
+      url: "https://pub.dev"
+    source: hosted
+    version: "5.1.1"
+  built_value:
+    dependency: transitive
+    description:
+      name: built_value
+      sha256: c7913a9737ee4007efedaffc968c049fd0f3d0e49109e778edc10de9426005cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "8.9.2"
+  characters:
+    dependency: transitive
+    description:
+      name: characters
+      sha256: "04a925763edad70e8443c99234dc3328f442e811f1d8fd1a72f1c8ad0f69a605"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.0"
+  clock:
+    dependency: transitive
+    description:
+      name: clock
+      sha256: cb6d7f03e1de671e34607e909a7213e31d7752be4fb66a86d29fe1eb14bfb5cf
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.1"
+  collection:
+    dependency: transitive
+    description:
+      name: collection
+      sha256: ee67cb0715911d28db6bf4af1026078bd6f0128b07a5f66fb2ed94ec6783c09a
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.18.0"
+  convert:
+    dependency: transitive
+    description:
+      name: convert
+      sha256: "0f08b14755d163f6e2134cb58222dd25ea2a2ee8a195e53983d57c075324d592"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.1.1"
+  crypto:
+    dependency: transitive
+    description:
+      name: crypto
+      sha256: ec30d999af904f33454ba22ed9a86162b35e52b44ac4807d1d93c288041d7d27
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.5"
+  dio:
+    dependency: transitive
+    description:
+      name: dio
+      sha256: "5598aa796bbf4699afd5c67c0f5f6e2ed542afc956884b9cd58c306966efc260"
+      url: "https://pub.dev"
+    source: hosted
+    version: "5.7.0"
+  dio_web_adapter:
+    dependency: transitive
+    description:
+      name: dio_web_adapter
+      sha256: "33259a9276d6cea88774a0000cfae0d861003497755969c92faa223108620dc8"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.0"
+  equatable:
+    dependency: transitive
+    description:
+      name: equatable
+      sha256: c2b87cb7756efdf69892005af546c56c0b5037f54d2a88269b4f347a505e3ca2
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.5"
+  fake_async:
+    dependency: transitive
+    description:
+      name: fake_async
+      sha256: "511392330127add0b769b75a987850d136345d9227c6b94c96a04cf4a391bf78"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.1"
+  fixnum:
+    dependency: transitive
+    description:
+      name: fixnum
+      sha256: "25517a4deb0c03aa0f32fd12db525856438902d9c16536311e76cdc57b31d7d1"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.0"
+  flutter:
+    dependency: "direct main"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  flutter_lints:
+    dependency: "direct dev"
+    description:
+      name: flutter_lints
+      sha256: "9e8c3858111da373efc5aa341de011d9bd23e2c5c5e0c62bccf32438e192d7b1"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.2"
+  flutter_test:
+    dependency: "direct dev"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  flutter_web_plugins:
+    dependency: "direct main"
+    description: flutter
+    source: sdk
+    version: "0.0.0"
+  go_router:
+    dependency: transitive
+    description:
+      name: go_router
+      sha256: b465e99ce64ba75e61c8c0ce3d87b66d8ac07f0b35d0a7e0263fcfc10f99e836
+      url: "https://pub.dev"
+    source: hosted
+    version: "13.2.5"
+  http2:
+    dependency: transitive
+    description:
+      name: http2
+      sha256: "9ced024a160b77aba8fb8674e38f70875e321d319e6f303ec18e87bd5a4b0c1d"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.3.0"
+  http_parser:
+    dependency: transitive
+    description:
+      name: http_parser
+      sha256: "2aa08ce0341cc9b354a498388e30986515406668dbcc4f7c950c3e715496693b"
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.0.2"
+  iregexp:
+    dependency: transitive
+    description:
+      name: iregexp
+      sha256: "143859dcaeecf6f683102786762d70a47ef8441a0d2287a158172d32d38799cf"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.1.2"
+  js:
+    dependency: transitive
+    description:
+      name: js
+      sha256: f2c445dce49627136094980615a031419f7f3eb393237e4ecd97ac15dea343f3
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.6.7"
+  json_annotation:
+    dependency: transitive
+    description:
+      name: json_annotation
+      sha256: b10a7b2ff83d83c777edba3c6a0f97045ddadd56c944e1a23a3fdf43a1bf4467
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.8.1"
+  json_path:
+    dependency: transitive
+    description:
+      name: json_path
+      sha256: "7a06bbb1cfad390b20fb7a2ca5e67d9ba59633879c6d71142b80fbf61c3b66f6"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.7.4"
+  jwt_decoder:
+    dependency: transitive
+    description:
+      name: jwt_decoder
+      sha256: "54774aebf83f2923b99e6416b4ea915d47af3bde56884eb622de85feabbc559f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.1"
+  leak_tracker:
+    dependency: transitive
+    description:
+      name: leak_tracker
+      sha256: "7f0df31977cb2c0b88585095d168e689669a2cc9b97c309665e3386f3e9d341a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "10.0.4"
+  leak_tracker_flutter_testing:
+    dependency: transitive
+    description:
+      name: leak_tracker_flutter_testing
+      sha256: "06e98f569d004c1315b991ded39924b21af84cf14cc94791b8aea337d25b57f8"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.3"
+  leak_tracker_testing:
+    dependency: transitive
+    description:
+      name: leak_tracker_testing
+      sha256: "6ba465d5d76e67ddf503e1161d1f4a6bc42306f9d66ca1e8f079a47290fb06d3"
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.1"
+  lints:
+    dependency: transitive
+    description:
+      name: lints
+      sha256: cbf8d4b858bb0134ef3ef87841abdf8d63bfc255c266b7bf6b39daa1085c4290
+      url: "https://pub.dev"
+    source: hosted
+    version: "3.0.0"
+  logging:
+    dependency: transitive
+    description:
+      name: logging
+      sha256: "623a88c9594aa774443aa3eb2d41807a48486b5613e67599fb4c41c0ad47c340"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.0"
+  matcher:
+    dependency: transitive
+    description:
+      name: matcher
+      sha256: d2323aa2060500f906aa31a895b4030b6da3ebdcc5619d14ce1aada65cd161cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.12.16+1"
+  material_color_utilities:
+    dependency: transitive
+    description:
+      name: material_color_utilities
+      sha256: "0e0a020085b65b6083975e499759762399b4475f766c21668c4ecca34ea74e5a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.8.0"
+  maybe_just_nothing:
+    dependency: transitive
+    description:
+      name: maybe_just_nothing
+      sha256: "0c06326e26d08f6ed43247404376366dc4d756cef23a4f1db765f546224c35e0"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.5.3"
+  meta:
+    dependency: transitive
+    description:
+      name: meta
+      sha256: "7687075e408b093f36e6bbf6c91878cc0d4cd10f409506f7bc996f68220b9136"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.12.0"
+  mime:
+    dependency: transitive
+    description:
+      name: mime
+      sha256: "801fd0b26f14a4a58ccb09d5892c3fbdeff209594300a542492cf13fba9d247a"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.0.6"
+  nanoid:
+    dependency: transitive
+    description:
+      name: nanoid
+      sha256: be3f8752d9046c825df2f3914195151eb876f3ad64b9d833dd0b799b77b8759e
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.0.0"
+  os_detect:
+    dependency: transitive
+    description:
+      name: os_detect
+      sha256: faf3bcf39515e64da8ff76b2f2805b20a6ff47ae515393e535f8579ff91d6b7f
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.0.1"
+  path:
+    dependency: transitive
+    description:
+      name: path
+      sha256: "087ce49c3f0dc39180befefc60fdb4acd8f8620e5682fe2476afd0b3688bb4af"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.9.0"
+  petitparser:
+    dependency: transitive
+    description:
+      name: petitparser
+      sha256: c15605cd28af66339f8eb6fbe0e541bfe2d1b72d5825efc6598f3e0a31b9ad27
+      url: "https://pub.dev"
+    source: hosted
+    version: "6.0.2"
+  plugin_platform_interface:
+    dependency: "direct main"
+    description:
+      name: plugin_platform_interface
+      sha256: "4820fbfdb9478b1ebae27888254d445073732dae3d6ea81f0b7e06d5dedc3f02"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.8"
+  rfc_6901:
+    dependency: transitive
+    description:
+      name: rfc_6901
+      sha256: df1bbfa3d023009598f19636d6114c6ac1e0b7bb7bf6a260f0e6e6ce91416820
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.2.0"
+  sky_engine:
+    dependency: transitive
+    description: flutter
+    source: sdk
+    version: "0.0.99"
+  source_span:
+    dependency: transitive
+    description:
+      name: source_span
+      sha256: "53e943d4206a5e30df338fd4c6e7a077e02254531b138a15aec3bd143c1a8b3c"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.10.0"
+  sprintf:
+    dependency: transitive
+    description:
+      name: sprintf
+      sha256: "1fc9ffe69d4df602376b52949af107d8f5703b77cda567c4d7d86a0693120f23"
+      url: "https://pub.dev"
+    source: hosted
+    version: "7.0.0"
+  stack_trace:
+    dependency: transitive
+    description:
+      name: stack_trace
+      sha256: "73713990125a6d93122541237550ee3352a2d84baad52d375a4cad2eb9b7ce0b"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.11.1"
+  stream_channel:
+    dependency: transitive
+    description:
+      name: stream_channel
+      sha256: ba2aa5d8cc609d96bbb2899c28934f9e1af5cddbd60a827822ea467161eb54e7
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.2"
+  stream_transform:
+    dependency: transitive
+    description:
+      name: stream_transform
+      sha256: "14a00e794c7c11aa145a170587321aedce29769c08d7f58b1d141da75e3b1c6f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.0"
+  string_scanner:
+    dependency: transitive
+    description:
+      name: string_scanner
+      sha256: "556692adab6cfa87322a115640c11f13cb77b3f076ddcc5d6ae3c20242bedcde"
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.0"
+  term_glyph:
+    dependency: transitive
+    description:
+      name: term_glyph
+      sha256: a29248a84fbb7c79282b40b8c72a1209db169a2e0542bce341da992fe1bc7e84
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.2.1"
+  test_api:
+    dependency: transitive
+    description:
+      name: test_api
+      sha256: "9955ae474176f7ac8ee4e989dadfb411a58c30415bcfb648fa04b2b8a03afa7f"
+      url: "https://pub.dev"
+    source: hosted
+    version: "0.7.0"
+  typed_data:
+    dependency: transitive
+    description:
+      name: typed_data
+      sha256: facc8d6582f16042dd49f2463ff1bd6e2c9ef9f3d5da3d9b087e244a7b564b3c
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.3.2"
+  uuid:
+    dependency: transitive
+    description:
+      name: uuid
+      sha256: a5be9ef6618a7ac1e964353ef476418026db906c4facdedaa299b7a2e71690ff
+      url: "https://pub.dev"
+    source: hosted
+    version: "4.5.1"
+  vector_math:
+    dependency: transitive
+    description:
+      name: vector_math
+      sha256: "80b3257d1492ce4d091729e3a67a60407d227c27241d6927be0130c98e741803"
+      url: "https://pub.dev"
+    source: hosted
+    version: "2.1.4"
+  vm_service:
+    dependency: transitive
+    description:
+      name: vm_service
+      sha256: "3923c89304b715fb1eb6423f017651664a03bf5f4b29983627c4da791f74a4ec"
+      url: "https://pub.dev"
+    source: hosted
+    version: "14.2.1"
+  web:
+    dependency: transitive
+    description:
+      name: web
+      sha256: cd3543bd5798f6ad290ea73d210f423502e71900302dde696f8bff84bf89a1cb
+      url: "https://pub.dev"
+    source: hosted
+    version: "1.1.0"
+sdks:
+  dart: ">=3.4.0 <4.0.0"
+  flutter: ">=3.18.0-18.0.pre.54"
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec.yaml b/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..0bbd23f974e4ed7fe52f1dbf93f691b1225535cd
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec.yaml
@@ -0,0 +1,29 @@
+name: avmp_identity_verification_service_web
+description: "Identity Verification Service (Web)."
+version: 0.0.1
+
+environment:
+  sdk: '>=3.3.0 <4.0.0'
+  flutter: '>=3.3.0'
+
+flutter:
+  plugin:
+    implements: avmp_identity_verification_service
+    platforms:
+      web:
+        fileName: identity_verification_service_web.dart
+        pluginClass: IdentityVerificationServiceWeb
+
+dependencies:
+  flutter:
+    sdk: flutter
+  flutter_web_plugins:
+    sdk: flutter
+  plugin_platform_interface: ^2.0.2
+  avmp_application: ^0.0.1
+  avmp_identity_verification_service_interface: ^0.0.1
+
+dev_dependencies:
+  flutter_test:
+    sdk: flutter
+  flutter_lints: ^3.0.0
diff --git a/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec_overrides.yaml b/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec_overrides.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..c6c4dc13c614adbfbead865555848694101d52b5
--- /dev/null
+++ b/packages/infrastructure/identity_verification_service/identity_verification_service_web/pubspec_overrides.yaml
@@ -0,0 +1,12 @@
+# melos_managed_dependency_overrides: avmp_api_service,avmp_application,avmp_common,avmp_domain,avmp_identity_verification_service_interface
+dependency_overrides:
+  avmp_api_service:
+    path: ../../api_service
+  avmp_application:
+    path: ../../../application
+  avmp_common:
+    path: ../../../common
+  avmp_domain:
+    path: ../../../domain
+  avmp_identity_verification_service_interface:
+    path: ../identity_verification_service_interface