import 'package:flutter/material.dart';

class CustomLisTileForResults extends StatelessWidget {
  Color cardColor;
  IconData icon;
  Color iconColor;
  String title;
  Color titleColor;
  String dataFromApi;

  CustomLisTileForResults(
      {super.key,
      required this.cardColor,
      required this.icon,
      required this.iconColor,
      required this.title,
      required this.titleColor,
      required this.dataFromApi});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: cardColor,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: iconColor,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          subtitle: Text(
            dataFromApi,
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ),
    );
  }
}
