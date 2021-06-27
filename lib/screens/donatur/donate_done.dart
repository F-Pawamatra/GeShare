import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/donatur/donatur_dashboard_view.dart';
import 'package:google_fonts/google_fonts.dart';

class DonateDonePage extends StatelessWidget {
  const DonateDonePage({Key? key}) : super(key: key);
  static const routeName = "/donatur/donate_done";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.primaryColor,
        body: Column(
          children: [
            Container(
              child: Image(
                image: AssetImage(
                  'assets/images/finish.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Payment Details',
                      style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Date of Donation: 30 June 2021 \nAmount Paid Rp 550.000,00',
                      style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Thank your for your kindness for sharing your donation. We hope that we all safe with this pandemic. Stay Safe!',
                      style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 70)),
            Container(
                height: 50.0,
                // width: MediaQuery.of(context).size.width/2,
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 6),
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          ColorPalette.gradientLeft,
                          ColorPalette.gradientRight
                        ]),
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  child: Center(
                    child: Text(
                      'Share your story',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, DonateDonePage.routeName);
                  },
                )),
            Padding(padding: EdgeInsets.only(top: 5)),
            TextButton(
              child: Text(
                'Back to Dashboard',
                style: GoogleFonts.poppins(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, DonaturDashboardPage.routeName);
              },
            )
          ],
        ));
  }
}
