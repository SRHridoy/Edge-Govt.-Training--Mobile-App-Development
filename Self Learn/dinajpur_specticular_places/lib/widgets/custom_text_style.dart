import 'package:dinajpur_spectacular_places/utils/colors/custom_app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  const CustomTextStyle({super.key, required this.text, required this.isTitle});

  final String text;
  final bool isTitle;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: EdgeInsets.all(12),
      width: size.width,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        textAlign: isTitle?TextAlign.center:TextAlign.start,
        style: TextStyle(
            color: isTitle ? Colors.yellowAccent[100] : secondaryHeadingColor,
            fontSize: isTitle ? 25 : 16,
            fontWeight: isTitle ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
