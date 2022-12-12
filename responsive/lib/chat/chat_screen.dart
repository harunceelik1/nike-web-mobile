// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive/class/model.dart';
import 'package:responsive/widget/screen_list.dart';

class ChatScreen extends StatefulWidget {
  // final Shoes shoes;
  // ChatScreen(this.shoes);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  @override
  late final TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(color: Colors.grey.shade300),
                right: BorderSide(color: Colors.grey.shade300))),
        width: double.infinity,
        child: Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ListModel.items.length,
            itemBuilder: ((context, index) {
              return ScreenList(list: ListModel.items[index]);
            }),
          ),
        ));
  }
}

class chatInfo extends StatelessWidget {
  final String name;
  final String title;
  final String avatar;
  final IconData icon;
  final bool active;
  const chatInfo({
    Key? key,
    required this.name,
    required this.avatar,
    required this.icon,
    this.active = false,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 4,
                        offset: Offset(3, 6))
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 26,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(avatar),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(name,
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 24, 14, 43))),
                ],
              ),
            ],
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey.shade400,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 19,
                child: Icon(
                  icon,
                  size: 18,
                  color: Colors.black87,
                )),
          ),
        ],
      ),
    );
  }
}
