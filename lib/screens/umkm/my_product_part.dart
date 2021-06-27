import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/umkm/update_product.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProductPart extends StatefulWidget {
  final Animation<double> animation;
  MyProductPart({required this.animation});

  @override
  _MyProductPartState createState() => _MyProductPartState();
}

class _MyProductPartState extends State<MyProductPart> {
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
        width: double.infinity,
        child: DefaultTextStyle(
          style: GoogleFonts.poppins(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
              child: InkWell(
                child: Image.asset(
                  'assets/images/product1.png',
                  width: MediaQuery.of(context).size.width,
                ),
                onTap: (){
                  Navigator.pushNamed(context, UpdateProductPage.routeName);
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              child: InkWell(
                child: Image.asset(
                  'assets/images/product2.png',
                  width: MediaQuery.of(context).size.width,
                ),
                onTap: (){
                  Navigator.pushNamed(context, UpdateProductPage.routeName);
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              child: InkWell(
                child: Image.asset(
                  'assets/images/product3.png',
                  width: MediaQuery.of(context).size.width,
                ),
                onTap: (){
                  Navigator.pushNamed(context, UpdateProductPage.routeName);
                },
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
