import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';

Future<Uint8List?> pickImage() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.image,
    withData: true,
  );

  if (result == null) return null;

  final file = result.files.single;

  if (file.size > 2 * 1024 * 1024) {
    throw Exception('Image must be under 2MB');
  }
  return file.bytes;
}

Future<List<Uint8List>?> pickMultiImage() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.image,
    withData: true,
    allowMultiple: true,
  );
  if (result == null) return null;
  final files = result.files;
  for (final file in files) {
    if (file.size > 2 * 1024 * 1024) {
      throw Exception('Each image must be under 2MB');
    }
  }
  return files
      .where((file) => file.bytes != null)
      .map((file) => file.bytes!)
      .toList();
}

Future<Uint8List?> pickVideo() async {
  final result = await FilePicker.platform.pickFiles(
    type: FileType.video,
    withData: true, // bytes will be available
  );

  if (result == null) return null;

  final file = result.files.single;

  // Check size limit (4MB in this example)
  if (file.size > 4 * 1024 * 1024) {
    throw Exception('Video must be under 4MB');
  }

  if (file.bytes == null) {
    throw Exception('Failed to read video data');
  }

  return file.bytes!;
}
