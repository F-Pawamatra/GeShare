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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: null,
        automaticallyImplyLeading: false,
        title: const Text("Dashboard"),
        actions: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              IconButton(
                padding: EdgeInsets.only(top: 2),
                onPressed: null,
                icon: const Icon(
                  Icons.chat_bubble,
                  color: Colors.white,
                ),
              ),
              Container(
                child: Text(
                  "!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  )
                )
              )
            ],
          ),
          CircleAvatar(),
          Padding(padding: EdgeInsets.only(right: 16.0))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DefaultTextStyle(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Hello"),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text("Fery Adcovid"),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}