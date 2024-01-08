// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recruitease_app/screens/Achievements.dart';
import 'package:recruitease_app/screens/Authentation.dart';
import 'package:recruitease_app/screens/NotificationScreen.dart';
import 'package:recruitease_app/screens/homepage.dart';
import 'package:recruitease_app/screens/mycourses_page.dart';

import 'CompanyPage.dart';

class Profile extends StatelessWidget {
  final String userEmail;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Profile({Key? key, required this.userEmail}) : super(key: key);
  Future<void> _logout(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Logout'),
              onPressed: () async {
                Navigator.of(context).pop();
                try {
                  await _auth.signOut();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Authentation()),
                  );
                } catch (e) {
                  print(e.toString());
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        // appBar: AppBar(
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     color: Colors.black,
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => HomePage()),
        //       );
        //     },
        //   ),
        //   title: Text(
        //     '',
        //     style: TextStyle(
        //       color: Colors.black,
        //     ),
        //   ),
        //   backgroundColor: Colors.white,
        //   systemOverlayStyle: SystemUiOverlayStyle.dark,
        // ),
        backgroundColor: Color.fromARGB(255, 254, 255, 255),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('lib/assets/images/profile.png'),
              ),
              Text(
                'Dhaval Trivedi',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Color.fromARGB(255, 0, 176, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                userEmail, // Display the user's email
                style: TextStyle(
                  fontFamily: 'Source Sans 3',
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 0, 176, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                color: Color.fromARGB(255, 0, 176, 255),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    color: const Color.fromARGB(255, 241, 236, 236),
                  ),
                  title: Text(
                    'My Courses',
                    style: TextStyle(
                      fontFamily: 'Source Sans 3',
                      fontSize: 20.0,
                      color: const Color.fromARGB(255, 245, 243, 243),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CompanyPage()),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(255, 0, 176, 255),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.notifications,
                    color: const Color.fromARGB(255, 233, 229, 229),
                  ),
                  title: Text(
                    'Notifications',
                    style: TextStyle(
                      fontFamily: 'Source Sans 3',
                      fontSize: 20.0,
                      color: const Color.fromARGB(255, 238, 236, 236),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NotificationScreen(),
                    ),
                  ),
                ),
              ),
              Card(
                color: Color.fromARGB(255, 0, 176, 255),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.emoji_events,
                    color: const Color.fromARGB(255, 236, 233, 233),
                  ),
                  title: Text(
                    'Achievements',
                    style: TextStyle(
                      fontFamily: 'Source Sans 3',
                      fontSize: 20.0,
                      color: const Color.fromARGB(255, 243, 240, 240),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Achievement()),
                  ),
                ),
              ),
              SizedBox(height: 8 * 8.0),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 0, 176, 255),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  ),
                  child: Text('Log out'),
                  onPressed: () => _logout(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
