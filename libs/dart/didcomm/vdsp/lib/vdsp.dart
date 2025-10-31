/// Provides holder and verifier client implementations along with the
/// protocol message and model classes used to perform feature discovery,
/// express data queries, respond with verifiable presentations, and
/// communicate processing results.
library;

export 'src/clients/vdsp_holder_client.dart';
export 'src/clients/vdsp_verifier_client.dart';

// VDSP messages
export 'src/messages/data_processing_result/vdsp_data_processing_result_message.dart';
export 'src/messages/data_response/vdsp_data_response_message.dart';
export 'src/messages/query_data/vdsp_query_data_message.dart';
// Models / results
export 'src/models/data_query_result.dart';
