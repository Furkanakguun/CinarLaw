import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/aboutMeMetaData.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/communityIconBtn.dart';
import 'package:cinarlaw/widget/customBtn.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:cinarlaw/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: _themeProvider.lightTheme ? Colors.white : mainColorWhite,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Us"),
          //CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/about_cinar.PNG',
                  //height: height * 0.7,
                  //fit: BoxFit.fill,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // AdaptiveText(
                      //   "Who am I?",
                      //   style: GoogleFonts.montserrat(
                      //       color: kPrimaryColor, fontSize: height * 0.025),
                      // ),
                      // SizedBox(
                      //   height: height * 0.03,
                      // ),
                      // AdaptiveText(
                      //   "I'm Muhammad Hamza, a Flutter developer, Technical blog writer and UI designer.",
                      //   style: GoogleFonts.montserrat(
                      //     fontSize: height * 0.035,
                      //     fontWeight: FontWeight.w400,
                      //     color: _themeProvider.lightTheme
                      //         ? Colors.black
                      //         : Colors.white,
                      //   ),
                      // ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Established by the third generation children of a lawyer family, with a modern perception of our age, çınar&çınar Law Office provides its Clients high caliber legal consultancy and attorneyship services since 1988. '\n" +
                            "çınar&çınar is named after the founding structure of the Firm which was jointly established by Emir and Hakan Çınar. \n" +
                            "Emir Çınar founded the Firm in 1988 and she represented her Clients in the cases regarding commercial law, marriage law, banking law and enforcement law; and provided legal consultancy to various companies until M. Hakan Çınar joined her in 1993. She also practiced in the field of the application to the relative of Authorities for the obtainment of investment incentives. \n" +
                            "M. Hakan Çınar, who officially joined çınar&çınar in 1993 previously worked as an in-house counsel of an American Company having expertise within the fields of labor law, contracts law and international disputes. This expertise enabled the transfer of çınar&çınar services, which were successfully conducted by Emir Çınar, to an international level. Following this transformation, çınar&çınar’s commercial and international services provided today had begun to be shaped as of 1993.\n" +
                            "The main characteristic of çınar&çınar is that it is comprised of its own apprentice attorneys at law. çınar&çınar has raised a large number of apprentices until today, and a significant number of cinar&cinar lawyers working presently are chosen among its apprentice attorneys. The other apprentices, who did not continue to work at çınar&çınar, each proceeded to practice their profession as precious lawyers making çınar&çınar family proud of them.",
                        style: GoogleFonts.roboto(
                          fontSize: height * 0.02,
                          color: Colors.grey[500],
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     border: Border(
                      //       bottom:
                      //           BorderSide(color: Colors.grey[800], width: 2.0),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: height * 0.02,
                      // ),
                      // AdaptiveText(
                      //   "Technologies I have worked with:",
                      //   style: GoogleFonts.montserrat(
                      //       color: kPrimaryColor, fontSize: height * 0.018),
                      // ),
                      // Row(
                      //   children: [
                      //     for (int i = 0; i < kTools.length; i++)
                      //       ToolTechWidget(
                      //         techName: kTools[i],
                      //       ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: height * 0.02,
                      // ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //     border: Border(
                      //       bottom:
                      //           BorderSide(color: Colors.grey[800], width: 2.0),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: height * 0.025,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     AboutMeMetaData(
                      //       data: "Name",
                      //       information: "Muhammad Hamza",
                      //     ),
                      //     AboutMeMetaData(
                      //       data: "Email",
                      //       information: "hamza.6.shakeel@gmail.com",
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: height * 0.02,
                      // ),
                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: OutlinedCustomBtn(
                      //         onPressed: () {
                      //           html.window.open(
                      //               'https://drive.google.com/file/d/1GF-wtbu2ob_Uxhw2In2QA8QiYi3XjCj1/view?usp=sharing',
                      //               "pdf");
                      //         },
                      //         btnText: "Resume",
                      //       ),
                      //     ),
                      //     Container(
                      //       width: width * 0.05,
                      //       decoration: BoxDecoration(
                      //         border: Border(
                      //           bottom: BorderSide(
                      //               color: Colors.grey[900], width: 2.0),
                      //         ),
                      //       ),
                      //     ),
                      //     for (int i = 0; i < kCommunityLogo.length; i++)
                      //       CommunityIconBtn(
                      //         icon: kCommunityLogo[i],
                      //         link: kCommunityLinks[i],
                      //         height: _communityLogoHeight[i],
                      //       ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
