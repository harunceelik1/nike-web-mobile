import 'package:flutter/material.dart';

class AppBar1 extends StatefulWidget {
  final Function()? onCategoryClick;
  final Function()? onInfoClick;

  const AppBar1({super.key, this.onCategoryClick, this.onInfoClick});

  @override
  State<AppBar1> createState() => _AppBar1State();
}

class _AppBar1State extends State<AppBar1> {
  checkDevice(double width) {
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

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var deviceType = checkDevice(width);
    if (deviceType == "mobile") {
      return Container(
          color: Colors.grey.shade200,
          height: 60,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    child: Image.asset("images/logo.png")),
                Container(
                  width: width * 0.5,
                  child: TextField(
                    style: TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(2),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        fillColor: Colors.grey.shade400,
                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Icon(
                              Icons.search_outlined,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                ),
                Icon(Icons.person),
              ],
            ),
          ));
    } else if (deviceType == "tablet") {
      return Container(
          height: 50,
          width: double.infinity,
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: widget.onCategoryClick,
                    child: Icon(Icons.category_outlined)),
                Text("Conversations"),
                InkWell(
                    onTap: widget.onInfoClick, child: Icon(Icons.info_rounded)),
              ],
            ),
          ));
    } else if (deviceType == "desktop") {
      return Container(
          height: 50,
          width: double.infinity,
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Conversations"),
                InkWell(
                    onTap: widget.onInfoClick, child: Icon(Icons.info_rounded)),
              ],
            ),
          ));
    } else {
      return Container(
          height: 50,
          width: double.infinity,
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Home"),
                SizedBox(
                  width: 15,
                ),
                Text("Conversations"),
                SizedBox(
                  width: 15,
                ),
                Text("Profile"),
                SizedBox(
                  width: 15,
                ),
                Text("Support"),
              ],
            ),
          ));
    }
  }
}
