import 'package:flutter/material.dart';
import 'package:ui_flutter_design/custom/menu_button.dart';
import 'package:ui_flutter_design/custom/option_button.dart';
import 'package:ui_flutter_design/sample_data.dart';
import 'package:ui_flutter_design/widgets/widgets_funtion.dart';

class FlatDetails extends StatelessWidget {
  const FlatDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: ListView.builder(
            itemCount: RE_DATA.length,
            itemBuilder: ((context, index) {
              return Flat(
                itemData: RE_DATA[index],
              );
            }),
          ),
        ),
      ),
    );
  }
}

class Flat extends StatelessWidget {
  final dynamic itemData;

  const Flat({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(itemData['image']),
              Positioned(
                left: 15,
                top: 15,
                child: MenuBoxBorder(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  width: 50,
                  height: 50,
                ),
              ),
              Positioned(
                right: 15,
                top: 15,
                child: MenuBoxBorder(
                  onPressed: () {},
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          addVirticalSpace(15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "\$${itemData['amount']}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  addVirticalSpace(8),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "${itemData['address']}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              MenuBoxBorder(
                onPressed: () {},
                child: Text(
                  "20 Hours",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                height: 40,
                width: 110,
              ),
            ],
          ),
          addVirticalSpace(20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "House Infortion",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          addVirticalSpace(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Column(
                    children: [
                      MenuBoxBorder(
                        onPressed: () {},
                        child: Text(
                          "${itemData['area']}",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        height: 80,
                        width: 80,
                      ),
                      addVirticalSpace(10),
                      Center(
                        child: Text(
                          "Square Foot",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  addHorizontalSpace(20),
                  Column(
                    children: [
                      MenuBoxBorder(
                        onPressed: () {},
                        child: Text(
                          "${itemData['bedrooms']}",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        height: 80,
                        width: 80,
                      ),
                      addVirticalSpace(10),
                      Center(
                        child: Text(
                          "Bedrooms",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  addHorizontalSpace(20),
                  Column(
                    children: [
                      MenuBoxBorder(
                        onPressed: () {},
                        child: Text(
                          "${itemData['bathrooms']}",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        height: 80,
                        width: 80,
                      ),
                      addVirticalSpace(10),
                      Center(
                        child: Text(
                          "Bathrooms",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  addHorizontalSpace(20),
                  Column(
                    children: [
                      MenuBoxBorder(
                        onPressed: () {},
                        child: Text(
                          "${itemData['garage']}",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        height: 80,
                        width: 80,
                      ),
                      addVirticalSpace(10),
                      Center(
                        child: Text(
                          "Garage",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          addVirticalSpace(15),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "${itemData['description']}",
            ),
          ),
        ],
      ),
    );
  }
}
