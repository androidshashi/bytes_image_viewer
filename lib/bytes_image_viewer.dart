library bytes_image_viewer;

import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BytesImageViewer extends StatefulWidget {
  const BytesImageViewer(
      {Key? key,
      required this.apiUrl,
      required this.headers,
      required this.loadingWidget,
      this.height,
      this.width,
      this.fit})
      : super(key: key);
  final String apiUrl;
  final Map<String, String> headers;
  final Widget loadingWidget;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  State<BytesImageViewer> createState() => _BytesImageViewerState();
}

class _BytesImageViewerState extends State<BytesImageViewer> {
  Uint8List? imageData;

  @override
  void initState() {
    _callApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return imageData == null
        ? widget.loadingWidget
        : Image.memory(
            imageData!,
            height: widget.height ?? 100,
            width: widget.width ?? 100,
            fit: widget.fit,
          );
  }

  Future<void> _callApi() async {
    var url = Uri.parse(widget.apiUrl);
    var response = await http.get(url, headers: widget.headers);

    if (response.statusCode == 200) {
      setState(() {
        imageData = response.bodyBytes;
      });
    } else {
      log('Failed response: ${response.statusCode}. ${response.headers.toString()}. ${response.request?.headers.toString()}.');
    }
  }
}
