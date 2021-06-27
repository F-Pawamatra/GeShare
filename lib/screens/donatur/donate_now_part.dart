import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/donatur/patient_found.dart';
import 'package:google_fonts/google_fonts.dart';

class DonateNowPart extends StatefulWidget {
  final Animation<double> animation;
  DonateNowPart({required this.animation});

  @override
  _DonateNowPartState createState() => _DonateNowPartState();
}

class _DonateNowPartState extends State<DonateNowPart> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Calon Penerima Donasi",
                    style: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.bold)),
              ),
              // Padding(padding: EdgeInsets.only(top: 8.0)),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    _listItem(
                        "Fery Adcovid",
                        [
                          "Beras",
                          "Bahan makanan",
                          "Masker"
                        ],
                        "Jl. Buah Hati si Bunda, Pemalang"),
                    Padding(padding: EdgeInsets.only(top: 16.0)),
                    _listItem(
                        "Jerinx Konspir",
                        [
                          "Beras",
                          "Bahan makanan",
                          "Masker"
                        ],
                        "Jl. Naga Kecil dan Ikan, Jepara"),
                    Padding(padding: EdgeInsets.only(top: 16.0)),
                    _listItem(
                        "Chika Imam Ali",
                        [
                          "APD",
                          "Bahan makanan",
                          "Masker"
                        ],
                        "Jl. Purnama Sebelah No. 15, Tasikmalaya"),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _listItem(String name, List<String> needList, String address) {
    var childs = List<Widget>.filled(needList.length, Text(""));
    for (int i = 0; i < needList.length; i++) {
      childs[i] = Row(
        children: <Widget>[
            Icon(Icons.circle, color: Colors.white, size: 5.0,),
            Padding(padding: EdgeInsets.only(left: 5.0)),
            Text(needList[i], style: GoogleFonts.poppins(fontSize: 12.0))
          ]);
    }

    return Container(
      decoration: BoxDecoration(
          // color: Colors.blue,
          borderRadius: BorderRadius.circular(16.0),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                ColorPalette.gradientLeft,
                ColorPalette.gradientRight
              ]),
            ),
      padding: EdgeInsets.all(16.0),
      child: InkWell(
        child: Row(
          children: <Widget>[
            CircleAvatar(radius: 48.0, backgroundImage: AssetImage('assets/images/fery.jpg'),),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(name, style: GoogleFonts.poppins(fontSize: 22.0, fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.only(top: 8.0)),
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: childs),
                    Padding(padding: EdgeInsets.only(top: 8.0)),
                    Text(
                        address, overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(fontSize: 12.0),),
                  ],
                )
              )
            )
          ]
        ),
        onTap: (){
          Navigator.pushNamed(context, PatientFoundPage.routeName);
        },
      ),
    );
  }
}
