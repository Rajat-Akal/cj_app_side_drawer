import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_home_page_drawer/constants/Constants.dart';
import 'package:flutter_home_page_drawer/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedindex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text("screen 1"),
    Text("screen 2"),
    Text("Screen 3"),
    Text("Screen 4"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _selectedindex == 0
            ? AppBar(
                title: Text("Side Drawer"),
                centerTitle: true,
              )
            : null,
        drawer: Navigation_Drawer(),
        body: _widgetOptions.elementAt(_selectedindex),
        bottomNavigationBar: BottomNavigationBar(
          // iconSize: 10.0,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/bottom_nav_home.png")),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage("assets/icons/bottom_nav_employer.png")),
              label: "Employer",
            ),
            BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage("assets/icons/bottom_nav_earnings.png")),
              label: "Earnings",
            ),
            BottomNavigationBarItem(
              icon:
                  ImageIcon(AssetImage("assets/icons/bottom_nav_profile.png")),
              label: "Profile",
            ),
          ],
          currentIndex: _selectedindex,
          // fixedColor: Colors.grey,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
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
              onPressed: () {
                Navigator.pop(context);
              },
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
        side: BorderSide(color: ProjectConstants.darkGreyColor),
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
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: ImageIcon(
                      AssetImage("assets/icons/side_bar_camera.png"),
                      color: ProjectConstants.darkGreyColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kamla Devi",
                  style: TextStyle(
                    fontFamily: ProjectConstants.viewHeadingFontfamily,
                  ),
                ),
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
                Text(
                  "House Help",
                  style: TextStyle(
                    fontFamily: ProjectConstants.viewHeadingFontfamily,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cj Code: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: ProjectConstants.viewHeadingFontfamily,
                      ),
                    ),
                    Text(
                      "688578",
                      style: TextStyle(
                        fontFamily: ProjectConstants.viewHeadingFontfamily,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mob: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: ProjectConstants.viewHeadingFontfamily,
                      ),
                    ),
                    Text(
                      "9875836528",
                      style: TextStyle(
                        fontFamily: ProjectConstants.viewHeadingFontfamily,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Email: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: ProjectConstants.viewHeadingFontfamily,
                      ),
                    ),
                    Text(
                      "kamla@gmail.com",
                      style: TextStyle(
                        fontFamily: ProjectConstants.viewHeadingFontfamily,
                      ),
                    ),
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
                Text(
                  "Share QR code",
                  style: TextStyle(
                    fontFamily: ProjectConstants.viewHeadingFontfamily,
                  ),
                ),
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
        side: BorderSide(color: ProjectConstants.darkGreyColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          menuItems("Account Settings", "assets/icons/side_bar_settings.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          menuItems("Chat with CJ Mitra", "assets/icons/side_bar_chat.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          menuItems("Refer a Friend", "assets/icons/side_bar_refer_friend.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          menuItems("Terms of Use", "assets/icons/side_bar_terms_use.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          menuItems(
              "Privacy Policy", "assets/icons/sidebar_privacy_policy.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
          menuItems("Version", "assets/icons/side_bar_version.png")
        ],
      ),
    ),
  );
}

ListTile menuItems(String title, String image) {
  return ListTile(
    visualDensity: VisualDensity(horizontal: 0, vertical: -2),
    leading: ImageIcon(
      AssetImage(image),
      color: ProjectConstants.darkGreyColor,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: ProjectConstants.darkGreyColor,
        fontFamily: ProjectConstants.viewHeadingFontfamily,
      ),
    ),
  );
}
