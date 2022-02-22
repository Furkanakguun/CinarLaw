import 'package:flutter/material.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavBarLogo extends StatelessWidget {
  final double height;
  NavBarLogo({this.height});
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
          MediaQuery.of(context).size.width < 1100 ? 0.0 : 20.0, 20.0, 0, 20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Çınar&Çınar",
            style: GoogleFonts.brygada1918(
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
              fontSize:22
                //       color: kPrimaryColor, fontSize: height * 0.025),
                // ),
                ),
          ),
        ],
      ),
    );
  }
}
