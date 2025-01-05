import 'package:dinajpur_spectacular_places/utils/colors/custom_app_colors.dart';
import 'package:dinajpur_spectacular_places/utils/descriptions/place_descriptions.dart';
import 'package:dinajpur_spectacular_places/widgets/image_slider.dart';
import 'package:flutter/material.dart';

import '../models/place_model.dart';
import '../widgets/custom_drawer.dart';
import 'place_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondaryHeadingColor),
        backgroundColor: primaryColor,
        actions: [
          CircleAvatar(
            backgroundColor: secondaryColor,
            child: Icon(
              Icons.location_on_rounded,
              color: Colors.red,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "দিনাজপুরের দর্শনীয় স্থান",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: mainHeadingColor,
                ),
              ),
              const SizedBox(height: 16),
              ImageSlider(imageUrls: firstImageUrls),
              const SizedBox(height: 24),
              Text(
                "স্থানসমূহ",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: mainHeadingColor,
                ),
              ),
              const SizedBox(height: 16),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: places.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlaceDetailsPage(
                            placeName: places[index].name,
                            imageUrlsOfSelectedPlace:
                                places[index].imageUrlsOfSelectedPlace!,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      color: secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            places[index].imageUrlsOfSelectedPlace![0],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          places[index].name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: secondaryHeadingColor,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
