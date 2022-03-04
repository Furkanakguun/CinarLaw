
import 'package:cinarlaw/sections/museum/museum_lisTab.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'museum_listDesktop.dart';
import 'museum_listMobile.dart';

class MuseumList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MuseumListMobile(),
      tablet: MuseumListTab(),
      desktop: MuseumListDesktop(),
    );
  }
}
