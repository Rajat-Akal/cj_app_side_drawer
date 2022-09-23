import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Side Drawer"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 450,
              child: DrawerHeader(
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                            "assets/images/profile-pic_side_drawer.png"),
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
                            Text("house Help"),
                            Text("Cj Code: 688578"),
                            Text("Mob: 123456789"),
                            Text("Email: kamla@gmail.com"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset("assets/images/qr_code_drawer_page.png"),
                      SizedBox(
                        height: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {},
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
                    ],
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
      body: Text("side Drawer"),
    );
  }
}
