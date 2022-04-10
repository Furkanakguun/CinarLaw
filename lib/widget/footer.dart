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
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.09, 0, 0),
      height: height * 0.25,
      width: width,
      color: _themeProvider.lightTheme ? Colors.white : Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height * 0.30,
            width: width / 2 * (1),
            color: mainColorWhite,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CARRERS",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: width < 1200 ? height * 0.012 : height * 0.022,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:25.0,right: 0.0),
                    child: Text(
                      "Interested in what life at Çınar&Çınar is like ?",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: width < 1200 ? height * 0.014 : height * 0.022,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Follow us and say hello and ask",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: width < 1200 ? height * 0.014 : height * 0.022,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
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
                  ),
                ],
              ),
            ),
          ),
          width< 1200
              ? Container(
                  height: height * 0.30,
                  width: width / 2 * (1),
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: height * 0.30,
                          width: width / 2 * (1) -70,
                          child: TextRenderer(
                            child: AdaptiveText(
                              "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17\n" +
                                  "Oran/Çankaya / Ankara \n\n" +
                                  "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5  D:5\n" +
                                  "Maslak / Sarıyer / İstanbul \n\n" +
                                  "Ankara: +90 312 426 90 22 | İstanbul: +90 212 963 02 29 \n\n" +
                                  "info@cinarlaw.com \n\n\n" +
                                  "",
                              style: GoogleFonts.montserrat(
                                color: _themeProvider.lightTheme
                                    ? Colors.black
                                    : Colors.black,
                                fontSize: width < 1200
                                    ? height * 0.013
                                    : height * 0.015,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 0.0,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              AntDesign.linkedin_square,
                              color: mainColor,
                              size: MediaQuery.of(context).size.width * 0.0115,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              AntDesign.facebook_square,
                              color: mainColor,
                              size: MediaQuery.of(context).size.width * 0.0115,
                            ),
                            // Icon(Icons.facebook, color: mainColor,),
                            //  Icon(Icons.facebook, color: mainColor,),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              : Container(
                  height: height * 0.30,
                  width: width / 2 * (1),
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextRenderer(
                          child: Container(
                            child: AdaptiveText(
                                "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17\n" +
                                    "Oran/Çankaya / Ankara \n\n" +
                                    "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5  D:5\n" +
                                    "Maslak / Sarıyer / İstanbul \n\n" +
                                    "Ankara: +90 312 426 90 22 | İstanbul: +90 212 963 02 29 \n\n" +
                                    "info@cinarlaw.com \n\n\n" +
                                    "",
                                style: GoogleFonts.montserrat(
                                    color: _themeProvider.lightTheme
                                        ? Colors.black
                                        : Colors.black,
                                    fontSize: width < 1200
                                        ? height * 0.010
                                        : height * 0.015,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: 0.0)),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              AntDesign.linkedin_square,
                              color: mainColor,
                              size: MediaQuery.of(context).size.width * 0.0115,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              AntDesign.facebook_square,
                              color: mainColor,
                              size: MediaQuery.of(context).size.width * 0.0115,
                            ),
                            // Icon(Icons.facebook, color: mainColor,),
                            //  Icon(Icons.facebook, color: mainColor,),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  Widget mySign(ThemeProvider _themeProvider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        AdaptiveText(
          "Developed in 💙 with ",
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w300,
            fontSize: 9,
            fontStyle: FontStyle.italic,
            color: _themeProvider.lightTheme ? Colors.black : Colors.white,
          ),
        ),
        InkWell(
          onTap: () => launchURL("https://github.com/Furkanakguun"),
          child: Text(
            "Furkan",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 9,
            ),
          ),
        )
      ],
    );
  }
}
