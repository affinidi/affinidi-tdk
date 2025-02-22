class UnsupportedSeedException implements Exception {
  final String message;

  UnsupportedSeedException([
    this.message = "Unsupported seed length",
  ]);

  @override
  String toString() => "UnsupportedSeedException: $message";
}
