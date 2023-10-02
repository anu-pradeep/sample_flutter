import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false, // to remove debug in banner
      home: sample(),
    ),
  ));
}

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // to show bar "myapp"
        title: Text("MY APP"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
            child: Text(
          "welcome flutter",
          style: TextStyle(
              fontSize: 50,
              color: Colors.deepOrange[800],
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
  }
}
