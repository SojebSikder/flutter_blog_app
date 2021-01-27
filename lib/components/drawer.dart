import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Header
          UserAccountsDrawerHeader(
            accountEmail: Text('sojebsikder@gmail.com'),
            accountName: Text("Sojeb Sikder"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          // Body
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Home"),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("My Account"),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Favorites"),
              leading: Icon(
                Icons.favorite,
                color: Colors.blue,
              ),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("About us"),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Logout"),
              leading: Icon(
                Icons.logout,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
