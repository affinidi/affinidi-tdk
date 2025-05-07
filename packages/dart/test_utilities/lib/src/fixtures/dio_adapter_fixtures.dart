import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

/// Provides factory methods for creating DioAdapter instances with custom configuration.
class DioAdapterFixtures {
  /// Creates a DioAdapter instance.
  ///
  /// [httpClient] - The Dio instance to use for HTTP requests.
  /// Returns a configured DioAdapter instance.
  static DioAdapter adapter(Dio httpClient) => DioAdapter(
        dio: httpClient,
        matcher: const _UrlRequestMatcher(),
      );
}

extension _MatchesRequest on RequestOptions {
  bool matchesRequestRoute(Request request) {
    final routeMatched = doesRouteMatch(path, request.route);

    return routeMatched && method == request.method?.name;
  }
}

class _UrlRequestMatcher extends HttpRequestMatcher {
  const _UrlRequestMatcher();

  @override
  bool matches(RequestOptions ongoingRequest, Request matcher) {
    return ongoingRequest.matchesRequestRoute(matcher);
  }
}
