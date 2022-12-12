import 'package:flutter/material.dart';
import 'package:responsive/class/model.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({super.key, required this.list});
  final Shoes list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  list.title,
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(list.model),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(list.image2),
                    Text(
                      list.price,
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(width: 350, child: Image.asset(list.image)),
                    Container(
                      width: 300,
                      child: Image.asset(list.image3),
                    ),
                  ],
                ),
                Text(list.description),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
