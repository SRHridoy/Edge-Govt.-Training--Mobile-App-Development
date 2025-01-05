import 'package:dinajpur_spectacular_places/utils/descriptions/place_descriptions.dart';
import 'package:dinajpur_spectacular_places/widgets/custom_text_style.dart';
import 'package:dinajpur_spectacular_places/widgets/image_slider.dart';
import 'package:flutter/material.dart';

import '../utils/colors/custom_app_colors.dart';

class PlaceDetailsPage extends StatelessWidget {
  final String placeName;
  final List<String> imageUrlsOfSelectedPlace;

  const PlaceDetailsPage({
    super.key,
    required this.placeName,
    required this.imageUrlsOfSelectedPlace,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    final place = places.firstWhere(
      (place) => place.name == placeName,
    );

    

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        actions: [
          CircleAvatar(
            backgroundColor: secondaryColor,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        iconTheme: IconThemeData(color: secondaryHeadingColor),
        title: Text(
          placeName,
          style: TextStyle(color: mainHeadingColor),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 20,
            ),
            ImageSlider(imageUrls: place.imageUrlsOfSelectedPlace!),
            SizedBox(
              height: 30,
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.location_on_outlined,
                  color: Colors.red,
                  size: 30,
                ),
                title: Text(
                  'লোকেশন',
                  style: TextStyle(color: secondaryHeadingColor),
                ),
                trailing: Icon(
                  Icons.arrow_circle_right_sharp,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextStyle(text: place.name, isTitle: true),
            SizedBox(
              height: 20,
            ),
            CustomTextStyle(text: place.firstDescription!, isTitle: false),
            SizedBox(
              height: 20,
            ),
            CustomTextStyle(text: 'অবস্থান', isTitle: true),
            SizedBox(
              height: 10,
            ),
            CustomTextStyle(text: place.position!, isTitle: false),
            SizedBox(
              height: 20,
            ),
            CustomTextStyle(text: 'ইতিহাস', isTitle: true),
            SizedBox(
              height: 10,
            ),
            CustomTextStyle(text: place.history!, isTitle: false),
            SizedBox(
              height: 20,
            ),
            CustomTextStyle(text: 'স্থাপত্য', isTitle: true),
            SizedBox(
              height: 10,
            ),
            CustomTextStyle(text: place.architecture!, isTitle: false),
          ]),
        ),
      ),
    );
  }
}
