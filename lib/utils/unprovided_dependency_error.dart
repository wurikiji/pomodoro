class UnprovidedDependencyError extends Error {
  UnprovidedDependencyError(this.dependencyName);

  final String dependencyName;

  @override
  String toString() {
    return '$dependencyName is not provided.';
  }
}
