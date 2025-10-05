// TODO: remove AffinidiAclManagementExtension and AffinidiAuthorization from Didcomm package
export 'package:affinidi_tdk_mediator_client/src/extensions/acl_management_extension.dart';
export 'package:didcomm/didcomm.dart'
    hide
        AccessListAddMessage,
        AclManagementMessage,
        AffinidiAclManagementExtension,
        AffinidiAuthorizationProvider;
export 'package:didcomm/src/providers/authorization_provider/affinidi_authorization_provider.dart';
