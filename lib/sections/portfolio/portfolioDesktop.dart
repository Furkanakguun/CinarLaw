import 'package:flutter/material.dart';
import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:cinarlaw/widget/projectCard.dart';
import 'package:cinarlaw/constants.dart';

class PortfolioDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController(
      initialScrollOffset: 5, // or whatever offset you wish
      keepScrollOffset: true,
    );
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.08, vertical: height * 0.02),
      child: Column(
        children: [
          CustomSectionHeading(text: "\nOur Team"),
          // CustomSectionSubHeading(
          //     text: "Here are few samples of my previous work :)\n\n"),
          SizedBox(
            height: width > 1200 ? height * 0.30 : width * 0.14,
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
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.15 : width * 0.15,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                    backImage: kOurTeamBanner[index],
                    // projectIcon: kProjectsIcons[index],
                    projectTitle: kOurTeamTitles[index],
                    projectDescription: kOurTeamDescriptions[index],
                    projectLink: kOurTeamLinks[index],
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            height: width > 1200 ? height * 0.30 : width * 0.14,
            child: ListView.separated(
              controller: scrollController,
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
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.15 : width * 0.15,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                    backImage: kOurTeamBanner[5 + index],
                    // projectIcon: kProjectsIcons[index],
                    projectTitle: kOurTeamTitles[5 + index],
                    projectDescription: kOurTeamDescriptions[5 + index],
                    projectLink: kOurTeamLinks[5 + index],
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          // OutlinedCustomBtn(
          //     btnText: "See More",
          //     onPressed: () {
          //       launchURL("https://github.com/mhmzdev");
          //     })
        ],
      ),
    );
  }
}
