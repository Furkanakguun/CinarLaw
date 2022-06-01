import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:cinarlaw/translation/storage.dart';
import 'package:cinarlaw/translation/translation.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/animations/entranceFader.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/socialMediaIcon.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

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
      height: height + 135,
      width: width,
      child: Stack(
        children: [
          Container(
            color: mainColor,
            height: height + 135,
            child: Image.asset(
              "assets/tree.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
            color: Colors.transparent,
            margin:
                EdgeInsets.fromLTRB(width * 0.1, height * 0.2, width * 0.1, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                AdaptiveText(
                  CinarTranslations.giris1.tr,
                  style: GoogleFonts.montserrat(
                      fontSize: width < 1200 ? height * 0.045 : height * 0.055,
                      fontWeight: FontWeight.w300,
                      color: _themeProvider.lightTheme
                          ? Colors.white
                          : Colors.white,
                      letterSpacing: 0.0),
                ),
                AdaptiveText(
                  // CinarTranslations.giris2.tr + "\n" + CinarTranslations.giris3.tr,
                  // "Solutions that will\n" + "change your life",
                  CinarTranslations.giris2.tr,
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
                  child: TextRenderer(
                    child: AdaptiveText(
                      "In cinar&cinar we always establish a close working\n" +
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
                ),
                SizedBox(
                  height: height * 0.30,
                ),
                translateButton(_themeProvider, width, height)

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

  updateLanguage(Locale locale) {
    Storage box = Storage();
    box.setLocale(locale);
  }

  Row translateButton(
      ThemeProvider _themeProvider, double width, double height) {
    return Row(
      children: [
        !isTr
            ? TextButton(
                child: Text(
                  'EN ',
                  style: GoogleFonts.montserrat(
                      color: _themeProvider.lightTheme
                          ? Colors.white
                          : Colors.white,
                      fontSize: width < 1200 ? height * 0.010 : height * 0.020,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.0),
                ),
                onPressed: () {
                  Locale localeTr = Locale('tr', 'TR');
                  updateLanguage(localeTr);
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
                      fontSize: width < 1200 ? height * 0.010 : height * 0.020,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.0),
                ),
                onPressed: () {
                  Locale localeTr = Locale('en', 'US');
                  updateLanguage(localeTr);
                  setState(() {
                    isTr = false;
                  });
                }),
        Text("|",
            style: GoogleFonts.montserrat(
                color: _themeProvider.lightTheme ? Colors.white : Colors.white,
                fontSize: width < 1200 ? height * 0.010 : height * 0.020,
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
                      fontSize: width < 1200 ? height * 0.010 : height * 0.020,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.0),
                ),
                onPressed: () {
                  Locale localeTr = Locale('en', 'US');
                  updateLanguage(localeTr);
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
                      fontSize: width < 1200 ? height * 0.010 : height * 0.020,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.0),
                ),
                onPressed: () {
                  Locale localeTr = Locale('tr', 'TR');
                  updateLanguage(localeTr);
                  setState(() {
                    isTr = true;
                  });
                }),
      ],
    );
  }
}
