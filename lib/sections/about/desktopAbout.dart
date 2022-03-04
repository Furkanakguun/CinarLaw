import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.018,
      ),
      color: _themeProvider.lightTheme ? Colors.white : mainColorWhite,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
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
            height: height * 0.018,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.32,
                child: Text(
                  "\n\n"
                  "Founded in 1988, çınar & çınar is a full service law offıce that provides high quality professional Services in a broad range of legal practices and industries. Our focus is to provide creative, effıcient and innovative advice that meets our Clients' commercial needs. At çınar & çınar, we dedicate our enthusiasm and our energy to success of our Clients with our proactive, experienced and well-qualifıed team members.\n\n" +
                      "We have a diverse range of Clients from individual entrepreneurs and local companies to leading domestic and international companies, fınancial institutions and governmental authorities. At çınar & çınar, in addition to representing our Clients in complex fınancial and corporate transactions and litigations, we collaborate with leading international law firms and provide cutting edge consultancy services to local and foreign investors on their projects in Turkey\n\n",
                  style: GoogleFonts.roboto(
                    fontSize: height * 0.018,
                    color: Colors.grey[500],
                    height: 1.5,
                  ),
                ),
              ),
              SizedBox(
                width: width * 0.012,
              ),
              Container(
                width: width * 0.32,
                child: Text(
                  "Çınar&Çınar has expertise in a broad spectrum of practice areas including International Commercial Transactions and International Contracts, Corporate Services, Mergers & Acquisitions, Banking & Finance, Labour Law & Employment, Social Security Law, Litigation & Arbitration, Intellectual Property Law Data Protection Law Energy, Natural Resources and Mining Law, Privatization, Criminal Law, Insurance Law, Tax Law, Real Estate Law, Tourism Law, Construction Law, Environmental Law, Inheritance Law, Family Law and Sports Law \n\n" +
                      "Our Office, located at the heart of Turkey, in Ankara, has given us a competitive edge, enabling us to help manage and improve our Clients' business affairs with governmental and political authorities as well as administrative bodies. \n\n",
                  style: GoogleFonts.roboto(
                    fontSize: height * 0.018,
                    color: Colors.grey[500],
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.1,
          ),
        ],
      ),
    );
  }
}
