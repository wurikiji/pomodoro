class CommonError extends Error {
  CommonError(this.owner, [this.message]);
  final String owner;
  final String? message;

  @override
  String toString() {
    return '$owner: $message';
  }
}
