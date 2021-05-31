import 'package:flutter/material.dart';
import 'package:tokoit_uas/mainNavDrawer.dart';
// import 'package:prak10minggu11/UI/login_page.dart';
// import 'package:prak10minggu11/UI/sign_in.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Welcome'),
          //centerTitle: true,
          backgroundColor: Colors.indigo[900], 
                   
        ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.indigo[100], Colors.indigo[400]],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //     //imageUrl,
              //   ),
              //   radius: 60,
              //   backgroundColor: Colors.transparent,
              // ),
              SizedBox(height: 40),
              Text(
                'NAME',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              // Text(
              //  // name,
              //   style: TextStyle(
              //       fontSize: 25,
              //       color: Colors.deepPurple,
              //       fontWeight: FontWeight.bold),
              // ),
              SizedBox(height: 20),
              Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
              // Text(
              //  // email,
              //   style: TextStyle(
              //       fontSize: 25,
              //       color: Colors.deepPurple,
              //       fontWeight: FontWeight.bold),
              // ),
              SizedBox(height: 40),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  // signOutGoogle();
                  // Navigator.of(context).pushAndRemoveUntil(
                  //     MaterialPageRoute(builder: (context) {
                  //   return LoginPage();
                  // }), ModalRoute.withName('/'));
                },
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
              
            ],
          ),
        ),
      ),
        drawer: MainNavDrawer(),
    );
  }
}