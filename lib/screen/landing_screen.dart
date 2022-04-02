import 'package:flutter/material.dart';
import 'package:ui_flutter_design/custom/menu_button.dart';
import 'package:ui_flutter_design/custom/option_button.dart';
import 'package:ui_flutter_design/flat_detis.dart/flat_detis.dart';
import 'package:ui_flutter_design/sample_data.dart';
import 'package:ui_flutter_design/widgets/contans.dart';
import 'package:ui_flutter_design/widgets/widgets_funtion.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    final ThemeData themeData = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  addVirticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MenuBoxBorder(
                          onPressed: () {},
                          child: Center(
                            child: Icon(
                              Icons.menu,
                              color: COLOR_BLACK,
                            ),
                          ),
                          height: 50,
                          width: 50,
                        ),
                        MenuBoxBorder(
                          onPressed: () {},
                          child: Center(
                            child: Icon(Icons.settings),
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  addVirticalSpace(padding),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "City",
                      style: themeData.textTheme.bodyText2,
                    ),
                  ),
                  Padding(
                    padding: sidePadding,
                    child: Text(
                      "San Francisco",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: sidePadding,
                    child: Divider(
                      thickness: 1,
                      height: padding,
                      color: COLOR_GREY,
                    ),
                  ),
                  addVirticalSpace(10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ChoiceOption(text: "\$220,000"),
                        ChoiceOption(text: "For Sale"),
                        ChoiceOption(text: "3-4 Beds"),
                        ChoiceOption(text: ">1000 sqft"),
                      ],
                    ),
                  ),
                  addVirticalSpace(10),
                  Expanded(
                    child: Padding(
                      padding: sidePadding,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: RE_DATA.length,
                          itemBuilder: (context, index) {
                            return RealEstateItem(
                              itemData: RE_DATA[index],
                            );
                          }),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Center(
                  child: OptionButton(
                    onPressed: () {},
                    icon: Icons.map_rounded,
                    text: 'Map View',
                    width: size.width * 0.40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;
  const ChoiceOption({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.withAlpha(25),
        ),
      ),
      margin: EdgeInsets.only(
        left: 25,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 13,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;
  const RealEstateItem({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FlatDetails(),
                        ),
                      );
                    },
                    child: Image.asset(
                      itemData['image'],
                    ),
                  ),
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
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          ),
          addVirticalSpace(15),
          Row(
            children: [
              Text(
                "\$${itemData['amount']}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              addHorizontalSpace(10),
              Text(
                "${itemData['address']}",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          addVirticalSpace(10),
          Text(
            "${itemData['bedrooms']} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
