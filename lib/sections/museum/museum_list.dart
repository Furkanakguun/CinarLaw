
import 'package:cinarlaw/sections/publications/mobilePublication.dart';
import 'package:cinarlaw/sections/publications/tabPublication.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

import 'museum_listDesktop.dart';

class PublicationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PublicationMobile(),
      tablet: PublicationTab(),
      desktop: MuseumListDesktop(),
    );
  }
}
