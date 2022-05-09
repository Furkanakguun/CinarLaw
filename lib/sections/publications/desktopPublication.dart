import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/sections/publicationsList/publications_list.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/alertDialog.dart';
import 'package:cinarlaw/widget/publication_card.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/widget/customBtn.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';

class PublicationDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\n News&Publications"),
          // CustomSectionSubHeading(
          //     text: "Here are few samples of my previous work :)\n\n"),
          SizedBox(
            height: width > 1200 ? height * 0.35 : width * 0.21,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: PublicationCard(
                    cardWidth: width < 1200 ? width * 0.15 : width * 0.15,
                    cardHeight: width < 1200 ? height * 0.27 : height * 0.05,
                    //backImage: kPublicsBanner[index],
                    // projectIcon: kProjectsIcons[index],
                    title: kPublicsTitles[index],
                    description: kPublicsDescriptions[index],
                    //projectLink: kPublicsLinks[index],
                  ),
                );
              },
              itemCount: 6,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          OutlinedCustomBtn(
              btnText: "See More",
              onPressed: () {
                //showPublicationAlertDialog(context);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PublicationsListDesktop(),
                  ),
                  (Route<dynamic> route) => false,
                );
                //launchURL("https://github.com/mhmzdev");
              })
        ],
      ),
    );
  }
}
