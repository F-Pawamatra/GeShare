import 'package:flutter/material.dart';
import 'package:ge_share/screens/pasien/components/dashboard_needs_list.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardNeedsListItem extends StatelessWidget {

  String title;
  String shortDescription;
  String tagText;
  Color? tagColor;

  DashboardNeedsListItem({
    this.title = "Bantuan Lorem Ipsum",
    this.shortDescription = "Deskripsi singkat barang lorem ipsum",
    this.tagText = "Lorem Ipsum",
    this.tagColor
  }) : super();

  @override
  Widget build(BuildContext context) {
    tagColor = tagColor ?? Colors.green.shade400;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, ),
        borderRadius: BorderRadius.circular(16.0)
      ),
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 16, color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8.0)),
            Text(
              shortDescription,
              style: GoogleFonts.poppins(),
              ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Container(
              padding: EdgeInsets.fromLTRB(24, 4, 24, 4),
              child: Text(
                tagText,
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: tagColor,
              ),
            ),
          ],
        ),
      )
    );
  }
}
