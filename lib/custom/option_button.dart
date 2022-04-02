import 'package:flutter/material.dart';
import 'package:ui_flutter_design/widgets/contans.dart';
import 'package:ui_flutter_design/widgets/widgets_funtion.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;
  final VoidCallback onPressed;
  const OptionButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
        onPressed: onPressed,
        color: COLOR_DARK_BLUE,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            addHorizontalSpace(15),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
