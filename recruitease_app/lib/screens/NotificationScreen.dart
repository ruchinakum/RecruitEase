import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  Widget prefixIcon() {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.transparent),
      child: Icon(
        Icons.notifications_rounded,
        size: 20,
        color: Colors.blue,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('Notifications',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          // leading: Icon(
          //   Icons.arrow_back_ios_rounded,
          //   size: 20,
          //   color: Colors.black,
          // ),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: prefixIcon(),
              title: Text('You registered for UI UX course'),
              subtitle: Text('03 minutes ago'),
            ),
            ListTile(
              leading: prefixIcon(),
              title: Text('Your account is verified'),
              subtitle: Text('05 minutes ago'),
            ),
            ListTile(
              leading: prefixIcon(),
              title: Text('You created an account using..'),
              subtitle: Text('08 minutes ago'),
            ),
          ],
        ),
      ),
    );
  }
}
