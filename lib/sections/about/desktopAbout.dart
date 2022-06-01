import 'package:cinarlaw/translation/translation.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height + 130,
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
              CinarTranslations.aboutUs.tr,
              style: GoogleFonts.montserrat(
                  color: mainColorWhite,
                  fontSize: height * 0.018,
                  fontWeight: FontWeight.w200),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              CinarTranslations.whoAreWe.tr,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: width * 0.32,
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/about_1.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.32,
                    height: height / 2,
                    child: TextRenderer(
                      child: Text(
                        "\n\n" +
                            CinarTranslations.hakkimizda1.tr +
                            "\n\n" +
                            CinarTranslations.hakkimizda2.tr +
                            "\n\n",
                        style: GoogleFonts.roboto(
                          fontSize: height * 0.018,
                          color: Colors.grey[500],
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.012,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: width * 0.32,
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/about_2.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.32,
                    height: height / 2,
                    child: TextRenderer(
                      child: Text(
                        "\n\n" +
                            CinarTranslations.hakkimizda3.tr +
                            "\n\n" +
                            CinarTranslations.hakkimizda4.tr +
                            "\n\n",
                        style: GoogleFonts.roboto(
                          fontSize: height * 0.018,
                          color: Colors.grey[500],
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
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
