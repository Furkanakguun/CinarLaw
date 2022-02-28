import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';

import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
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
          SizedBox(
            height: height * 0.028,
          ),
          // Text(
          //   "I'm Furkan Akgun, a Flutter developer, Technical blog writer and UI designer.",
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
            "Founded in 1988, çınar & çınar is a full service law offıce that provides high quality professional Services in a broad range of legal practices and industries. Our focus is to provide creative, effıcient and innovative advice that meets our Clients' commercial needs. At çınar & çınar, we dedicate our enthusiasm and our energy to success of our Clients with our proactive, experienced and well-qualifıed team members.\n\n" +
                "We have a diverse range of Clients from individual entrepreneurs and local companies to leading domestic and international companies, fınancial institutions and governmental authorities. At çınar & çınar, in addition to representing our Clients in complex fınancial and corporate transactions and litigations, we collaborate with leading international law firms and provide cutting edge consultancy services to local and foreign investors on their projects in Turkey\n\n",
            style: GoogleFonts.roboto(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Divider(
            indent: 40, // empty space to the leading edge of divider.
            endIndent: 40, // empty space to the trailing edge of the divider.
            color: Colors.grey[300],
            thickness: 1,
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Text(
            "çınar & çınar has expertise in a broad spectrum of practice areas including International Commercial Transactions and International Contracts, Corporate Services, Mergers & Acquisitions, Banking & Finance, Labour Law & Employment, Social Security Law, Litigation & Arbitration, Intellectual Property Law Data Protection Law Energy, Natural Resources and Mining Law, Privatization, Criminal Law, Insurance Law, Tax Law, Real Estate Law, Tourism Law, Construction Law, Environmental Law, Inheritance Law, Family Law and Sports Law \n\n" +
                "Our Offıce, located at the heart of Turkey, in Ankara, has given us a competitive edge, enabling us to help manage and improve our Clients' business affairs with governmental and political authorities as well as administrative bodies.\n\n" +
                "In çınar & çınar we always establish a close working relationship with our Clients. We are committed to serving and protecting our Clients' interests in today's ever-changing economical and legal environment",
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
