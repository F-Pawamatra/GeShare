import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/donatur/donate_done.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({Key? key}) : super(key: key);
  static const routeName = "/donatur/tracking";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.primaryColor,
        appBar: AppBar(
          backgroundColor: ColorPalette.primaryColor,
          elevation: 0,
        ),
        body: Container(
          child: new ListView(
            children: <Widget>[
              Center(
                child: Column(children: [
                  Text(
                    'JB00 112236 KH677',
                    style: GoogleFonts.poppins(
                        fontSize: 26.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                    'Your donation number',
                    style: GoogleFonts.poppins(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                ]),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                child: Row(children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2.2,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              ColorPalette.gradientLeft,
                              ColorPalette.gradientRight
                            ]),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Status Detail',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white)),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    // padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/11),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Tracking Map',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                      ),
                    ),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 40),
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: 90,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(54, 54, 54, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 40,
                      color: Colors.green[700],
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      'Kurir sedang menjemput bantuan',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: 90,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(54, 54, 54, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 40,
                      color: Colors.green[700],
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      'Paket sedang dalam perjalanan',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                height: 90,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(54, 54, 54, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 40,
                      color: Colors.green[700],
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      'Paket telah diterima pasien',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              new Container(
                  height: 60.0,
                  // width: MediaQuery.of(context).size.width/2,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 4),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            ColorPalette.gradientLeft,
                            ColorPalette.gradientRight
                          ]),
                      borderRadius: BorderRadius.circular(50)),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        'Finish',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, DonateDonePage.routeName);
                    },
                  )),
            ],
          ),
        ));
  }
}
