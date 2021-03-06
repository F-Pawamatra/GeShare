import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/pasien/pasien_dashboard_view.dart';
import 'package:ge_share/screens/donatur/donatur_dashboard_view.dart';
import 'package:ge_share/screens/register_view.dart';
import 'package:ge_share/screens/umkm/umkm_dashboard_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  static const routeName = "/";
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  // Data Login as Pasien
  final String? emailPasien = 'feryadcovid@email.com';
  final String? passwordPasien = '12345678';

  // Data Login as Donatur
  final String? emailDonatur = 'gesultaninova@email.com';
  final String? passwordDonatur = '12345678';

  // Data Login as UMKM
  final String? emailUMKM = 'akhtarmulyana@email.com';
  final String? passwordUMKM = '12345678';

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (this.email == emailPasien && this.password == passwordPasien) {
        Navigator.pushNamed(context, PasienDashboardPage.routeName);
      }
      else if (this.email == emailDonatur && this.password == passwordDonatur) {
        Navigator.pushNamed(context, DonaturDashboardPage.routeName);
      }
      else if (this.email == emailUMKM && this.password == passwordUMKM) {
        Navigator.pushNamed(context, UMKMDashboardPage.routeName);
      }
      else Navigator.pushNamed(context, "/");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    _titleDescription(),
                    _textField(),
                    _buildButton(context),
                  ],
                ),
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
              contentPadding: EdgeInsets.symmetric(horizontal: 5)),
          style: TextStyle(color: Colors.white),
          autofocus: false,
          validator: (input) {
            if (input == null || input.isEmpty) {
              return 'Please enter email';
            }
            return null;
          },
          onSaved: (String? input) => email = input,
          initialValue: email,
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
              contentPadding: EdgeInsets.symmetric(horizontal: 5)),
          style: TextStyle(color: Colors.white),
          obscureText: true,
          autofocus: false,
          validator: (input) {
            if (input == null || input.isEmpty) {
              return 'Please enter password';
            }
            return null;
          },
          onSaved: (String? input) => password = input,
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
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Sign in',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  ColorPalette.gradientLeft,
                  ColorPalette.gradientRight
                ],
              ),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 2))
              ]),
          ),
          onTap: () {
            _submit(context);
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 70.0),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Dont have an account? ',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 16.0,
            ),
          ),
          TextButton(
            child: Text(
              'Sign Up',
              style: GoogleFonts.poppins(
                decoration: TextDecoration.underline,
                color: ColorPalette.gradientLeft,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, RegisterPage.routeName);
            },
          ),
        ]),
      ],
    );
  }
}
