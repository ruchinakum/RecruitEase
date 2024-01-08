import 'package:flutter/material.dart';
import 'package:recruitease_app/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:recruitease_app/services/auth_service.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        padding: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.25),
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Sign up to Continue',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => AuthService().signInWithGoogle(context),
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assets/images/google.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 20.0),
                  // GestureDetector(
                  // onTap: () {
                  // Add your sign-up with Apple logic here
                  //},
                  //child: Image.asset(
                  //'lib/assets/images/Apple.png', // Replace with your Apple image path
                  //    height: 50.0,
                  //  width: 50.0,
                  //),
                  //   ),
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                'or',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 300.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.detailsPage);
                    // Add your sign-up with email logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF00B0FF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Sign up with Email',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(RouteManager.login);
                      // Add your sign-in logic here
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
