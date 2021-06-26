import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ge_share/screens/donatur/choose_store.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class PatientFoundPage extends StatelessWidget {
  const PatientFoundPage({Key? key}) : super(key: key);
  static const routeName = "/donatur/patient_found";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  ColorPalette.primaryColor,
      body: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: ColorPalette.primaryColor,
            child: Center(
              child: Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.5),
                child: SwipingButton(
                  swipeButtonColor: (
                    ColorPalette.gradientLeft
                  ),
                  text: "SWIPE TO DONATE", 
                  onSwipeCallback:(){
                    Navigator.pushNamed(context, ChooseStorePage.routeName);
                  }
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height/2,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  ColorPalette.gradientLeft,
                  ColorPalette.gradientRight
                ]
              )
            ),
            child: Center(
              child: Column(children: [
                Padding(padding: EdgeInsets.only(top: 100)),
                Text(
                  'Patient has Found',
                  style: GoogleFonts.poppins(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                Text(
                  "We're already found a patient",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                  ),
                  ),
              ],),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/4,
            left: MediaQuery.of(context).size.width/8.5,
            child: Container(
              width: MediaQuery.of(context).size.width/1.3,
              child: Image.asset('assets/images/patientfound.png')
            ),
          ),
        ]
      )
    );
  }
}
