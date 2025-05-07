import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

void main() {
  // Run this example script with the corres ponding log level
  // dart run --define=AFFINIDI_TDK_LOG_LEVEL=ALL example/logger.dart

  final logger = Logger.instance;

  logger.log(LogLevel.warning, "This is a warning");
  logger.warning("This is also a warning");

  try {
    // Intentionally cause an error
    int result = 10 ~/ 0;
    print(result);
  } catch (e, stack) {
    logger.error(
      "Division by zero encountered",
      component: "MyComponent",
      error: e,
      stackTrace: stack,
    );
  }
}
