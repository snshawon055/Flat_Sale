import 'package:flutter/material.dart';
import 'package:ui_flutter_design/widgets/contans.dart';

class MenuBoxBorder extends StatelessWidget {
  final Widget child;

  final double width, height;
  final VoidCallback onPressed;

  const MenuBoxBorder(
      {Key? key,
      required this.child,
      required this.height,
      required this.width,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: COLOR_GREY.withAlpha(40),
            width: 2,
          ),
        ),
        padding: const EdgeInsets.all(8),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
