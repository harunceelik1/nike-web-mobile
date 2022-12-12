// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
                left: BorderSide(color: Colors.grey.shade300),
                right: BorderSide(color: Colors.grey.shade300))),
        width: double.infinity,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            categoryItem(
              icon: Icon(Icons.archive_outlined),
              name: "Archive",
              price: "",
            ),
            categoryItem(
              icon: Icon(Icons.message_outlined),
              name: "Sent Message",
              price: "",
              active: true,
            ),
            categoryItem(
              icon: Icon(Icons.sports_mma_sharp),
              name: "Spam",
              price: "",
            ),
            categoryItem(
              icon: Icon(Icons.archive_outlined),
              name: "Archive",
              price: "",
            ),
          ],
        ));
  }
}

class categoryItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String price;
  final bool active;
  const categoryItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.price,
    this.active = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: active ? Colors.grey.shade200 : Colors.white,
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: icon,
              ),
              SizedBox(
                width: 10,
              ),
              Text(name),
            ],
          ),
          Text(price),
        ],
      ),
    );
  }
}
