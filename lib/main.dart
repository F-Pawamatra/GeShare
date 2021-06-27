import 'package:flutter/material.dart';
import 'package:ge_share/screens/login_view.dart';
import 'package:ge_share/screens/pasien/article_view.dart';
import 'package:ge_share/screens/register_view.dart';
import 'package:ge_share/screens/pasien/pasien_dashboard_view.dart';
import 'package:ge_share/screens/pasien/pasien_profile_view.dart';
import 'package:ge_share/screens/pasien/article_view.dart';

import 'package:ge_share/screens/donatur/donate_done.dart';
import 'package:ge_share/screens/donatur/payment.dart';
import 'package:ge_share/screens/donatur/tracking.dart';
import 'package:ge_share/screens/donatur/donatur_dashboard_view.dart';
import 'package:ge_share/screens/donatur/donatur_profile_view.dart';
import 'package:ge_share/screens/donatur/patient_found.dart';
import 'package:ge_share/screens/donatur/choose_store.dart';
import 'package:ge_share/screens/donatur/product_list.dart';
import 'package:ge_share/screens/umkm/umkm_dashboard_view.dart';
import 'package:ge_share/screens/umkm/umkm_profile_view.dart';
import 'package:ge_share/screens/umkm/update_product.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "GeShare",
    initialRoute: "/",
    routes: {
      "/" : (context) => LoginPage(),
      RegisterPage.routeName : (context) => RegisterPage(),
      PasienDashboardPage.routeName : (context) => PasienDashboardPage(),
      PasienProfilePage.routeName : (context) => PasienProfilePage(),
      ArticleViewPage.routeName : (context) => ArticleViewPage(),

      DonaturDashboardPage.routeName : (context) => DonaturDashboardPage(),
      DonaturProfilePage.routeName : (context) => DonaturProfilePage(),
      ChooseStorePage.routeName : (context) => ChooseStorePage(),
      PatientFoundPage.routeName : (context) => PatientFoundPage(),
      ProductListPage.routeName : (context) => ProductListPage(),
      PaymentPage.routeName : (context) => PaymentPage(),
      TrackingPage.routeName : (context) => TrackingPage(),
      DonateDonePage.routeName : (context) => DonateDonePage(),

      UMKMDashboardPage.routeName : (context) => UMKMDashboardPage(),
      UMKMProfilePage.routeName : (context) => UMKMProfilePage(),
      UpdateProductPage.routeName : (context) => UpdateProductPage()
    },
  ));
}