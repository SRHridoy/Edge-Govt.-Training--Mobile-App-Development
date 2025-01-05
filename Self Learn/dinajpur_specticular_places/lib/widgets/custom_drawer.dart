import 'package:dinajpur_spectacular_places/utils/colors/custom_app_colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Drawer(
      backgroundColor: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            width: size.width,
            decoration: BoxDecoration(
              color:primaryColor,
            ),
            child: Column(
             
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: secondaryColor,
                    backgroundImage: AssetImage('assets/images/profile.png',), // Add your avatar image in assets
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "দিনাজপুর",
                  style: TextStyle(
                    color: mainHeadingColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "dinajpur@example.com",
                  style: TextStyle(
                    color: secondaryHeadingColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          // List of Drawer Items
          ListTile(
            leading: Icon(Icons.home, color: mainHeadingColor),
            title: Text(
              "Home",
              style: TextStyle(color: secondaryHeadingColor),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Colors.red),
            title: Text(
              "Favorites",
              style: TextStyle(color: secondaryHeadingColor),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/favorites');
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.green),
            title: Text(
              "Locations",
              style: TextStyle(color: secondaryHeadingColor),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/locations');
            },
          ),
          Divider(
            color: mainHeadingColor.withOpacity(0.5),
            thickness: 1,
          ),
          ListTile(
            leading: Icon(Icons.settings, color: mainHeadingColor),
            title: Text(
              "Settings",
              style: TextStyle(color: secondaryHeadingColor),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/settings');
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: mainHeadingColor),
            title: Text(
              "About",
              style: TextStyle(color: secondaryHeadingColor),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/about');
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              ),
              onPressed: () {
                // Handle logout
              },
              icon: Icon(Icons.logout, color: Colors.white),
              label: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
