// TODO: remove AffinidiAclManagementExtension and AffinidiAuthenticatorExtension from Didcomm package
export 'package:didcomm/didcomm.dart'
    hide
        AffinidiAclManagementExtension,
        AffinidiAuthenticatorExtension,
        AccessListAddMessage,
        AclManagementMessage;
export 'package:mediator_client/src/extensions/acl_management_extension.dart';
export 'package:mediator_client/src/extensions/authenticator_extension.dart';
