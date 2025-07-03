/// Utility class for file-related operations including extension validation
/// and file size formatting.
class FileUtils {
  static int _defaultMaxFileSize = 10 * 1024 * 1024;
  static List<String> _defaultAllowedExtensions = [
    'txt',
    'pdf',
    'jpg',
    'jpeg',
    'png',
    'gif',
    'doc',
    'docx',
    'xls',
    'xlsx',
    'json',
    'xml',
    'html',
    'css',
    'js',
    'md',
  ];

  /// Get the current default maximum file size
  static int get defaultMaxFileSize => _defaultMaxFileSize;

  /// Get the current default allowed extensions
  static List<String> get defaultAllowedExtensions =>
      List.unmodifiable(_defaultAllowedExtensions);

  /// Configure the default file settings for the entire app
  static void configureDefaults({
    int? maxFileSize,
    List<String>? allowedExtensions,
  }) {
    if (maxFileSize != null) _defaultMaxFileSize = maxFileSize;
    if (allowedExtensions != null) {
      _defaultAllowedExtensions = List.from(allowedExtensions);
    }
  }

  /// Extracts the file extension from a filename
  static String getFileExtension(String fileName) {
    if (fileName.isEmpty) return '';

    final parts = fileName.split('.');
    if (parts.length < 2) return '';

    return parts.last.toLowerCase();
  }

  /// Validates if a file extension is allowed
  static bool isFileExtensionAllowed(
    String fileName,
    List<String> allowedExtensions,
  ) {
    final extension = getFileExtension(fileName);
    return allowedExtensions.contains(extension);
  }

  /// Validates file size against maximum allowed size
  static bool isFileSizeValid(int fileSize, int maxFileSize) {
    return fileSize <= maxFileSize;
  }

  /// Formats file size in bytes to a string
  static String formatFileSize(int bytes, {int decimals = 1}) {
    if (bytes < 0) return '0 B';

    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    var suffixIndex = 0;
    var size = bytes.toDouble();

    while (size >= 1024 && suffixIndex < suffixes.length - 1) {
      size /= 1024;
      suffixIndex++;
    }

    return '${size.toStringAsFixed(decimals)} ${suffixes[suffixIndex]}';
  }

  /// Formats file size in bytes to a string
  static String formatFileSizeInMB(int bytes, {int decimals = 1}) {
    if (bytes < 0) return '0 MB';

    final sizeInMB = bytes / (1024 * 1024);
    return '${sizeInMB.toStringAsFixed(decimals)} MB';
  }

  /// Creates an error message for file size validation
  static String createFileSizeErrorMessage(int fileSize, int maxFileSize) {
    final actualSize = formatFileSize(fileSize);
    final maxSize = formatFileSize(maxFileSize);
    return 'File size ($actualSize) exceeds maximum limit of $maxSize';
  }

  /// Creates an error message for file extension validation
  static String createFileExtensionErrorMessage(
    String fileName,
    List<String> allowedExtensions,
  ) {
    final extension = getFileExtension(fileName);
    final allowedList = allowedExtensions.join(', ');
    return 'File type "$extension" not allowed. Allowed types: $allowedList';
  }
}
