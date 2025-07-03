/// Configuration for file provider settings
class FileProviderConfiguration {
  /// Creates a new configuration with the specified settings
  const FileProviderConfiguration({
    this.maxFileSize,
    this.allowedExtensions,
  });

  /// Maximum allowed file size in bytes
  final int? maxFileSize;

  /// List of allowed file extensions (without the dot)
  final List<String>? allowedExtensions;

  /// Creates a copy of this configuration with the given fields replaced
  FileProviderConfiguration copyWith({
    int? maxFileSize,
    List<String>? allowedExtensions,
  }) {
    return FileProviderConfiguration(
      maxFileSize: maxFileSize ?? this.maxFileSize,
      allowedExtensions: allowedExtensions ?? this.allowedExtensions,
    );
  }

  /// Creates a configuration with default values from FileUtils
  factory FileProviderConfiguration.defaults() {
    return const FileProviderConfiguration();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FileProviderConfiguration &&
        other.maxFileSize == maxFileSize &&
        other.allowedExtensions == allowedExtensions;
  }

  @override
  int get hashCode => maxFileSize.hashCode ^ allowedExtensions.hashCode;

  @override
  String toString() {
    return 'FileProviderConfiguration(maxFileSize: $maxFileSize, allowedExtensions: $allowedExtensions)';
  }
}
