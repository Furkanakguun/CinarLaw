import 'package:cinarlaw/sections/publicationsList/publications_listArticle.dart';
import 'package:cinarlaw/sections/services/service_article.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/customTextHeading.dart';
import 'package:cinarlaw/widget/serviceCard.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cinarlaw/constants.dart';
import 'package:provider/provider.dart';

import '../../translation/translation.dart';
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
      height: height,
      //color: mainColor.withOpacity(0.9),
      color: Colors.white,
      //padding: EdgeInsets.symmetric(horizontal: width * 0.02),
      child: Column(
        children: [
          Stack(children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 16.0, color: Colors.white),
                    ),
                    color: Colors.white,
                  ),
                  height: height * 0.15,
                  width: width,
                ),
                Container(
                    height: height * 0.15, width: width, color: Colors.white),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: (height * 0.010)),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("assets/masa_crop.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: height * 0.25,
                  width: width * 0.70,
                  //color: Colors.yellow),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
               CinarTranslations.servicesGiris.tr,
              style: GoogleFonts.montserrat(
                  color: mainColor.withOpacity(0.9),
                  fontSize: height * 0.040,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice1.tr,
                                    description:
                                        CinarTranslations.practiceDes1.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice1.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice2.tr,
                                    description:
                                        CinarTranslations.practiceDes2.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice2.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice3.tr,
                                    description:
                                        CinarTranslations.practiceDes3.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice3.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice4.tr,
                                    description:
                                        CinarTranslations.practiceDes4.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice4.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice5.tr,
                                    description:
                                        CinarTranslations.practiceDes5.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice5.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice6.tr,
                                    description:
                                        CinarTranslations.practiceDes6.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice6.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice7.tr,
                                    description:
                                        CinarTranslations.practiceDes7.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice7.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice8.tr,
                                    description:
                                        CinarTranslations.practiceDes8.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice8.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice9.tr,
                                    description:
                                        CinarTranslations.practiceDes9.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice9.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice10.tr,
                                    description:
                                        CinarTranslations.practiceDes10.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice10.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ServiceArticle(
                                    title: CinarTranslations.practice11.tr,
                                    description:
                                        CinarTranslations.practiceDes11.tr,
                                    author: "",
                                  ),
                                ),
                                (Route<dynamic> route) => false,
                              )
                              //showOurAreasAlertDialog(context, index)
                            },
                            child: Text(
                              CinarTranslations.practice11.tr,
                              style: GoogleFonts.montserrat(
                                  color: mainColor.withOpacity(0.9),
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w400),
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
                  ],
                ),
              ),
            ],
          ),
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
      ],
    );
  }
}
