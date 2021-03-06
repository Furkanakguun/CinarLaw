import 'package:flutter/foundation.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/customBtn.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/widget/aboutMeMetaData.dart';
import 'package:cinarlaw/widget/communityIconBtn.dart';
import 'package:cinarlaw/widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class PublicationMobile extends StatelessWidget {
  final _communityLogoHeight = [40.0, 50.0, 20.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.white : mainColor,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Us"),
          //CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(
            height: height * 0.05,
          ),
          Image.asset(
            'assets/about_cinar.PNG',
            //height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     "Who am I?",
          //     style: GoogleFonts.montserrat(
          //       color: kPrimaryColor,
          //       fontSize: height * 0.025,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.028,
          // ),
          // Text(
          //   "I'm Muhammad Hamza, a Flutter developer, Technical blog writer and UI designer.",
          //   style: GoogleFonts.montserrat(
          //     fontSize: height * 0.022,
          //     fontWeight: FontWeight.w400,
          //     color: _themeProvider.lightTheme ? Colors.black : Colors.white,
          //   ),
          // ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "Established by the third generation children of a lawyer family, with a modern perception of our age, ????nar&????nar Law Office provides its Clients high caliber legal consultancy and attorneyship services since 1988. '\n" +
                "????nar&????nar is named after the founding structure of the Firm which was jointly established by Emir and Hakan ????nar. \n" +
                "Emir ????nar founded the Firm in 1988 and she represented her Clients in the cases regarding commercial law, marriage law, banking law and enforcement law; and provided legal consultancy to various companies until M. Hakan ????nar joined her in 1993. She also practiced in the field of the application to the relative of Authorities for the obtainment of investment incentives. \n" +
                "M. Hakan ????nar, who officially joined ????nar&????nar in 1993 previously worked as an in-house counsel of an American Company having expertise within the fields of labor law, contracts law and international disputes. This expertise enabled the transfer of ????nar&????nar services, which were successfully conducted by Emir ????nar, to an international level. Following this transformation, ????nar&????nar???s commercial and international services provided today had begun to be shaped as of 1993.\n" +
                "The main characteristic of ????nar&????nar is that it is comprised of its own apprentice attorneys at law. ????nar&????nar has raised a large number of apprentices until today, and a significant number of cinar&cinar lawyers working presently are chosen among its apprentice attorneys. The other apprentices, who did not continue to work at ????nar&????nar, each proceeded to practice their profession as precious lawyers making ????nar&????nar family proud of them.",
            style: GoogleFonts.roboto(
              fontSize: height * 0.018,
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
          //       bottom: BorderSide(color: Colors.grey[900], width: 1.0),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.015,
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     "Technologies I have worked with:",
          //     style: GoogleFonts.montserrat(
          //         color: kPrimaryColor, fontSize: height * 0.015),
          //   ),
          // ),
          // Row(
          //   children: [
          //     for (int i = 0; i < 4; i++)
          //       ToolTechWidget(
          //         techName: kTools[i],
          //       ),
          //   ],
          // ),
          // Row(
          //   children: [
          //     for (int i = 4; i < 8; i++)
          //       ToolTechWidget(
          //         techName: kTools[i],
          //       ),
          //   ],
          // ),
          // SizedBox(
          //   height: height * 0.015,
          // ),
          // Container(
          //   decoration: BoxDecoration(
          //     border: Border(
          //       bottom: BorderSide(color: Colors.grey[900], width: 1.0),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.02,
          // ),
          // AboutMeMetaData(
          //   data: "Name",
          //   information: "Muhammad Hamza",
          //   alignment: Alignment.centerLeft,
          // ),
          // AboutMeMetaData(
          //   data: "Email",
          //   information: "hamza.6.shakeel@gmail.com",
          //   alignment: Alignment.centerLeft,
          // ),
          // SizedBox(
          //   height: height * 0.015,
          // ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: Row(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: OutlinedCustomBtn(
          //             btnText: "Resume",
          //             onPressed: () {
          //               kIsWeb
          //                   ? html.window.open(
          //                       'https://drive.google.com/uc?export=view&id=1OOdcdGEN3thVvpZ4cl_MM0LT-GCMuLIE',
          //                       "pdf")
          //                   : launchURL(
          //                       'https://drive.google.com/uc?export=view&id=1OOdcdGEN3thVvpZ4cl_MM0LT-GCMuLIE');
          //             }),
          //       ),
          //       Container(
          //         width: width * 0.2,
          //         decoration: BoxDecoration(
          //           border: Border(
          //             bottom: BorderSide(color: Colors.grey[900], width: 2.0),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Row(
          //   children: [
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
    );
  }
}
