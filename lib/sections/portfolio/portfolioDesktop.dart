import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:cinarlaw/widget/projectCard.dart';
import 'package:cinarlaw/constants.dart';
import 'package:google_fonts/google_fonts.dart';

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
          SizedBox(
            height: height * 0.05,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "ABOUT US",
              style: GoogleFonts.montserrat(
                  color: mainColorWhite,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w200),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Who are we?",
              style: GoogleFonts.montserrat(
                  color: kPrimaryColor,
                  fontSize: height * 0.045,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.32,
                  height: 50,
                  child: AdaptiveText(
                    "",
                    style: GoogleFonts.roboto(
                      fontSize: height * 0.018,
                      color: Colors.grey[500],
                      height: 1.5,
                    ),
                  ),
                ),
                VerticalDivider(
                  color: Colors.grey[300],
                  thickness: 3,
                ),
                Container(
                  height: 50,
                  width: width * 0.32,
                  child: AdaptiveText(
                    "",
                    style: GoogleFonts.roboto(
                      fontSize: height * 0.018,
                      color: Colors.grey[500],
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
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
