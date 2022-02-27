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
    return Center(
      child: Image.asset(
        'assets/cinar_Logo.png',
        //fit: BoxFit.fill,
        height: 80,
        width: 160,
      ),
    );
  }
}
