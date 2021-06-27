import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/umkm/umkm_dashboard_view.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateProductPage extends StatefulWidget {
  static const routeName = "/umkm/update_product";

  @override
  _UpdateProductPageState createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  // final List<String> _jumlahStok = ['Entertainment', 'Bills', 'Food', 'Other'];
  List<String> sisaStock = <String>['1', '2', '3', '4', '5'];
  List<String> kategori = <String>[
    'Food',
    'Medicine',
    'Beverage',
    'Groceries',
    'Other'
  ];

  String? _stok;
  String? _jenis;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.primaryColor,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    ColorPalette.gradientLeft,
                    ColorPalette.gradientRight
                  ]),
            ),
          ),
          elevation: 0,
        ),
        body: Stack(fit: StackFit.loose, children: [
          Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: ColorPalette.primaryColor,
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3.5),
                child: Center(
                  child: ListView(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Change picture',
                          style: GoogleFonts.poppins(
                            decoration: TextDecoration.underline,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: TextFormField(
                          initialValue: 'Kentang Thailand',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 18.0, color: Colors.white)),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              fillColor: Color.fromRGBO(205, 196, 221, 0.17),
                              filled: true,
                              hintText: 'Nama Produk',
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: TextFormField(
                          // initialValue: 'Kentang Thailand',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 18.0, color: Colors.white)),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              fillColor: Color.fromRGBO(205, 196, 221, 0.17),
                              filled: true,
                              hintText: 'Harga Produk',
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2.7,
                              child: DropdownButtonFormField<String>(
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 18.0, color: Colors.black)),
                                selectedItemBuilder: (BuildContext context) {
                                  return sisaStock.map((String value) {
                                    return Text(
                                      value,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    );
                                  }).toList();
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    fillColor:
                                        Color.fromRGBO(205, 196, 221, 0.17),
                                    filled: true,
                                    hintText: 'Sisa Stock',
                                    hintStyle: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.white)),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                value: _stok,
                                items: sisaStock.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _stok = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.7,
                              child: DropdownButtonFormField<String>(
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 18.0, color: Colors.black)),
                                selectedItemBuilder: (BuildContext context) {
                                  return kategori.map((String value) {
                                    return Text(
                                      value,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    );
                                  }).toList();
                                },
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 20),
                                    fillColor:
                                        Color.fromRGBO(205, 196, 221, 0.17),
                                    filled: true,
                                    hintText: 'Kategori',
                                    hintStyle: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.white)),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                value: _jenis,
                                items: kategori.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    _jenis = value;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: TextFormField(
                          // initialValue: 'Kentang Thailand',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 18.0, color: Colors.white)),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 20),
                              fillColor: Color.fromRGBO(205, 196, 221, 0.17),
                              filled: true,
                              hintText: 'Deskripsi Produk',
                              hintStyle: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                            'Save',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, UMKMDashboardPage.routeName);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                  ColorPalette.gradientLeft,
                  ColorPalette.gradientRight
                ])),
            child: Text(
              'Update Product',
              style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 9,
            left: MediaQuery.of(context).size.width / 4.5,
            child: Container(
                width: MediaQuery.of(context).size.width / 1.7,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/kentang.png'))),
          ),
        ]));
  }
}
