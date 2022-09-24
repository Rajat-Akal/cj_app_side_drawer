import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_home_page_drawer/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Side Drawer"),
          centerTitle: true,
        ),
        drawer: Navigation_Drawer(),
        body: Text("side Drawer"),
      ),
    );
  }
}

class Navigation_Drawer extends StatelessWidget {
  const Navigation_Drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              icon: Icon(Icons.close),
              onPressed: () {},
              iconSize: 30,
            ),
            buildHeader(context),
            SizedBox(
              height: 5,
            ),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            radius: 35,
            backgroundImage:
                AssetImage("assets/images/profile-pic_side_drawer.png"),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Kamla Devi"),
                SizedBox(width: 5),
                ImageIcon(
                  AssetImage("assets/icons/tick_icon.png"),
                  color: Colors.blue,
                )
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("House Help"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cj Code: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("688578"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mob: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("9875836528"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Email: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("kamla@gmail.com"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/qr_code_drawer_page.png"),
          SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Share QR code"),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.share),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    ),
  );
}

Widget buildMenuItems(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            leading:
                ImageIcon(AssetImage("assets/icons/side_bar_settings.png")),
            title: Text(
              "Account Settings",
              style: TextStyle(
                color: Color(0xff686868),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            leading: ImageIcon(AssetImage("assets/icons/side_bar_chat.png")),
            title: Text(
              "Chat with CJ Mitra",
              style: TextStyle(
                color: Color(0xff686868),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            leading:
                ImageIcon(AssetImage("assets/icons/side_bar_refer_friend.png")),
            title: Text(
              "Refer a Friend",
              style: TextStyle(
                color: Color(0xff686868),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            leading:
                ImageIcon(AssetImage("assets/icons/side_bar_terms_use.png")),
            title: Text(
              "Terms of Use",
              style: TextStyle(
                color: Color(0xff686868),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            leading: ImageIcon(
                AssetImage("assets/icons/sidebar_privacy_policy.png")),
            title: Text(
              "Privacy Policy",
              style: TextStyle(
                color: Color(0xff686868),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          ListTile(
            visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            leading: ImageIcon(AssetImage("assets/icons/side_bar_version.png")),
            title: Text(
              "Version",
              style: TextStyle(
                color: Color(0xff686868),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
