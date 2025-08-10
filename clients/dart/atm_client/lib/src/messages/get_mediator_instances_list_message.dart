import 'package:mediator_client/mediator_client.dart';

class GetMediatorInstancesListMessage extends PlainTextMessage {
  GetMediatorInstancesListMessage({
    required super.id,
    required super.from,
    required super.to,
    super.createdTime,
    super.expiresTime,
    super.body = const {},
  }) : super(
          type: Uri.parse(
            'affinidi.io/operations/ama/getMediatorInstancesList',
          ),
        );
}
