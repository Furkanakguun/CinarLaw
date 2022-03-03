import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinarlaw/widget/alertDialog.dart';
import 'package:cinarlaw/widget/customBtn.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/adaptiveText.dart';

class ServiceMobile extends StatefulWidget {
  @override
  State<ServiceMobile> createState() => _ServiceMobileState();
}

class _ServiceMobileState extends State<ServiceMobile> {
  bool more1 = false;

  bool more2 = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: mainColor.withOpacity(0.9),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "OUR PRACTICE AREAS",
              style: GoogleFonts.montserrat(
                  color: mainColorWhite.withOpacity(0.9),
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w200),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Why  Çınar&Çınar",
              style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: height * 0.035,
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
          for (int index = 0; index < 7; index++)
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => {showOurAreasAlertDialogMobile(context, index)},
                    child: Text(
                      kServicesTitles[index],
                      style: GoogleFonts.montserrat(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w200),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    thickness: 2,
                  )
                ],
              ),
            ),

          for (int index = 7; index < 14; index++)
            more1
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () =>
                              {showOurAreasAlertDialogMobile(context, index)},
                          child: Text(
                            kServicesTitles[index],
                            style: GoogleFonts.montserrat(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        )
                      ],
                    ),
                  )
                : Container(),

          for (int index = 14; index < 21; index++)
            more2
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () =>
                              {showOurAreasAlertDialogMobile(context, index)},
                          child: Text(
                            kServicesTitles[index],
                            style: GoogleFonts.montserrat(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Divider(
                          color: Colors.grey[300],
                          thickness: 2,
                        )
                      ],
                    ),
                  )
                : Container(),

          !more1
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    // width: 180,
                    // height: 38,
                    child: MaterialButton(
                      color: mainColorWhite,
                      hoverColor: mainColorWhite.withAlpha(70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        //side: BorderSide(color: kPrimaryColor),
                      ),
                      onPressed: () {
                        //Navigator.pop(context);
                        setState(() {
                          more1 = true;
                        });
                      },
                      child: Text(
                        "SEE MORE",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
          more1 && !more2
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    // width: 180,
                    // height: 38,
                    child: MaterialButton(
                      color: mainColorWhite,
                      hoverColor: mainColorWhite.withAlpha(70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        //side: BorderSide(color: kPrimaryColor),
                      ),
                      onPressed: () {
                        //Navigator.pop(context);
                        setState(() {
                          more2 = true;
                        });
                      },
                      child: Text(
                        "SEE MORE",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
          // CustomSectionSubHeading(
          //     text: "I may not be perfect, but I'm surely of some help :)\n\n"),
          // CarouselSlider.builder(
          //   itemCount: kServicesIcons.length,
          //   itemBuilder: (BuildContext context, int itemIndex, int i) =>
          //       Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 10.0),
          //     child: ServiceCard(
          //       cardWidth: width < 650 ? width * 0.5 : width * 0.5,
          //       cardHeight: width < 650 ? width * 0.25 : width * 0.25,
          //       serviceIcon: kServicesIcons[i],
          //       serviceTitle: kServicesTitles[i],
          //       serviceDescription: kServicesDescriptions[i],
          //       serviceLink: kServicesLinks[i],
          //       cardBack: ServiceCardBackWidget(
          //         serviceTitle: kServicesTitles[i],
          //         serviceDesc: kServicesDescriptions[i],
          //         themeProvider: _themeProvider,
          //         height: height,
          //         width: width,
          //         constantIndex: i,
          //       ),
          //     ),
          //   ),
          //   options: CarouselOptions(
          //       height: width < 450 ? height * 0.25 : height * 0.25,
          //       autoPlay: true,
          //       autoPlayInterval: Duration(seconds: 5),
          //       enlargeCenterPage: true,
          //       autoPlayCurve: Curves.fastOutSlowIn,
          //       autoPlayAnimationDuration: Duration(milliseconds: 800),
          //       enableInfiniteScroll: false),
          // ),
          !more1 || !more2 ? Container(
            height: 40,
            decoration: new BoxDecoration(
              color: mainColor.withOpacity(0.05), //background color of box
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 25.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
            ),
          ): Container()
          // Divider(
          //   color: Colors.grey[300],
          //   thickness: 1,
          //   indent: 40,
          //   endIndent: 40,
          // )
        ],
      ),
    );
  }
}
