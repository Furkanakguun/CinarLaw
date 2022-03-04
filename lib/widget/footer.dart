import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.25,
      width: width,
      color: _themeProvider.lightTheme ? Colors.white : Colors.grey[900],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height * 0.30,
            width: width / 5 * (2),
            color: Colors.grey[600],
            child: Center(
              child: InkWell(
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
                    Text(
                      "ÇINAR 360 \n" + "OFFICE TOUR",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.30,
            width: width / 5 * (3),
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, top: 40, bottom: 18),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AdaptiveText(
                      "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17\n\n" +
                          "Oran/Çankaya / Ankara \n\n" +
                          "Ankara: +90 312 426 90 22 \n\n\n"+
                          "" ),
                  AdaptiveText(
                      "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5  D:5\n\n" +
                          "Maslak / Sarıyer / İstanbul \n\n" +
                          "İstanbul: +90 212 963 02 29 \n\n\n" +
                          "info@cinarlaw.com"),
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
