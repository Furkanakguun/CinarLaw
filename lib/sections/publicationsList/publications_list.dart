
import 'package:cinarlaw/sections/publications/mobilePublication.dart';
import 'package:cinarlaw/sections/publications/tabPublication.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listMobile.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

class PublicationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PublicationsListMobile(),
      tablet: PublicationsListDesktop(),
      desktop: PublicationsListDesktop(),
    );
  }
}
