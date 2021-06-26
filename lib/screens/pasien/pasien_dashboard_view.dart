import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/pasien/article_part.dart';
import 'package:ge_share/screens/pasien/need_list_part.dart';
import 'package:ge_share/screens/pasien/pasien_profile_view.dart';
import 'package:google_fonts/google_fonts.dart';

enum WidgetMarker { article, needList }

class PasienDashboardPage extends StatefulWidget {
  const PasienDashboardPage({ Key? key }) : super(key: key);

  static const routeName = "/pasien/dashboard";

  @override
  _PasienDashboardPageState createState() => _PasienDashboardPageState();
}

class _PasienDashboardPageState extends State<PasienDashboardPage> with SingleTickerProviderStateMixin {
  WidgetMarker selectedWidgetMarker = WidgetMarker.article;

  late AnimationController _controller;
  late Animation <double> _animation;

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
        leading: null,
        automaticallyImplyLeading: false,
        title: Text(
          "Dashboard",
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 17.0
              )
          ),
        ),
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
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  )
                )
              )
            ],
          ),
          FlatButton(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/fery.jpg'),
            ),
            onPressed: () {
              Navigator.pushNamed(context, PasienProfilePage.routeName);
            },
          ),
          Padding(padding: EdgeInsets.only(right: 16.0))
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
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
                  Text(
                    "Hello,",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        )
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5.0)),
                  Text(
                    "Fery Adcovid",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0
                        )
                    ),
                  ),
                ],
              )
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 20.0, bottom: 20.0, right: 5.0),
                  // padding: EdgeInsets.all(7.0),
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            (selectedWidgetMarker ==
                                    WidgetMarker.article)
                                ? ColorPalette.gradientLeft
                                : Colors.transparent,
                            (selectedWidgetMarker ==
                                    WidgetMarker.article)
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
                        selectedWidgetMarker = WidgetMarker.article;
                      });
                    },
                    padding: EdgeInsets.all(5.0),
                    color: Color.fromRGBO(0, 160, 227, 0),
                    textColor: Colors.white,
                    child: Text(
                      'Article',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 15.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 5.0),
                  // padding: EdgeInsets.all(7.0),
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            (selectedWidgetMarker ==
                                    WidgetMarker.needList)
                                ? ColorPalette.gradientLeft
                                : Colors.transparent,
                            (selectedWidgetMarker ==
                                    WidgetMarker.needList)
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
                        selectedWidgetMarker = WidgetMarker.needList;
                      });
                    },
                    padding: EdgeInsets.all(5.0),
                    color: Color.fromRGBO(0, 160, 227, 0),
                    textColor: Colors.white,
                    child: Text(
                      'Need List',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 15.0),
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
    );
  }
  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.article:
        return getArticleContainer();
      case WidgetMarker.needList:
        return getNeedListContainer();
    }
    // return getinputExpensesContainer();
  }

  Widget getArticleContainer() {
    return ArticlePart(
      animation: _animation,
    );
  }

  Widget getNeedListContainer() {
    return NeedListPart(
      animation: _animation,
    );
  }
}