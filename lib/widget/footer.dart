import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: height * 0.25,
      width: width,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width < 1200 ? width / 8 : width / 4,
            ),
            //tour(height),
            AdaptiveText(
              "ANKARA  ",
              style: GoogleFonts.montserrat(
                  fontSize: width < 1200 ? height * 0.025 : height * 0.035,
                  fontWeight: FontWeight.w300,
                  color: mainColor,
                  letterSpacing: 0.0),
            ),
            TextRenderer(
              child: AdaptiveText(
                width < 1200
                    ? "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 \n" +
                        "Oran/Çankaya " +
                        "Tel: +90 312 426 90 22 "
                    : "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 " +
                        "Oran/Çankaya " +
                        "Tel: +90 312 426 90 22 ",
                style: GoogleFonts.montserrat(
                  color: mainColor,
                  fontSize: width < 1200 ? height * 0.012 : height * 0.015,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width < 1200 ? width / 8 : width / 4,
            ),
            AdaptiveText(
              "İSTANBUL",
              style: GoogleFonts.montserrat(
                  fontSize: width < 1200 ? height * 0.025 : height * 0.035,
                  fontWeight: FontWeight.w300,
                  color: mainColor,
                  letterSpacing: 0.0),
            ),
            TextRenderer(
              child: AdaptiveText(
                width < 1200
                    ? "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5 D:5\n" +
                        "Maslak / Sarıyer " +
                        "Tel: +90 212 963 02 29 "
                    : "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5  D:5  " +
                        "Maslak / Sarıyer " +
                        "Tel: +90 212 963 02 29 ",
                style: GoogleFonts.montserrat(
                  color: mainColor,
                  fontSize: width < 1200 ? height * 0.012 : height * 0.015,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        AdaptiveText(
          "info@cinarlaw.com",
          style: GoogleFonts.montserrat(
              fontSize: width < 1200 ? height * 0.018 : height * 0.018,
              fontWeight: FontWeight.w300,
              color: mainColor,
              letterSpacing: 0.0),
        ),
      ]),
    );
  }
}

class FooterBlack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.black,
      height: height * 0.25,
      width: width,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width < 1200 ? width / 8 : width / 4,
            ),
            //tour(height),
            AdaptiveText(
              "ANKARA  ",
              style: GoogleFonts.montserrat(
                  fontSize: width < 1200 ? height * 0.025 : height * 0.035,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 0.0),
            ),
            TextRenderer(
              child: AdaptiveText(
                width < 1200
                    ? "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 \n" +
                        "Oran/Çankaya " +
                        "Tel: +90 312 426 90 22 "
                    : "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 " +
                        "Oran/Çankaya " +
                        "Tel: +90 312 426 90 22 ",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: width < 1200 ? height * 0.012 : height * 0.015,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width < 1200 ? width / 8 : width / 4,
            ),
            AdaptiveText(
              "İSTANBUL",
              style: GoogleFonts.montserrat(
                  fontSize: width < 1200 ? height * 0.025 : height * 0.035,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 0.0),
            ),
            TextRenderer(
              child: AdaptiveText(
                width < 1200
                    ? "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5 D:5\n" +
                        "Maslak / Sarıyer " +
                        "Tel: +90 212 963 02 29 "
                    : "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5  D:5  " +
                        "Maslak / Sarıyer " +
                        "Tel: +90 212 963 02 29 ",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: width < 1200 ? height * 0.012 : height * 0.015,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        AdaptiveText(
          "info@cinarlaw.com",
          style: GoogleFonts.montserrat(
              fontSize: width < 1200 ? height * 0.018 : height * 0.018,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              letterSpacing: 0.0),
        ),
      ]),
    );
  }

  InkWell tour(double height) {
    return InkWell(
      onTap: () => launchURL(
          "https://tourmake.it/en/tour/0d44de8dd624c3eb54adc876ab0468fe"),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 32,
          ),
          SizedBox(
            width: 7,
          ),
          TextRenderer(
            child: Text(
              "ÇINAR 360 \n" + "OFFICE TOUR",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w200),
            ),
          ),
        ],
      ),
    );
  }
}

class FooterBrown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: mainColor,
      height: height * 0.25,
      width: width,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width < 1200 ? width / 8 : width / 4,
            ),
            //tour(height),
            AdaptiveText(
              "ANKARA  ",
              style: GoogleFonts.montserrat(
                  fontSize: width < 1200 ? height * 0.025 : height * 0.035,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 0.0),
            ),
            TextRenderer(
              child: AdaptiveText(
                width < 1200
                    ? "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 \n" +
                        "Oran/Çankaya " +
                        "Tel: +90 312 426 90 22 "
                    : "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 " +
                        "Oran/Çankaya " +
                        "Tel: +90 312 426 90 22 ",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: width < 1200 ? height * 0.012 : height * 0.015,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width < 1200 ? width / 8 : width / 4,
            ),
            AdaptiveText(
              "İSTANBUL",
              style: GoogleFonts.montserrat(
                  fontSize: width < 1200 ? height * 0.025 : height * 0.035,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 0.0),
            ),
            TextRenderer(
              child: AdaptiveText(
                width < 1200
                    ? "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5 D:5\n" +
                        "Maslak / Sarıyer " +
                        "Tel: +90 212 963 02 29 "
                    : "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5  D:5  " +
                        "Maslak / Sarıyer " +
                        "Tel: +90 212 963 02 29 ",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: width < 1200 ? height * 0.012 : height * 0.015,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        AdaptiveText(
          "info@cinarlaw.com",
          style: GoogleFonts.montserrat(
              fontSize: width < 1200 ? height * 0.018 : height * 0.018,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              letterSpacing: 0.0),
        ),
      ]),
    );
  }

  InkWell tour(double height) {
    return InkWell(
      onTap: () => launchURL(
          "https://tourmake.it/en/tour/0d44de8dd624c3eb54adc876ab0468fe"),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 32,
          ),
          SizedBox(
            width: 7,
          ),
          TextRenderer(
            child: Text(
              "ÇINAR 360 \n" + "OFFICE TOUR",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w200),
            ),
          ),
        ],
      ),
    );
  }
}
