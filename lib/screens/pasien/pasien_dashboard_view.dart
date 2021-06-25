import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/register_view.dart';
import 'package:google_fonts/google_fonts.dart';

class PasienDashboardPage extends StatefulWidget {
  const PasienDashboardPage({ Key? key }) : super(key: key);

  static const routeName = "/pasien/dashboard";

  @override
  _PasienDashboardPageState createState() => _PasienDashboardPageState();
}

class _PasienDashboardPageState extends State<PasienDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Hai Sayang'),
      ),
    );
  }
}