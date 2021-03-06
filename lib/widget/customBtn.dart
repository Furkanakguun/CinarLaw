import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OutlinedCustomBtn extends StatelessWidget {
  final String btnText;
  final Function onPressed;

  const OutlinedCustomBtn(
      {Key key, @required this.btnText, @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialButton(
      color: mainColorWhite,
      hoverColor: mainColorWhite.withAlpha(70),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(color: kPrimaryColor)),
      onPressed: onPressed,
      child: Text(
        btnText,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomFilledBtn extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final Function onPressed;
  final Color btnColor;
  const CustomFilledBtn(
      {Key key,
      this.height,
      this.btnColor,
      this.width = 200.0,
      this.onPressed,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        color: btnColor,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
