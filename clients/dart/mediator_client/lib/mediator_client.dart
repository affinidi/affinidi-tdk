// TODO: remove AffinidiAclManagementExtension and AffinidiAuthenticatorExtension from Didcomm package
export 'package:affinidi_tdk_mediator_client/src/extensions/acl_management_extension.dart';
export 'package:affinidi_tdk_mediator_client/src/extensions/authenticator_extension.dart';
export 'package:didcomm/didcomm.dart'
    hide
        AccessListAddMessage,
        AclManagementMessage,
        AffinidiAclManagementExtension,
        AffinidiAuthenticatorExtension;
export 'package:didcomm/src/common/authentication_tokens/authentication_tokens.dart';
