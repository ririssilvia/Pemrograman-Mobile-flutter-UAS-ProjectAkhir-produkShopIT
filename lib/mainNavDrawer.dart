import 'package:flutter/material.dart';
import 'package:tokoit_uas/homeScreen/homeKategori.dart';
import 'package:tokoit_uas/homeScreen/homeProduct.dart';
import 'package:tokoit_uas/homeScreen/profile.dart';
import 'package:tokoit_uas/services/sign_in.dart';

import 'Auth/intro/welcome.dart';

class MainNavDrawer extends StatelessWidget {
  const MainNavDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName:  Text(
                name,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
        accountEmail: Text(
               email,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
        currentAccountPicture: GestureDetector(
            onTap: () {
              Navigator.push(
                            context,
                            MaterialPageRoute(
                             
                              //builder: (context) => MainDrawer(),
                              builder: (context) => ProfileScreen(),
                            ));
            },
            child:CircleAvatar(
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
                radius: 60,
                backgroundColor: Colors.transparent,
              ),
            ),
      ),
      ListTile(
          leading: Icon(
            Icons.add_chart_rounded,
            color: Colors.indigo[900],
            size: 35,
          ),
          title: Text("Product"),
          onTap: () {
          Navigator.push(
                            context,
                            MaterialPageRoute(
                             
                              builder: (context) => ListViewProduct(),
                            ));
        }
          ),
      Divider(
        color: Colors.grey,
        height: 30,
        thickness: 1,
        indent: 26,
        endIndent: 26,
      ),
      ListTile(
        leading: Icon(
          Icons.category,
          color: Colors.indigo[900],
          size: 35,
        ),
        title: Text("Kategori"),
        onTap: () {
          Navigator.push(
                            context,
                            MaterialPageRoute(
                             
                              builder: (context) => ListViewKategori(),
                            ));
        }
      ),
      Divider(
        color: Colors.grey,
        height: 30,
        thickness: 1,
        indent: 26,
        endIndent: 26,
      ),
      Expanded(
        child: Container(
          height: 200,
        ),
      ),
      Divider(
        color: Colors.grey,
        height: 30,
        thickness: 1,
        indent: 26,
        endIndent: 26,
      ),
      ListTile(
        leading: Icon(
          Icons.exit_to_app,
          color: Colors.indigo[900],
          size: 35,
        ),
        title: Text("Log Out"),
        onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ));
                    },
      ),
      Divider(
        color: Colors.grey,
        height: 30,
        thickness: 1,
        indent: 26,
        endIndent: 26,
      ),
    ]));
  }
}
