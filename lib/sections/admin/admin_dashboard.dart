import 'package:cinarlaw/sections/admin/blog_post_create.dart';
import 'package:cinarlaw/sections/admin/edit_blog_list.dart';
import 'package:cinarlaw/sections/admin/edit_event_list.dart';
import 'package:cinarlaw/sections/home/home.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/entranceFader.dart';
import '../../constants.dart';
import '../publicationsList/events_list.dart';
import 'event_post_create.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({
    Key key,
  }) : super(key: key);

  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isValidate = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: width < 1200
            ? EdgeInsets.only(top: 0.0, bottom: 0)
            : EdgeInsets.only(top: 0.0, bottom: 0),
        child: Center(
          child: ListView(
            children: [
              //appBarSection(width),
              //introBannerSection(height, width),
              SizedBox(
                height: height * 0.15,
              ),
              titleSection(height),
              SizedBox(
                height: height * 0.05,
              ),
              // username(height, width),
              // password(height, width),
              SizedBox(
                width: height * 0.050,
              ),
              createBlogPost(width, height),
              SizedBox(
                height: 30,
              ),
              createEventPost(width, height),
              SizedBox(
                height: 30,
              ),
              editPost(width, height),
              SizedBox(
                height: 30,
              ),
              editEvent(width, height),
              SizedBox(
                height: 30,
              ),
              homeButton(width, height)
              //Footer()
            ],
          ),
        ),
      ),
    );
  }

  Center homeButton(double width, double height) {
    return Center(
      child: Container(
        height: 50,
        width: width < 1200 ? width * 0.60 : width * 0.20,
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: isValidate
                    ? MaterialStateProperty.all<Color>(mainColor)
                    : MaterialStateProperty.all<Color>(
                        mainColor.withOpacity(0.4)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    mainColor.withOpacity(0.4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        side: BorderSide(color: Colors.transparent)))
                // overlayColor: MaterialStateProperty.resolveWith<Color>(
                //   (Set<MaterialState> states) {
                //     if (states.contains(MaterialState.hovered))
                //       return Colors.blue.withOpacity(0.04);
                //     if (states.contains(MaterialState.focused) ||
                //         states.contains(MaterialState.pressed))
                //       return Colors.blue.withOpacity(0.12);
                //     return null; // Defer to the widget's default.
                //   },
                // ),
                ),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
                (Route<dynamic> route) => false,
              );
            },
            child: Text(
              'Home',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w300),
            )),
      ),
    );
  }

  Center createBlogPost(double width, double height) {
    return Center(
      child: Container(
        height: 50,
        width: width < 1200 ? width * 0.60 : width * 0.20,
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: isValidate
                    ? MaterialStateProperty.all<Color>(mainColor)
                    : MaterialStateProperty.all<Color>(
                        mainColor.withOpacity(0.4)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    mainColor.withOpacity(0.4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        side: BorderSide(color: Colors.transparent)))
                // overlayColor: MaterialStateProperty.resolveWith<Color>(
                //   (Set<MaterialState> states) {
                //     if (states.contains(MaterialState.hovered))
                //       return Colors.blue.withOpacity(0.04);
                //     if (states.contains(MaterialState.focused) ||
                //         states.contains(MaterialState.pressed))
                //       return Colors.blue.withOpacity(0.12);
                //     return null; // Defer to the widget's default.
                //   },
                // ),
                ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlogPostCreate(),
                ),
              );
            },
            child: Text(
              'Create Blog Post',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w300),
            )),
      ),
    );
  }

  Center createEventPost(double width, double height) {
    return Center(
      child: Container(
        height: 50,
        width: width < 1200 ? width * 0.60 : width * 0.20,
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: isValidate
                    ? MaterialStateProperty.all<Color>(mainColor)
                    : MaterialStateProperty.all<Color>(
                        mainColor.withOpacity(0.4)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    mainColor.withOpacity(0.4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        side: BorderSide(color: Colors.transparent)))
                // overlayColor: MaterialStateProperty.resolveWith<Color>(
                //   (Set<MaterialState> states) {
                //     if (states.contains(MaterialState.hovered))
                //       return Colors.blue.withOpacity(0.04);
                //     if (states.contains(MaterialState.focused) ||
                //         states.contains(MaterialState.pressed))
                //       return Colors.blue.withOpacity(0.12);
                //     return null; // Defer to the widget's default.
                //   },
                // ),
                ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventPostCreate(),
                ),
              );
            },
            child: Text(
              'Create Event Post',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w300),
            )),
      ),
    );
  }

  Center editPost(double width, double height) {
    return Center(
      child: Container(
        height: 50,
        width: width < 1200 ? width * 0.60 : width * 0.20,
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: isValidate
                    ? MaterialStateProperty.all<Color>(mainColor)
                    : MaterialStateProperty.all<Color>(
                        mainColor.withOpacity(0.4)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    mainColor.withOpacity(0.4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        side: BorderSide(color: Colors.transparent)))
                // overlayColor: MaterialStateProperty.resolveWith<Color>(
                //   (Set<MaterialState> states) {
                //     if (states.contains(MaterialState.hovered))
                //       return Colors.blue.withOpacity(0.04);
                //     if (states.contains(MaterialState.focused) ||
                //         states.contains(MaterialState.pressed))
                //       return Colors.blue.withOpacity(0.12);
                //     return null; // Defer to the widget's default.
                //   },
                // ),
                ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditBlogsList(),
                ),
              );
            },
            child: Text(
              'Edit Blogs',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w300),
            )),
      ),
    );
  }

  Center editEvent(double width, double height) {
    return Center(
      child: Container(
        height: 50,
        width: width < 1200 ? width * 0.60 : width * 0.20,
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: isValidate
                    ? MaterialStateProperty.all<Color>(mainColor)
                    : MaterialStateProperty.all<Color>(
                        mainColor.withOpacity(0.4)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    mainColor.withOpacity(0.4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        side: BorderSide(color: Colors.transparent)))
                // overlayColor: MaterialStateProperty.resolveWith<Color>(
                //   (Set<MaterialState> states) {
                //     if (states.contains(MaterialState.hovered))
                //       return Colors.blue.withOpacity(0.04);
                //     if (states.contains(MaterialState.focused) ||
                //         states.contains(MaterialState.pressed))
                //       return Colors.blue.withOpacity(0.12);
                //     return null; // Defer to the widget's default.
                //   },
                // ),
                ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditEventsList(),
                ),
              );
            },
            child: Text(
              'Edit Events',
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w300),
            )),
      ),
    );
  }

  Align titleSection(double height) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        "ADMIN DASHBOARD",
        style: GoogleFonts.montserrat(
            color: mainColorWhite,
            fontSize: height * 0.028,
            fontWeight: FontWeight.w300),
      ),
    );
  }

  Center introBannerSection(double height, double width) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/museum_stack.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        height: height * 0.20,
        width: width,
        //color: Colors.yellow),
      ),
    );
  }
}
