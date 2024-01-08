import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        ElevatedButton,
        FontWeight,
        Form,
        FormState,
        GlobalKey,
        InputDecoration,
        MainAxisAlignment,
        MediaQuery,
        Navigator,
        Padding,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextEditingController,
        TextFormField,
        TextStyle,
        Widget;
import 'package:recruitease_app/routes/routes.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * .15,
              // Padding(
              // padding: EdgeInsets.all(16.0),
              //     child: IconButton(
              //     icon: Icon(Icons.arrow_back),
              //   onPressed: () {
              //   Navigator.pop(context);
              // },
              //  ),
              // )
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Enter Password',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Enter Password',
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Password should be at least 8 characters long';
                        } else if (value!.length < 8) {
                          return 'Password should be at least 8 characters long';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                      ),
                      obscureText: true,
                      validator: (value) {
                        final password = _passwordController.text;
                        if (value?.isEmpty ?? true) {
                          return 'Please confirm your password';
                        } else if (value != password) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Password reset logic here
                          Navigator.of(context).pushNamed(RouteManager.login);
                        }
                      },
                      child: Text('Reset Password'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
