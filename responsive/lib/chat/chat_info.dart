// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatInfo extends StatelessWidget {
  const ChatInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(color: Colors.grey.shade300),
                    right: BorderSide(color: Colors.grey.shade300))),
            width: double.infinity,
            child: ListView(
              children: [
                profileItem(
                  avatar: 'images/nft3.jpg',
                  name: "Eminem",
                  price: "1000 £",
                ),
                categoryItem(
                    name: "Email",
                    icon: Icon(Icons.email_outlined),
                    price: 'harun.celik@gmail.com')
              ],
            )));
  }
}

class profileItem extends StatelessWidget {
  final String name;
  final String avatar;
  final String price;
  const profileItem({
    Key? key,
    required this.name,
    required this.avatar,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 4,
                        offset: Offset(3, 6))
                  ],
                ),
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage(avatar),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(name),
            ],
          ),
          Text(
            'Last seen recently',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class categoryItem extends StatelessWidget {
  final String name;
  final Icon icon;
  final String price;
  const categoryItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
          Text(
            price,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
