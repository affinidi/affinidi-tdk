/// Provides holder and issuer client implementations along with the
/// protocol message and model classes used to perform feature discovery
/// and credential issuance.
library;

export 'src/messages/issued_credential/vdip_issued_credential_body.dart';
export 'src/messages/issued_credential/vdip_issued_credential_message.dart';
export 'src/messages/request_issuance/credential_meta.dart';
export 'src/messages/request_issuance/vdip_request_issuance_body.dart';
export 'src/messages/request_issuance/vdip_request_issuance_message.dart';
export 'src/models/request_credentials_options.dart';
export 'src/vdip_holder.dart';
export 'src/vdip_issuer.dart';
