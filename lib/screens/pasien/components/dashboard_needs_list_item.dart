import 'package:flutter/material.dart';
import 'package:ge_share/screens/pasien/components/dashboard_needs_list.dart';

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
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, ),
        borderRadius: BorderRadius.circular(16.0)
      ),
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 16, color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 8.0)),
            Text(shortDescription),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: tagColor,
              ),
              padding: EdgeInsets.fromLTRB(24, 4, 24, 4),
              child: Text(tagText),)
          ],
        ),
      )
    );
  }
}
