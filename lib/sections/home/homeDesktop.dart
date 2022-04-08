import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/animations/entranceFader.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../mainSection.dart';

class HomeDesktop extends StatefulWidget {
  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: mainColor,
      height: height+100,
      width: width,
      child: Stack(
        children: [
          Container(
            //color: mainColor,
            decoration: BoxDecoration(
              image: DecorationImage(
                //opacity: 0.5,
                image: AssetImage("assets/CINAR.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Positioned(
          //   top: width < 1200 ? height * 0.15 : height * 0.1,
          //   right: width * 0.01,
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: EntranceFader(
          //       offset: Offset(0, 0),
          //       delay: Duration(seconds: 1),
          //       duration: Duration(milliseconds: 800),
          //       child: Image.asset(
          //         'assets/cinar_Logo.png',
          //         height: width < 1200 ? height * 0.8 : height * 0.85,
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            color: Colors.transparent,
            margin:
                EdgeInsets.fromLTRB(width * 0.1, height * 0.2, width * 0.1, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // AdaptiveText(
                    //   "Çınar&Çınar ",
                    //   style: GoogleFonts.brygada1918(
                    //     fontSize: height * 0.06,
                    //     fontWeight: FontWeight.w300,
                    //     color: _themeProvider.lightTheme
                    //         ? Colors.black
                    //         : Colors.white,
                    //   ),
                    // ),
                    // EntranceFader(
                    //   offset: Offset(0, 0),
                    //   delay: Duration(seconds: 2),
                    //   duration: Duration(milliseconds: 800),
                    //   child: Container(
                    //     color: Colors.black,
                    //     height: height * 0.05,
                    //   ),
                    //   // child: Image.asset(
                    //   //   "assets/hi.gif",
                    //   //   height: height * 0.05,
                    //   // ),
                    // ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                AdaptiveText(
                  "We are always here for",
                  style: GoogleFonts.montserrat(
                      fontSize: width < 1200 ? height * 0.045 : height * 0.055,
                      fontWeight: FontWeight.w300,
                      color: _themeProvider.lightTheme
                          ? Colors.white
                          : Colors.white,
                      letterSpacing: 0.0),
                ),
                AdaptiveText(
                  "Solutions that will\n" + "change your life",
                  style: GoogleFonts.montserrat(
                      color: _themeProvider.lightTheme
                          ? Colors.white
                          : Colors.white,
                      fontSize: width < 1200 ? height * 0.045 : height * 0.055,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.0),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                EntranceFader(
                  offset: Offset(-10, 0),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: AdaptiveText(
                    "In cinar&cinar we always estalish a close working\n" +
                        "relationships with our clients. We are comitted to serving and \n" +
                        "protecting our Client's interests in today's ever-changing\n" +
                        "economical and legal environment",
                    style: GoogleFonts.montserrat(
                        color: _themeProvider.lightTheme
                            ? Colors.white
                            : Colors.white,
                        fontSize:
                            width < 1200 ? height * 0.010 : height * 0.020,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.0),
                  ),
                ),
                SizedBox(
                  height: height * 0.30,
                ),
                Row(
                  children: [
                    !isTr
                        ? TextButton(
                            child: Text(
                              'EN ',
                              style: GoogleFonts.montserrat(
                                  color: _themeProvider.lightTheme
                                      ? Colors.white
                                      : Colors.white,
                                  fontSize: width < 1200
                                      ? height * 0.010
                                      : height * 0.020,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.0),
                            ),
                            onPressed: () {
                              setState(() {
                                isTr = true;
                              });
                            })
                        : TextButton(
                            child: Text(
                              'EN ',
                              style: GoogleFonts.montserrat(
                                  color: _themeProvider.lightTheme
                                      ? Colors.white
                                      : Colors.white,
                                  fontSize: width < 1200
                                      ? height * 0.010
                                      : height * 0.020,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.0),
                            ),
                            onPressed: () {
                                setState(() {
                                isTr = false;
                              });
                            }),
                    Text("|",
                        style: GoogleFonts.montserrat(
                            color: _themeProvider.lightTheme
                                ? Colors.white
                                : Colors.white,
                            fontSize:
                                width < 1200 ? height * 0.010 : height * 0.020,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.0)),
                    isTr
                        ? TextButton(
                            child: Text(
                              'TR',
                              style: GoogleFonts.montserrat(
                                  color: _themeProvider.lightTheme
                                      ? Colors.white
                                      : Colors.white,
                                  fontSize: width < 1200
                                      ? height * 0.010
                                      : height * 0.020,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.0),
                            ),
                            onPressed: () {
                              setState(() {
                                isTr = false;
                              });
                            })
                        : TextButton(
                            child: Text(
                              'TR',
                              style: GoogleFonts.montserrat(
                                  color: _themeProvider.lightTheme
                                      ? Colors.white
                                      : Colors.white,
                                  fontSize: width < 1200
                                      ? height * 0.010
                                      : height * 0.020,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 0.0),
                            ),
                            onPressed: () {
                              setState(() {
                                isTr = true;
                              });
                            }),
                  ],
                )

                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   children: List.generate(
                //     kSocialIcons.length,
                //     (index) => WidgetAnimator(
                //       child: SocialMediaIconBtn(
                //         icon: kSocialIcons[index],
                //         socialLink: kSocialLinks[index],
                //         height: height * 0.035,
                //         horizontalPadding: width * 0.005,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
