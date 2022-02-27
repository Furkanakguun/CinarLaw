import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/socialMediaIcon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../animations/entranceFader.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/CINAR.png"),
          fit: BoxFit.cover,
        ),
      ),
      height: height,
      width: width,
      child: Stack(
        children: [
          // Positioned(
          //   bottom: width < 740 ? height * 0.1 : height * 0.15,
          //   right: width < 740 ? -width * 0.2 : -width * 0.1,
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: Image.asset('assets/1.png', height: height * 0.75),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.1, width < 740 ? height * 0.15 : height * 0.2, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Text(
                      "We are always here for ",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.042,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                     SizedBox(height: 12,),
                    Text(
                      "Solutions that will\n" + "change your life",
                      style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 50,),
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
                  height: height * 0.04,
                ),
                // Text(
                //   "Çınar&Çınar",
                //   style: GoogleFonts.montserrat(
                //       fontSize: height * 0.07,
                //       fontWeight: FontWeight.w100,
                //       color: _themeProvider.lightTheme
                //           ? Colors.black
                //           : Colors.white,
                //       letterSpacing: 1.5),
                // ),
                // Text(
                //   "Çınar&Çınar",
                //   style: GoogleFonts.montserrat(
                //     fontSize: height * 0.07,
                //     fontWeight: FontWeight.w500,
                //     color:
                //         _themeProvider.lightTheme ? Colors.black : Colors.white,
                //   ),
                // ),
                // Row(
                //   children: [
                //     Icon(
                //       Icons.play_arrow_rounded,
                //       color: kPrimaryColor,
                //     ),
                //     TyperAnimatedTextKit(
                //         isRepeatingAnimation: true,
                //         speed: Duration(milliseconds: 50),
                //         textStyle: GoogleFonts.montserrat(
                //           fontSize: height * 0.03,
                //           fontWeight: FontWeight.w200,
                //           color: _themeProvider.lightTheme
                //               ? Colors.black
                //               : Colors.white,
                //         ),
                //         text: [
                //           " Flutter Developer",
                //           " Technical Writer",
                //           " UI/UX Enthusiast"
                //         ]),
                //   ],
                // ),
                SizedBox(
                  height: height * 0.045,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < kSocialIcons.length; i++)
                      SocialMediaIconBtn(
                        icon: kSocialIcons[i],
                        socialLink: kSocialLinks[i],
                        height: height * 0.035,
                        horizontalPadding: width * 0.01,
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
