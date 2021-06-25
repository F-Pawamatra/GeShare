import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/register_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
        ),
        Text(
          "GeShare",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Sign in",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField, 
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: " Email",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
            contentPadding: EdgeInsets.symmetric(horizontal:5)
          ),
          style: TextStyle(color: Colors.white),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField, 
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: " Password",
            hintStyle: TextStyle(color: ColorPalette.hintColor),
            contentPadding: EdgeInsets.symmetric(horizontal:5)
          ),
          style: TextStyle(color: Colors.white),
          obscureText: true,
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0),
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 50.0),
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            width: double.infinity,
            child: Text(
              'Login',
              style: GoogleFonts.poppins(
                color: ColorPalette.primaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w400
              ),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 2)
                )
              ]
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 70.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont have an account? ',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w200,
                fontSize: 16.0,
              ),
            ),
            TextButton(
              child: Text(
                'Sign Up',
                style: GoogleFonts.poppins(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RegisterPage.routeName);
              },
            ),
          ]
        ),
      ],
    );
  }
}