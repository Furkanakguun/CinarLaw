import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class PublicationsListDesktop extends StatefulWidget {
  const PublicationsListDesktop({Key key}) : super(key: key);

  @override
  _PublicationsListDesktopState createState() =>
      _PublicationsListDesktopState();
}

class _PublicationsListDesktopState extends State<PublicationsListDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColorWhite,
      body: Padding(
        padding: width < 1200
            ? EdgeInsets.only(top: 3.0, bottom: 3)
            : EdgeInsets.only(top: 16.0, bottom: 16),
        child: Center(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Column(
              children: [
                Container(
                  width: width < 1200 ? width * 0.80 : width * 0.60,
                  height: width < 1200 ? height * 0.10 : 100,
                  //decoration: BoxDecoration(border: Border),
                  color: Colors.transparent,
                  child: Center(
                    child: AdaptiveText(
                      "ÇINAR ACADEMIA ",
                      style: GoogleFonts.brygada1918(
                        fontSize: height * 0.04,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        width: width < 1200 ? width * 0.80 : width * 0.18,
                        height: width < 1200 ? height * 0.10 : 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        width: width < 1200 ? width * 0.80 : width * 0.18,
                        height: width < 1200 ? height * 0.10 : 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.white,
                        width: width < 1200 ? width * 0.80 : width * 0.18,
                        height: width < 1200 ? height * 0.10 : 250,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: kPublicsTitles.length,
                    itemBuilder: (context, index) {
                      return PublicationListCard(
                        cardHeight: width < 1200 ? 200 : 250,
                        cardWidth: width < 1200 ? 100 : 150,
                        // cardWidth: width < 1200 ? width * 0.50 : width /3,
                        // cardHeight: width < 1200 ? height * 0.50 : height / 10,
                        //backImage: kPublicsBanner[index],
                        // projectIcon: kProjectsIcons[index],
                        title: kPublicsTitles[index],
                        description: kPublicsDescriptions[index],
                        //projectLink: kPublicsLinks[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
