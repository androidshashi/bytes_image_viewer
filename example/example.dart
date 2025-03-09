import 'package:bytes_image_viewer/bytes_image_viewer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
          child: BytesImageViewer(
            height: double.infinity,
            //optional
            width: double.infinity,
            //optional
            fit: BoxFit.fill,
            //optional
            apiUrl:
            'https://cdn.pixabay.com/photo/2023/11/26/19/09/butterfly-8414148_1280.jpg',
            headers: {"Authorization": "Bearer yTiIsInN1YiI6IjEiLC"},
            //optional
            loadingWidget: CircularProgressIndicator(
              color: Colors.red,
            ),
            //optional
            errorWidget: CircularProgressIndicator(
              color: Colors.red,
            ), //optional
          )),
      appBar: AppBar(
        title: const Text("Bytes image viewer example"),
      ),
    );
  }
}
