import 'package:flutter/material.dart';
import 'package:cinarlaw/sections/contact/contactDesktop.dart';
import 'package:cinarlaw/sections/contact/contactMobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactDektop(),
      tablet: ContactDektop(),
      desktop: ContactDektop(),
    );
  }
}
