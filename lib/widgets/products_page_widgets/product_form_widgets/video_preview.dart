import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:oven_admin/widgets/custom_widgets/custom_edit_input_with_title.dart';
import 'package:oven_admin/widgets/custom_widgets/form_submit_button.dart';
import 'package:video_player/video_player.dart';

class WebVideoPickerPreview extends StatefulWidget {
  const WebVideoPickerPreview({super.key});

  @override
  State<WebVideoPickerPreview> createState() => _WebVideoPickerPreviewState();
}
class _WebVideoPickerPreviewState extends State<WebVideoPickerPreview> {
  VideoPlayerController? _controller;
  String? _videoUrl;
  bool _loading = false;

  void pickVideo() {
    final uploadInput = html.FileUploadInputElement()..accept = 'video/*';
    uploadInput.click();
    uploadInput.onChange.listen((event) async {
      final files = uploadInput.files;
      if (files == null || files.isEmpty) return;
      final file = files[0];
      setState(() {
        _loading = true;
      });
      final url = html.Url.createObjectUrl(file);
      _controller?.dispose();

      _controller = VideoPlayerController.networkUrl(Uri.parse(url));
      await _controller!.initialize();
      _controller!.play();

      setState(() {
        _videoUrl = url;
        _loading = false;
      });
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    if (_videoUrl != null) html.Url.revokeObjectUrl(_videoUrl!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Decide which widget to show in the preview area
    Widget previewWidget;
    if (_loading) {
      previewWidget = const SizedBox(
        height: 200,
        child: Center(child: CircularProgressIndicator()),
      );
    } else if (_controller != null && _controller!.value.isInitialized) {
      previewWidget = AspectRatio(
        aspectRatio: _controller!.value.aspectRatio,
        child: VideoPlayer(_controller!),
      );
    } else {
      previewWidget = const SizedBox(
        height: 200,
        child: Center(child: Text("No video selected")),
      );
    }
    return CustomEditInputWithTitle(
      name: "Video",
      childWidget: FormSubmitButtom(
        textChild: "Edit Video",
        onPressed: pickVideo,
      ),
      rowPreviewArea: previewWidget,
    );
  }
}
