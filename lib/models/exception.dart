class ErrorException implements Exception {
  final String message;

  ErrorException(this.message);

  @override
  String toString() {
    // TODO: implement toString
    return message;
  }
}
