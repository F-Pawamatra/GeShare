import 'package:flutter/material.dart';
import 'package:ge_share/screens/login_view.dart';
import 'package:ge_share/screens/register_view.dart';
import 'package:ge_share/screens/pasien/pasien_dashboard_view.dart';
import 'package:ge_share/screens/pasien/pasien_profile_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Register Page",
    initialRoute: "/",
    routes: {
      "/" : (context) => LoginPage(),
      RegisterPage.routeName : (context) => RegisterPage(),
      PasienDashboardPage.routeName : (context) => PasienDashboardPage(),
      PasienProfilePage.routeName : (context) => PasienProfilePage()
    },
  ));
}