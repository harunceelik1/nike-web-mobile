import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive/class/model.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key, required this.list});
  final Shoes list;

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var _mobileWidth = 576;

    String _size = "Size";
    String _description = "Description";

    int tag = 1;
    List<String> tags = [];
    List<String> numbers = [
      '6',
      '6.5',
      '7',
      '7.5',
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.list.title,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(widget.list.model),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Image.asset(widget.list.image2),
                        Text(
                          widget.list.price,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    flex: 5,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                            width: width <= 764 ? width * 0.8 : 350,
                            child: Image.asset(widget.list.image)),
                        Container(
                          width: width <= 764 ? width * 0.8 : 350,
                          child: Image.asset(widget.list.image3),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _description,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Container(
                            // width: width <= 576 ? width * 0.9 - 50 : 200,
                            width: width * 0.9,
                            child: Text(
                              widget.list.description,
                              maxLines: 5,
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 4,
                      child: Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_size),
                          Wrap(
                            direction: Axis.horizontal,
                            spacing: 10,
                            runSpacing: 20,
                            children: [
                              sizeContainer(number: "6"),
                              sizeContainer(number: "6.5"),
                              sizeContainer(number: "7 "),
                              sizeContainer(number: "7.5"),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Card(
                              color: Color.fromARGB(226, 238, 217, 33),
                              // ignore: sort_child_properties_last, prefer_const_constructors
                              child: SizedBox(
                                width: 150,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "Add to cart",
                                  ),
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class sizeContainer extends StatelessWidget {
  const sizeContainer({
    Key? key,
    required this.number,
  }) : super(key: key);

  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        // color: selectItem == true
        //     ? Color.fromARGB(255, 52, 112, 161)
        //     : color_Theme,
        color: Color.fromARGB(225, 224, 206, 40),
        // ignore: sort_child_properties_last
        child: SizedBox(
          width: 60,
          height: 30,
          child: Center(
            child: Text(
              number,
              // style: selectItem == index
              //     ? TextStyle(
              //         color: Colors.white, fontSize: 15)
              //     : TextStyle(color: Colors.grey.shade700),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
