import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:google_fonts/google_fonts.dart';

class BiodataPart extends StatefulWidget {
  final Animation<double> animation;
  BiodataPart({required this.animation});

  @override
  _BiodataPartState createState() => _BiodataPartState();
}

class _BiodataPartState extends State<BiodataPart> {
  String nama = 'Gesultani Nova';
  String phone = '082345678910';
  String email = 'gesultaninova@email.com';
  String location = 'Yogyakarta';
  String gender = 'Female';

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: widget.animation,
      child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            initialValue: nama,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.white)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color.fromRGBO(171, 165, 165, 1),
                                  size: 30,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 8),
                                fillColor: Color.fromRGBO(205, 196, 221, 0.17),
                                filled: true,
                                labelText: 'Full Name',
                                labelStyle: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            initialValue: phone,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.white)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Color.fromRGBO(171, 165, 165, 1),
                                  size: 30,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 8),
                                fillColor: Color.fromRGBO(205, 196, 221, 0.17),
                                filled: true,
                                labelText: 'Phone Number',
                                labelStyle: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            initialValue: email,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.white)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.mail,
                                  color: Color.fromRGBO(171, 165, 165, 1),
                                  size: 30,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 8),
                                fillColor: Color.fromRGBO(205, 196, 221, 0.17),
                                filled: true,
                                labelText: 'Email',
                                labelStyle: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            initialValue: location,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.white)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.pin_drop,
                                  color: Color.fromRGBO(171, 165, 165, 1),
                                  size: 30,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 8),
                                fillColor: Color.fromRGBO(205, 196, 221, 0.17),
                                filled: true,
                                labelText: 'Location',
                                labelStyle: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: TextFormField(
                            initialValue: gender,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 18.0, color: Colors.white)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.female,
                                  color: Color.fromRGBO(171, 165, 165, 1),
                                  size: 30,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 8),
                                fillColor: Color.fromRGBO(205, 196, 221, 0.17),
                                filled: true,
                                labelText: 'Gender',
                                labelStyle: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w100,
                                        color: Colors.white)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    ColorPalette.gradientLeft,
                                    ColorPalette.gradientRight,
                                  ])),
                          child: TextButton(
                            child: Text(
                              'Submit',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
