import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:cinarlaw/widget/projectCard.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioMobileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
           SizedBox(
              height: height * 0.05,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "ABOUT US US",
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
          // CustomSectionSubHeading(
          //     text: "Here are few samples of my previous work :)\n\n"),
          CarouselSlider.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int itemIndex, int i) =>
                Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: ProjectCard(
                cardHeight:  height * 0.3,
                cardWidth:  width * 0.5 ,
                //projectIcon: kProjectsIcons[i],
                backImage: kOurTeamBanner[i],
                projectTitle: kOurTeamTitles[i],
                projectDescription: kOurTeamDescriptions[i],
                projectLink: kOurTeamLinks[i],
              ),
            ),
            options: CarouselOptions(
                height: height * 0.3,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                enlargeCenterPage: true,
                pauseAutoPlayOnTouch: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enableInfiniteScroll: false),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          // OutlinedCustomBtn(
          //     btnText: "See More",
          //     onPressed: () {
          //       //launchURL("https://github.com/mhmzdev");
          //     })
        ],
      ),
    );
  }
}
