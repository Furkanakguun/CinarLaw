import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:provider/provider.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final String icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  SocialMediaIconBtn(
      {this.icon, this.socialLink, this.height, this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: IconButton(
        icon: Image.network(
          icon,
          color: _themeProvider.lightTheme ? Colors.white : Colors.white,
        ),
        iconSize: height,
        onPressed: () => launchURL(socialLink),
        hoverColor: kPrimaryColor,
      ),
    );
  }
}
