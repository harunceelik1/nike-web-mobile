import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MediaAppBar extends StatelessWidget {
  const MediaAppBar({super.key});
  screenWidth(double width) {
    if (width < 576) {
      return "mobile";
    } else if (width < 768) {
      return "tablet";
    } else if (width < 1024) {
      return "desktop";
    }
  }

  Widget appBar(String device) {
    if (device == "mobile") {
      return Text("Mobile");
    } else if (device == "tablet") {
      return Text("Tablet");
    } else if (device == "desktop") {
      return Text("Desktop");
    } else {
      return Text("Large");
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var device = screenWidth(width);

    return Container(
      height: 50,
      color: Colors.red,
      child: appBar(device),
    );
  }
}
