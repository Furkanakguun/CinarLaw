import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../animations/entranceFader.dart';

class HomeMobile extends StatefulWidget {
  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/CINAR_GIRIS.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      height: height - 150,
      width: width,
      child: Stack(
        children: [
          // Positioned(
          //   bottom: 0.0,
          //   right: -width * 0.25,
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: Image.asset('assets/1.png', height: height * 0.65),
          //   ),
          // ),
          Container(
            color: Colors.transparent,
            margin: EdgeInsets.fromLTRB(width * 0.07, height * 0.12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "We are always here for ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.042,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Solutions that will\n" + "change your life",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    EntranceFader(
                      offset: Offset(-10, 0),
                      delay: Duration(seconds: 1),
                      duration: Duration(milliseconds: 800),
                      child: Text(
                        "In cinar&cinar we always estalish a close working\n" +
                            "relationships with our clients.  \n" +
                            "We are comitted to serving and \n"
                                "protecting our Client's interests in today's ever-changing\n" +
                            "economical and legal environment",
                        style: GoogleFonts.montserrat(
                            fontSize: height * 0.020,
                            color: Colors.white,
                            fontWeight: FontWeight.w200),
                        //textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SocialMediaIconBtn(
                      icon: kSocialIcons[3],
                      socialLink: kSocialLinks[3],
                      height: height * 0.03,
                      horizontalPadding: 2.0,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
