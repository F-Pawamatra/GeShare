import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/donatur/payment.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({ Key? key }) : super(key: key);
  static const routeName = "/donatur/product_list";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorPalette.gradientLeft,
        elevation: 0,
      ),
      body: Container(
        child: new ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorPalette.gradientLeft,
                    ColorPalette.gradientRight,
                    ColorPalette.primaryColor,
                  ]
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60)
                )
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Choose Product',
                      style: GoogleFonts.poppins(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  TextFormField(
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 18.0, color: Color.fromRGBO(131, 131, 131, 1),)),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color.fromRGBO(131, 131, 131, 1),
                          size: 30,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 25, horizontal: 8),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Search product that you want to donate',
                        hintStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w200,
                            color: Color.fromRGBO(135, 135, 135, 1))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Categories',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
              ),
            ),
            new Container(
              height: 80.0,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: new List.generate(5, (int index) {
                  return new Card(
                    color: Colors.transparent,
                    child: new Container(
                      margin: EdgeInsets.only(right:10),
                      width: 120,
                      height: 30,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            ColorPalette.gradientLeft,
                            ColorPalette.gradientRight
                          ]
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: new Text(
                          "Categories ${(index + 1)}",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18
                          ),
                        )
                      ),
                    ),
                  );
                }),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Menu',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                child: Image.asset(
                  'assets/images/product1.png',
                  width: MediaQuery.of(context).size.width,
                ),
                onTap: (){
                  Navigator.pushNamed(context, PaymentPage.routeName);
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                child: Image.asset(
                  'assets/images/product2.png',
                  width: MediaQuery.of(context).size.width,
                ),
                onTap: (){
                  Navigator.pushNamed(context, PaymentPage.routeName);
                },
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: InkWell(
                child: Image.asset(
                  'assets/images/product3.png',
                  width: MediaQuery.of(context).size.width,
                ),
                onTap: (){
                  Navigator.pushNamed(context, PaymentPage.routeName);
                },
              ),
            ),
          ],
        ),
      // body: Column(
      //   children: [
      
      
      //     Container(
      //       margin: EdgeInsets.only(top: 20),
      //       child: Expanded(
      //         child: ListView(
      //           scrollDirection: Axis.horizontal,
      //           children: [
      //             Container(
      //               width: 135,
      //               height: 50,
                   
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    )
    );
  }
}