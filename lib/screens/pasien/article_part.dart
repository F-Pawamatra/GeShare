import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticlePart extends StatefulWidget {
  final Animation<double> animation;
  ArticlePart({required this.animation});

  @override
  _ArticlePartState createState() => _ArticlePartState();
}

class _ArticlePartState extends State<ArticlePart> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: widget.animation,
      child: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/vid1.png',
                    width: MediaQuery.of(context).size.width/5,
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Image.asset(
                    'assets/images/vid2.png',
                    width: MediaQuery.of(context).size.width/5,
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Image.asset(
                    'assets/images/vid3.png',
                    width: MediaQuery.of(context).size.width/5,
                  ),
                  Padding(padding: EdgeInsets.only(left: 8)),
                  Image.asset(
                    'assets/images/vid4.png',
                    width: MediaQuery.of(context).size.width/5,
                  ),
                ]
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            InkWell(
              child: Image.asset(
                'assets/images/art1.png',
                width: MediaQuery.of(context).size.width,
              )
            ),
          ]
        ),
      )
    );
  }
}
