import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive/chat/categories_screen.dart';
import 'package:responsive/chat/chat_info.dart';
import 'package:responsive/chat/chat_screen.dart';
import 'package:responsive/chat/conversation.dart';
import 'package:responsive/common/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

mainDevice(double width) {
  if (width <= 576) {
    return "mobile";
  } else if (width <= 768) {
    return "tablet";
  } else if (width <= 2048) {
    return "desktop";
  } else {
    return "large";
  }
}

class _HomeScreenState extends State<HomeScreen> {
  bool infoVisible = false;
  bool categoryVisible = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var deviceType = mainDevice(width);

    Widget buildMainArea() {
      if (deviceType == "mobile") {
        return Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Row(
                children: [
                  Expanded(flex: 2, child: ChatScreen()),
                ],
              ),
            ),
            categoryVisible
                ? Positioned(
                    right: 0,
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      color: Color.fromARGB(85, 0, 0, 0),
                    ),
                  )
                : Positioned(
                    top: 0, left: 0, right: 0, bottom: 0, child: SizedBox()),
            categoryVisible
                ? Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    width: width / 1.5,
                    child: Categories())
                : Positioned(
                    top: 0, left: 0, right: 0, bottom: 0, child: SizedBox()),
          ],
        );
      } else if (deviceType == "tablet") {
        return Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: Row(
              children: [
                Expanded(flex: 5, child: ChatScreen()),
                Expanded(flex: 5, child: Conversation()),
              ],
            ),
          ),
          infoVisible || categoryVisible
              ? Positioned(
                  right: 0,
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    color: Color.fromARGB(122, 0, 0, 0),
                  ),
                )
              : Positioned(
                  top: 0, left: 0, right: 0, bottom: 0, child: SizedBox()),
          categoryVisible
              ? Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  width: width / 2,
                  child: Categories())
              : Positioned(
                  top: 0, left: 0, right: 0, bottom: 0, child: SizedBox()),
          infoVisible
              ? Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  width: width / 2 - 50,
                  child: ChatInfo())
              : Positioned(
                  top: 0, left: 0, right: 0, bottom: 0, child: SizedBox()),
        ]);
      } else if (deviceType == "desktop") {
        return Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              children: [
                Expanded(flex: 3, child: Categories()),
                Expanded(flex: 5, child: ChatScreen()),
                Expanded(flex: 5, child: Conversation()),
              ],
            ),
          ),
          infoVisible
              ? Positioned(
                  right: 0,
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    color: Color.fromARGB(122, 0, 0, 0),
                  ),
                )
              : Positioned(
                  top: 0, left: 0, right: 0, bottom: 0, child: SizedBox()),
          infoVisible
              ? Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  width: width / 2 - 50,
                  child: ChatInfo())
              : Positioned(
                  top: 0, left: 0, right: 0, bottom: 0, child: SizedBox()),
        ]);
      } else {
        return SizedBox();
      }
    }

    return Scaffold(
      body: Column(children: [
        AppBar1(
          onCategoryClick: () {
            if (categoryVisible) {
              setState(() {
                categoryVisible = false;
                infoVisible = false;
              });
            } else {
              setState(() {
                categoryVisible = true;
                infoVisible = false;
              });
            }
          },
          onInfoClick: () {
            if (infoVisible) {
              setState(() {
                categoryVisible = false;
                infoVisible = false;
              });
            } else {
              setState(() {
                categoryVisible = false;
                infoVisible = true;
              });
            }
          },
        ),
        Expanded(
          child: buildMainArea(),
        ),
      ]),
    );
  }
}
