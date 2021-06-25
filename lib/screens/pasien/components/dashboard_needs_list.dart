import 'package:flutter/material.dart';
import 'package:ge_share/screens/pasien/components/dashboard_needs_list_item.dart';

class DashboardNeedsList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                DashboardNeedsListItem(
                  tagText: "Food",
                  tagColor: Colors.green.shade400
                ),
                Padding(padding: EdgeInsets.only(top: 24.0),),
                DashboardNeedsListItem(
                  tagText: "Medicine",
                  tagColor: Colors.orange.shade600
                ),
              ],
            ),
            Positioned(
              bottom: 4,
              right: 4,
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.add, size: 40.0),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.white,
                      width: 2,
                    )
                  ),
                  primary: Colors.transparent
                ),
              )
            ),
          ],
        )
      )
    );
  }
}