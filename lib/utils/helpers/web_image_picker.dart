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
