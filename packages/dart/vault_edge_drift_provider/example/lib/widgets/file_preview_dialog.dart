import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class FilePreviewDialog extends StatelessWidget {
  final String fileName;

  final Uint8List content;

  const FilePreviewDialog({
    super.key,
    required this.fileName,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final extension = FileUtils.getFileExtension(fileName);
    final fileSize = FileUtils.formatFileSize(content.length);

    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  _getFileIcon(extension),
                  color: _getFileColor(extension),
                  size: 24,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    fileName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  fileSize,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const Divider(),
            Expanded(
              child: _buildContent(extension, context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(String extension, BuildContext context) {
    switch (extension) {
      case 'png':
      case 'jpg':
      case 'jpeg':
      case 'gif':
      case 'bmp':
      case 'webp':
        return _buildImagePreview();
      case 'txt':
      case 'json':
      case 'xml':
      case 'html':
      case 'css':
      case 'js':
      case 'md':
        return _buildTextPreview();
      default:
        return _buildBinaryPreview();
    }
  }

  Widget _buildImagePreview() {
    return Center(
      child: Image.memory(
        content,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error, size: 48, color: Colors.red),
                SizedBox(height: 16),
                Text('Failed to load image'),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextPreview() {
    try {
      final textContent = String.fromCharCodes(content);
      return SingleChildScrollView(
        child: SelectableText(
          textContent,
          style: const TextStyle(
            fontFamily: 'monospace',
            fontSize: 14,
          ),
        ),
      );
    } catch (e) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error, size: 48, color: Colors.red),
            SizedBox(height: 16),
            Text('Failed to decode text content'),
          ],
        ),
      );
    }
  }

  Widget _buildBinaryPreview() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.insert_drive_file, size: 48, color: Colors.blue),
          SizedBox(height: 16),
          Text('Binary file preview not available'),
          SizedBox(height: 8),
          Text(
            'This file type cannot be previewed in the app.',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  IconData _getFileIcon(String extension) {
    switch (extension) {
      case 'png':
      case 'jpg':
      case 'jpeg':
      case 'gif':
      case 'bmp':
      case 'webp':
        return Icons.image;
      case 'pdf':
        return Icons.picture_as_pdf;
      case 'doc':
      case 'docx':
        return Icons.description;
      case 'xls':
      case 'xlsx':
        return Icons.table_chart;
      case 'zip':
      case 'rar':
      case '7z':
        return Icons.archive;
      case 'txt':
      case 'json':
      case 'xml':
      case 'html':
      case 'css':
      case 'js':
      case 'md':
        return Icons.text_snippet;
      default:
        return Icons.insert_drive_file;
    }
  }

  Color _getFileColor(String extension) {
    switch (extension) {
      case 'png':
      case 'jpg':
      case 'jpeg':
      case 'gif':
      case 'bmp':
      case 'webp':
        return Colors.green;
      case 'pdf':
        return Colors.red;
      case 'doc':
      case 'docx':
        return Colors.blue;
      case 'xls':
      case 'xlsx':
        return Colors.green;
      case 'zip':
      case 'rar':
      case '7z':
        return Colors.orange;
      case 'txt':
      case 'json':
      case 'xml':
      case 'html':
      case 'css':
      case 'js':
      case 'md':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }
}
