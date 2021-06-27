import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:google_fonts/google_fonts.dart';

class DonationsPart extends StatefulWidget {
  final Animation<double> animation;
  DonationsPart({required this.animation});

  @override
  _DonationsPartState createState() => _DonationsPartState();
}

class _DonationsPartState extends State<DonationsPart> {
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: widget.animation,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Today Donations',
                style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0
                  )
                )
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rp 550.000,00',
                style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 28.0
                  )
                )
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'All-Time Donations',
                style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17.0
                  )
                )
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Rp 154.350.000,00',
                style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 28.0
                  )
                )
              ),
            ),
          ]
        ),
      )
    );
  }
}