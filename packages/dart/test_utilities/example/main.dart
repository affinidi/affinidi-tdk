import 'package:affinidi_tdk_test_utilities/affinidi_tdk_test_utilities.dart';
import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  final adapter = DioAdapter(dio: dio);

  adapter.mockRequestWithReply(
    url: '/hello',
    statusCode: 200,
    data: {'message': 'Hello, world!'},
  );

  final response = await dio.get<Map<String, dynamic>>('/hello');
  print('Mocked GET /hello: ${response.data}');

  adapter.mockRequestWithException(
    url: '/not-mocked',
    statusCode: 404,
  );

  try {
    await dio.get<Map<String, dynamic>>('/not-mocked');
  } catch (e) {
    print('Caught Dio exception for unmocked request: $e');
  }
}
