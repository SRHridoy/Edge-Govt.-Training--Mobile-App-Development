
import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,required this.controller, required this.fetchData});
  TextEditingController controller;
  Function fetchData;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      padding: EdgeInsets.only(right: 8, left: 8, top: 40),
      width: size.width,
      height: size.height * .2,
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(70),
        ),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        controller: controller,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white),
          ),
          hintText: "Search your word here",
          hintStyle: TextStyle(
            color: Colors.black38,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              fetchData(controller.text);
            },
            icon: CircleAvatar(
              backgroundColor: Colors.black54,
              child: Icon(
                Icons.search,
                color: secondaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
