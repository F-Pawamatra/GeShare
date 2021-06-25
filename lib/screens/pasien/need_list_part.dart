import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/pasien/components/dashboard_needs_list.dart';
import 'package:google_fonts/google_fonts.dart';

class NeedListPart extends StatefulWidget {
  final Animation<double> animation;
  NeedListPart({required this.animation});

  @override
  _NeedListPartState createState() => _NeedListPartState();
}

class _NeedListPartState extends State<NeedListPart> {

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
    return DashboardNeedsList();
  }
}
