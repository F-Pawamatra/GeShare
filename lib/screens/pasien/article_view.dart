import 'package:flutter/material.dart';
import 'package:ge_share/constants/const_color.dart';
import 'package:ge_share/screens/donatur/donatur_dashboard_view.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleViewPage extends StatelessWidget {
  const ArticleViewPage({Key? key}) : super(key: key);
  static const routeName = "/article_view";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.primaryColor,
        body: ListView(
          children: [
            Container(
              child: Image(
                image: AssetImage(
                  'assets/images/article.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 30, right: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue leo a rutrum egestas. Donec tincidunt lobortis leo et gravida. Nullam maximus nec urna et tincidunt. Mauris at diam eu nulla elementum ornare.',
                      style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4),
              child: Image.asset('assets/images/article2.png')
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Fusce nec tellus non lacus faucibus auctor. Cras eu leo ut purus tristique ultricies sed quis turpis. Nam dolor orci, aliquet nec euismod sit amet, malesuada eu mi. Aliquam sit amet risus nisl. Aenean vulputate turpis enim, ut tristique mi dignissim at. Integer gravida mauris ligula, ut ornare nisi luctus quis. Aenean volutpat pharetra dolor ac fermentum. Pellentesque mattis sed ligula in ornare. ',
                      style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4),
              child: Image.asset('assets/images/kentang.png')
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Duis volutpat scelerisque enim in lacinia. Vestibulum ut erat et urna fermentum dignissim. Quisque ac magna tincidunt, auctor eros eget, tincidunt massa. Pellentesque ac condimentum sapien. Duis quis consectetur mauris, ut fringilla odio. Sed tempus eros ac nisi commodo, viverra iaculis dolor lacinia. Maecenas id elit pulvinar, molestie quam id, scelerisque dolor. Cras sed tempor nibh.',
                      style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 5)),
            TextButton(
              child: Text(
                'Back to Dashboard',
                style: GoogleFonts.poppins(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
              onPressed: () {
                Navigator.pop(context, true);
              },
            )
          ],
        ));
  }
}
