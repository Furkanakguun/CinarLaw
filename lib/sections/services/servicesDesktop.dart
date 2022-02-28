import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:cinarlaw/widget/serviceCard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinarlaw/constants.dart';
import 'package:provider/provider.dart';

import '../../widget/alertDialog.dart';

class ServiceDesktop extends StatefulWidget {
  @override
  _ServiceDesktopState createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: mainColor.withOpacity(0.9),
      //padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.05,
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
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.transparent,
                height: height * 0.40,
                width: width * 0.30,
                child: Column(
                  children: [
                    for (int index = 0; index < 7; index++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () =>
                                  {showOurAreasAlertDialog(context, index)},
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
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.transparent,
                height: height * 0.40,
                width: width * 0.30,
                child: Column(
                  children: [
                    for (int index = 7; index < 14; index++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () =>
                                  {showOurAreasAlertDialog(context, index)},
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
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                color: Colors.transparent,
                height: height * 0.40,
                width: width * 0.30,
                child: Column(
                  children: [
                    for (int index = 14; index < 20; index++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () =>
                                  {showOurAreasAlertDialog(context, index)},
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
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 75,
          )
          //CustomSectionSubHeading(
          //text: "I may not be perfect, but I'm surely of some help :)\n\n"),
          // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: List.generate(
          //         5,
          //         (index) => Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //           child: WidgetAnimator(
          //             child: ServiceCard(
          //               cardWidth: width < 1200 ? width * 0.15 : width * 0.12,
          //               cardHeight:
          //                   width < 1200 ? height * 0.25 : height * 0.23,
          //               serviceIcon: kServicesIcons[index],
          //               serviceTitle: kServicesTitles[index],
          //               serviceDescription: kServicesDescriptions[index],
          //               serviceLink: kServicesLinks[index],
          //               cardBack: ServiceCardBackWidget(
          //                   serviceTitle: kServicesTitles[index],
          //                   serviceDesc: kServicesDescriptions[index],
          //                   themeProvider: _themeProvider,
          //                   height: height,
          //                   width: width,
          //                   constantIndex: index),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     SizedBox(
          //       height: height * 0.04,
          //     ),
          //     Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         for (int index = 5; index < 10; index++)
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //             child: WidgetAnimator(
          //               child: ServiceCard(
          //                 cardWidth: width < 1200 ? width * 0.15 : width * 0.12,
          //                 cardHeight:
          //                     width < 1200 ? height * 0.25 : height * 0.23,
          //                 serviceIcon: _themeProvider.lightTheme && index == 4
          //                     ? "assets/services/open_b.png"
          //                     : kServicesIcons[index],
          //                 serviceTitle: kServicesTitles[index],
          //                 serviceDescription: kServicesDescriptions[index],
          //                 serviceLink: kServicesLinks[index],
          //                 cardBack: ServiceCardBackWidget(
          //                     serviceDesc: kServicesDescriptions[index],
          //                     serviceTitle: kServicesTitles[index],
          //                     themeProvider: _themeProvider,
          //                     height: height,
          //                     width: width,
          //                     constantIndex: index),
          //               ),
          //             ),
          //           ),
          //       ],
          //     ),
          //     SizedBox(
          //       height: height * 0.04,
          //     ),
          //     Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         for (int index = 10; index < 15; index++)
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //             child: WidgetAnimator(
          //               child: ServiceCard(
          //                 cardWidth: width < 1200 ? width * 0.15 : width * 0.12,
          //                 cardHeight:
          //                     width < 1200 ? height * 0.25 : height * 0.23,
          //                 serviceIcon: _themeProvider.lightTheme && index == 4
          //                     ? "assets/services/open_b.png"
          //                     : kServicesIcons[index],
          //                 serviceTitle: kServicesTitles[index],
          //                 serviceDescription: kServicesDescriptions[index],
          //                 serviceLink: kServicesLinks[index],
          //                 cardBack: ServiceCardBackWidget(
          //                     serviceDesc: kServicesDescriptions[index],
          //                     serviceTitle: kServicesTitles[index],
          //                     themeProvider: _themeProvider,
          //                     height: height,
          //                     width: width,
          //                     constantIndex: index),
          //               ),
          //             ),
          //           ),
          //       ],
          //     ),
          //     SizedBox(
          //       height: height * 0.04,
          //     ),
          //     Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         for (int index = 15; index < 20; index++)
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 15.0),
          //             child: WidgetAnimator(
          //               child: ServiceCard(
          //                 cardWidth: width < 1200 ? width * 0.15 : width * 0.12,
          //                 cardHeight:
          //                     width < 1200 ? height * 0.25 : height * 0.23,
          //                 serviceIcon: _themeProvider.lightTheme && index == 4
          //                     ? "assets/services/open_b.png"
          //                     : kServicesIcons[index],
          //                 serviceTitle: kServicesTitles[index],
          //                 serviceDescription: kServicesDescriptions[index],
          //                 serviceLink: kServicesLinks[index],
          //                 cardBack: ServiceCardBackWidget(
          //                     serviceDesc: kServicesDescriptions[index],
          //                     serviceTitle: kServicesTitles[index],
          //                     themeProvider: _themeProvider,
          //                     height: height,
          //                     width: width,
          //                     constantIndex: index),
          //               ),
          //             ),
          //           ),
          //       ],
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}

class ServiceCardBackWidget extends StatelessWidget {
  const ServiceCardBackWidget(
      {Key key,
      @required ThemeProvider themeProvider,
      @required this.height,
      @required this.width,
      this.serviceDesc,
      this.serviceTitle,
      this.constantIndex})
      : _themeProvider = themeProvider,
        super(key: key);

  final ThemeProvider _themeProvider;
  final double height;
  final double width;
  final String serviceDesc;
  final String serviceTitle;
  final int constantIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AdaptiveText(
          serviceDesc,
          style: GoogleFonts.montserrat(
            color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            fontSize: height * 0.015,
            letterSpacing: 2.0,
            fontWeight: FontWeight.w400,
            height: width < 900 ? 1.5 : 1.8,
          ),
        ),
        const SizedBox(height: 25.0),
        MaterialButton(
          hoverColor: kPrimaryColor.withAlpha(150),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(color: kPrimaryColor)),
          onPressed: () {
            showOurAreasAlertDialog(context, constantIndex);
          },
          child: Text(
            "Details",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w300,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          width: 250.0,
          height: 0.5,
          color:
              _themeProvider.lightTheme ? Colors.grey[400] : Colors.grey[100],
        ),
        const SizedBox(height: 10.0),
        // SizedBox(
        //   height: 40.0,
        //   width: 150.0,
        //   child: MaterialButton(
        //     color: kPrimaryColor,
        //     onPressed: () => showDialog(
        //         context: context,
        //         builder: (contecxt) => AlertDialog(
        //               backgroundColor: _themeProvider.lightTheme
        //                   ? Colors.white
        //                   : Colors.grey[900],
        //               title: AdaptiveText(
        //                 "Hire Me!",
        //                 style: TextStyle(
        //                     fontSize: 32.0,
        //                     color: _themeProvider.lightTheme
        //                         ? Colors.black
        //                         : Colors.white),
        //               ),
        //               actions: [
        //                 TextButton(
        //                     onPressed: () => Navigator.pop(context),
        //                     child: Text("Back"))
        //               ],
        //               content: Column(
        //                 mainAxisSize: MainAxisSize.min,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   CustomFilledBtn(
        //                     height: 40.0,
        //                     onPressed: () =>
        //                         launchURL("https://wa.me/?text=Hi Hamza!"),
        //                     btnColor: Color(0xff34CB62),
        //                     child: Row(
        //                       mainAxisSize: MainAxisSize.min,
        //                       children: [
        //                         Icon(FontAwesomeIcons.whatsapp),
        //                         const SizedBox(width: 8.0),
        //                         Text("WhatsApp"),
        //                       ],
        //                     ),
        //                   ),
        //                   const SizedBox(height: 20.0),
        //                   CustomFilledBtn(
        //                     height: 40.0,
        //                     onPressed: () => launchURL(
        //                         "https://www.upwork.com/freelancers/~0197b0f6aaeba9675f"),
        //                     btnColor: Color(0xff13A800),
        //                     child: Row(
        //                       mainAxisSize: MainAxisSize.min,
        //                       children: [
        //                         Image.network(
        //                           "https://img.icons8.com/ios-filled/50/000000/upwork.png",
        //                           height: 35.0,
        //                           color: Colors.white,
        //                         ),
        //                         const SizedBox(width: 8.0),
        //                         Text("Upwork"),
        //                       ],
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             )),
        //     child: Text(
        //       "HIRE ME!",
        //       style: TextStyle(
        //           color: Colors.white,
        //           fontWeight: FontWeight.bold,
        //           fontSize: 16.0),
        //     ),
        //   ),
        // )
      ],
    );
  }
}

/*Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                onTap: () => launchURL(kServicesLinks[0]),
                                child: Image.asset(
                                  'assets/services/fiverr.png',
                                  height: 25.0,
                                  color: _themeProvider.lightTheme
                                      ? Colors.black
                                      : Colors.green,
                                ),
                              ),
                              const SizedBox(width: 30.0),
                              InkWell(
                                onTap: () => launchURL(
                                    "https://www.upwork.com/freelancers/~0197b0f6aaeba9675f"),
                                child: Image.network(
                                  "https://img.icons8.com/ios-filled/50/000000/upwork.png",
                                  height: 33.0,
                                  color: _themeProvider.lightTheme
                                      ? Colors.black
                                      : Colors.green,
                                ),
                              ),
                            ],
                          )*/
