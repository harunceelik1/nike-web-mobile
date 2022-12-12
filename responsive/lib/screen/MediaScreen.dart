import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive/common/mediaappbar.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

String checkDevice(double width) {
  if (width <= 576) {
    return "mobile";
  } else if (width <= 768) {
    return "tablet";
  } else if (width <= 1024) {
    return "desktop";
  } else {
    return "large";
  }
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var deviceType = checkDevice(width);
    return Scaffold(
      body: Column(
        children: [
          MediaAppBar(),
          Expanded(
            child: Container(
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
