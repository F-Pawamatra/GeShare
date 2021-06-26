import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/donatur/product_list.dart';
import 'package:ge_share/screens/donatur/tracking.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ge_share/screens/donatur/choose_store.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);
  static const routeName = "/donatur/payment";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  ColorPalette.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorPalette.primaryColor,
      ),
      body: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: ColorPalette.primaryColor,
          ),
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text(
                  'Total Payment',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                  ),
                Text(
                  "Rp 550.000,00",
                  style: GoogleFonts.poppins(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                  ),
                Text(
                  '"Click apply to pay"',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.white
                  ),
                  ),
              ],),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height/3.8,
            left: MediaQuery.of(context).size.width/6.5,
            child: Container(
              // margin: EdgeInsets.only(top: 0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ProductListPage.routeName);
                    }, 
                    child: 
                      Container(
                        width: 120,
                        height: 50,
                        // color: Color.fromRGBO(54, 54, 54, 1),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(54, 54, 54, 1),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17
                            ),
                          ),
                        ),
                      ),
                    ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, TrackingPage.routeName);
                    }, 
                    child: 
                      Container(
                        width: 120,
                        height: 50,
                        // color: Color.fromRGBO(54, 54, 54, 1),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(54, 54, 54, 1),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            'Apply',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.linear_scale_sharp,
                      size: 50,
                    ),
                    Text('Transaction Details',
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 22
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 40,
                                color: Colors.green[700],
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                'One set sensi duckbill mask premium',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'X3',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 40,
                                color: Colors.green[700],
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                'Le Minerale bottle version',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'X3',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 40,
                                color: Colors.green[700],
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                'One pack paracetamol medicine',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'X1',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 40,
                                color: Colors.green[700],
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                'One Sack of Rice',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'X1',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                size: 40,
                                color: Colors.green[700],
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Text(
                                'One bottle of Madu TJ',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'X5',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            )
          )
        ]
      )
    );
  }
}
