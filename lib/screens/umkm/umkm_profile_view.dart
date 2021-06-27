import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/login_view.dart';
import 'package:ge_share/screens/umkm/biodata_part.dart';
import 'package:ge_share/screens/umkm/statistic_part.dart';
import 'package:google_fonts/google_fonts.dart';

enum WidgetMarker { biodata, statistic }

class UMKMProfilePage extends StatefulWidget {
  const UMKMProfilePage({Key? key}) : super(key: key);
  static const routeName = "/umkm/profile";

  @override
  _UMKMProfilePageState createState() => _UMKMProfilePageState();
}

class _UMKMProfilePageState extends State<UMKMProfilePage>
    with SingleTickerProviderStateMixin {
  WidgetMarker selectedWidgetMarker = WidgetMarker.biodata;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.primaryColor,
        appBar: AppBar(
          backgroundColor: ColorPalette.primaryColor,
          actions: [
            IconButton(
              padding: EdgeInsets.only(top: 2),
              onPressed: () {
                Navigator.pushNamed(context, LoginPage.routeName);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 16)),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image.asset(
                          'assets/images/atar.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )),
                    Padding(padding: EdgeInsets.only(left: 20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Akhtar Mulyana',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0)),
                        ),
                        Align(
                          child: Text(
                            'UMKM',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, right: 5.0, left: 10),
                      // padding: EdgeInsets.all(7.0),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              (selectedWidgetMarker == WidgetMarker.biodata
                                  ? ColorPalette.gradientLeft
                                  : Colors.transparent),
                              (selectedWidgetMarker == WidgetMarker.biodata
                                  ? ColorPalette.gradientRight
                                  : Colors.transparent),
                            ]),
                      ),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: BorderSide(
                                color: Color.fromRGBO(0, 160, 227, 0))),
                        onPressed: () {
                          setState(() {
                            selectedWidgetMarker = WidgetMarker.biodata;
                          });
                        },
                        padding: EdgeInsets.all(5.0),
                        color: Color.fromRGBO(0, 160, 227, 0),
                        textColor: Colors.white,
                        child: Text(
                          'Biodata',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0),
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              (selectedWidgetMarker == WidgetMarker.statistic)
                                  ? ColorPalette.gradientLeft
                                  : Colors.transparent,
                              (selectedWidgetMarker == WidgetMarker.statistic)
                                  ? ColorPalette.gradientRight
                                  : Colors.transparent,
                            ]),
                      ),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: BorderSide(
                                color: Color.fromRGBO(0, 160, 227, 0))),
                        onPressed: () {
                          setState(() {
                            selectedWidgetMarker = WidgetMarker.statistic;
                          });
                        },
                        padding: EdgeInsets.all(5.0),
                        color: Color.fromRGBO(0, 160, 227, 0),
                        textColor: Colors.white,
                        child: Text(
                          'Statistic',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                    ),
                  ],
                ),
                FutureBuilder(
                  future: _playAnimation(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return getCustomContainer();
                  },
                )
              ],
            ),
          ),
        ));
  }

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.biodata:
        return getBiodataContainer();
      case WidgetMarker.statistic:
        return getStatisticContainer();
    }
    // return getinputExpensesContainer();
  }

  Widget getBiodataContainer() {
    return BiodataPart(
      animation: _animation,
    );
  }

  Widget getStatisticContainer() {
    return StatisticPart(
      animation: _animation,
    );
  }
}
