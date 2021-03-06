import 'package:cinarlaw/sections/contact/contactDesktop.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publications/publication.dart';
import 'package:cinarlaw/sections/publicationsList/publications_list.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listArticle.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/entranceFader.dart';
import '../../constants.dart';
import '../../translation/translation.dart';
import '../mainSection.dart';

class CarrierDesktop extends StatefulWidget {
  const CarrierDesktop({Key key}) : super(key: key);

  @override
  _CarrierDesktopState createState() => _CarrierDesktopState();
}

class _CarrierDesktopState extends State<CarrierDesktop> {
  final List<String> _sectionsName = [
    "ABOUT US",
    "PRACTICE AREAS",
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.phone,
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      //  appBar: AppBar(
      //   iconTheme: IconThemeData(color: Colors.black),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 10),
      //       child: Image.asset(
      //         'assets/cinar_Logo.png',
      //         fit: BoxFit.cover,
      //         height: 100,
      //         width: 180,
      //       ),
      //     ),
      //     SizedBox(
      //       width: MediaQuery.of(context).size.width * 0.05,
      //     )
      //   ],
      // ),
      //drawer: _appBarMobile(),
      body: Padding(
        padding: width < 1200
            ? EdgeInsets.only(top: 0.0, bottom: 3)
            : EdgeInsets.only(top: 0.0, bottom: 0),
        child: Center(
          child: ListView(
            children: [
              upBannerSection(height, width),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width / 12 : width / 4),
                child: Container(
                  width: 300,
                  height: height / 5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Align(
                      //width: width < 1200 ? width * 0.80 : width * 0.45,
                      child: AdaptiveText(
                        CinarTranslations.carrierGiris.tr,
                        style: GoogleFonts.montserrat(
                            fontSize: height * 0.021,
                            color: Colors.grey[500],
                            height: 1.8,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.00),
                  child: Container(
                    color: Colors.white,
                    width: width < 1200 ? width * 0.40 : width * 0.35,
                    height: width < 1200 ? height + 100 : height / 2 + 120,
                    child: width < 1200
                        ? mobileSection(width, height)
                        : desktopSection(width, height),
                  )),
              SizedBox(
                height: 80,
              ),
              FooterBrown()
            ],
          ),
        ),
      ),
    );
  }

  Row desktopSection(double width, double height) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 25.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        width: width < 1200 ? width * 0.40 : width * 0.30,
        height: height / 2 + 120,
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              CinarTranslations.carrierSolBaslik.tr,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: height * 0.022,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Align(
              //width: width < 1200 ? width * 0.80 : width * 0.45,
              child: AdaptiveText(
                CinarTranslations.carrrierSolAciklama1.tr,
                style: GoogleFonts.montserrat(
                    fontSize: height * 0.017,
                    color: Colors.grey[500],
                    height: 1.8,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: AdaptiveText(
                CinarTranslations.carrrierSolAciklama2.tr,
                style: GoogleFonts.montserrat(
                    fontSize: height * 0.017,
                    color: Colors.grey[500],
                    height: 1.8,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 25.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        width: width < 1200 ? width * 0.40 : width * 0.30,
        height: height / 2 + 120,
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              CinarTranslations.carrrierOrtaBaslik.tr,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: height * 0.022,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Align(
              alignment: Alignment.center,
              child: AdaptiveText(
                CinarTranslations.carrrierOrtaAciklama.tr,
                style: GoogleFonts.montserrat(
                    color: Colors.grey[500],
                    fontSize: height * 0.017,
                    height: 1.8,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: AdaptiveText(
          //       "??stanbul: +90 212 963 02 29  ",
          //       style: GoogleFonts.montserrat(
          //           color: Colors.white,
          //           fontSize: height * 0.015,
          //           fontWeight: FontWeight.w300),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: AdaptiveText(
          //       "info@cinarlaw.com ",
          //       style: GoogleFonts.montserrat(
          //           color: Colors.black,
          //           fontSize: height * 0.021,
          //           height: 1.8,
          //           fontWeight: FontWeight.w400),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 25.0,
              offset: Offset(2.0, 2.0),
            ),
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        width: width < 1200 ? width * 0.40 : width * 0.30,
        height: height / 2 + 120,
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              CinarTranslations.carrrierSagBaslik.tr,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: height * 0.022,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Align(
              alignment: Alignment.center,
              child: AdaptiveText(
                CinarTranslations.carrrierSagAciklama.tr,
                style: GoogleFonts.montserrat(
                    fontSize: height * 0.017,
                    color: Colors.grey[500],
                    height: 1.8,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: AdaptiveText(
                //"If you possess the required specifications and talents or if you are enthusiastic and determined to gain these qualifications while working with us. You can send your cv to info@cinarlaw.com for summer internship application.  \n\n",
                "",
                style: GoogleFonts.montserrat(
                    fontSize: height * 0.015,
                    color: Colors.grey[500],
                    height: 1.8,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
        ]),
      ),
    ]);
  }

  ListView mobileSection(double width, double height) {
    return ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 25.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            width: width < 1200 ? width * 0.40 : width * 0.30,
            height: height / 2,
            child: ListView(children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  CinarTranslations.carrierSolBaslik.tr,
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Align(
                  //width: width < 1200 ? width * 0.80 : width * 0.45,
                  child: AdaptiveText(
                    CinarTranslations.carrrierSolAciklama1.tr,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.grey[500],
                        height: 1.8,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: AdaptiveText(
                    CinarTranslations.carrrierSolAciklama2.tr,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.grey[500],
                        height: 1.8,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: AdaptiveText(
              //       "info@cinarlaw.com ",
              //       style: GoogleFonts.montserrat(
              //           color: Colors.black,
              //           fontSize: height * 0.015,
              //           fontWeight: FontWeight.w300),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 25.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            width: width < 1200 ? width * 0.40 : width * 0.30,
            height: height / 2,
            child: ListView(children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  CinarTranslations.carrrierOrtaBaslik.tr,
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Align(
                  alignment: Alignment.center,
                  child: AdaptiveText(
                     CinarTranslations.carrrierOrtaAciklama.tr,
                    style: GoogleFonts.montserrat(
                        color: Colors.grey[500],
                        fontSize: height * 0.015,
                        height: 1.8,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: AdaptiveText(
              //       "??stanbul: +90 212 963 02 29  ",
              //       style: GoogleFonts.montserrat(
              //           color: Colors.white,
              //           fontSize: height * 0.015,
              //           fontWeight: FontWeight.w300),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: AdaptiveText(
                    "info@cinarlaw.com ",
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: height * 0.015,
                        height: 1.8,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 25.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
              borderRadius: BorderRadius.circular(12),
            ),
            width: width < 1200 ? width * 0.40 : width * 0.30,
            height: height / 2,
            child: ListView(children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  CinarTranslations.carrrierSagBaslik.tr,
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: height * 0.025,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Align(
                  alignment: Alignment.center,
                  child: AdaptiveText(
                  CinarTranslations.carrrierSagAciklama.tr,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.grey[500],
                        height: 1.8,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: AdaptiveText(
                    //"If you possess the required specifications and talents or if you are enthusiastic and determined to gain these qualifications while working with us. You can send your cv to info@cinarlaw.com for summer internship application.  \n\n",
                    "",
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.grey[500],
                        height: 1.8,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: AdaptiveText(
              //       "info@cinarlaw.com ",
              //       style: GoogleFonts.montserrat(
              //           color: Colors.black,
              //           fontSize: height * 0.015,
              //           fontWeight: FontWeight.w300),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
        ]);
  }

  Widget upBannerSection(double height, double width) {
    return Stack(children: [
      Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/leydi_adalet.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          height: height * 0.60,
          width: width,
          //color: Colors.yellow),
        ),
      ),
      appBarSection(width)
    ]);
  }

  Row appBarSection(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 55,
          width: width,
          color: Colors.transparent,
          child: _appBarTabDesktop(),
        ),
      ],
    );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      // flexibleSpace: Image(
      //   image: AssetImage('assets/navbar.png'),
      //   fit: BoxFit.cover,
      // ),
      title: MediaQuery.of(context).size.width < 780
          ? NavBarLogo(
              height: 20.0,
            )
          : MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                    builder: (BuildContext context) => MainPage()));
              },
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 18),
                child: Image.asset(
                  'assets/cinar_beyaz-01.png',
                  fit: BoxFit.fitWidth,
                  height: 120,
                  width: 200,
                ),
              ),
            ),
      actions: [
        MediaQuery.of(context).size.width > 760
            ? Container(
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: Colors.black.withOpacity(0.5),
                  onPressed: () => Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PublicationList())),
                  child: Text(
                    CinarTranslations.cinarAkademiMenu.tr,
                    style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.white),
                    // style: TextStyle(
                    //   color:
                    //       themeProvider.lightTheme ? Colors.black : Colors.white,
                    // ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () => Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PublicationList())),
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      CinarTranslations.cinarAkademiMenu.tr,
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
        MediaQuery.of(context).size.width > 760
            ? Container(
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: Colors.black.withOpacity(0.5),
                  onPressed: () => Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              MuseumListDesktop())),
                  child: Text(
                    CinarTranslations.cinarMuzeMenu.tr,
                    style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.white),
                    // style: TextStyle(
                    //   color:
                    //       themeProvider.lightTheme ? Colors.black : Colors.white,
                    // ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index);
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) =>
                            MuseumListDesktop()));
                    //Navigator.pop(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      CinarTranslations.cinarAkademiMenu.tr,
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
        VerticalDivider(
          color: Colors.grey[300],
          thickness: 3,
          indent: 15,
          endIndent: 15,
        ),
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        MediaQuery.of(context).size.width > 760
            ? Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: Colors.black.withOpacity(0.5),
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) => CarrierDesktop()))
                  },
                  child: Text(
                    CinarTranslations.careeeMenu.tr,
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.width * 0.0070,
                      // fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    // style: TextStyle(
                    //   color:
                    //       themeProvider.lightTheme ? Colors.black : Colors.white,
                    // ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index);
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) => CarrierDesktop()));
                    //Navigator.pop(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      CinarTranslations.careeeMenu.tr,
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
        MediaQuery.of(context).size.width > 760
            ? Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: Colors.black.withOpacity(0.5),
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) => ContactDektop()))
                  },
                  child: Text(
                    CinarTranslations.contactMenu.tr,
                    style: GoogleFonts.montserrat(
                      fontSize: MediaQuery.of(context).size.width * 0.0070,
                      // fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    // style: TextStyle(
                    //   color:
                    //       themeProvider.lightTheme ? Colors.black : Colors.white,
                    // ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index);
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) => ContactDektop()));
                    //Navigator.pop(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      CinarTranslations.contactMenu.tr,
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
        Container(
            color: Colors.transparent,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    AntDesign.linkedin_square,
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.0095,
                  ),
                  //iconSize: height,
                  onPressed: () => launchURL(
                      'https://www.linkedin.com/company/cinarlaw/?originalSubdomain=tr'),
                  //hoverColor: kPrimaryColor,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )),
      ],
    );
  }

  Widget _appBarActions(
    String childText,
    int index,
    IconData icon,
  ) {
    return MediaQuery.of(context).size.width > 760
        ? Container(
            color: Colors.transparent,
            padding: const EdgeInsets.all(8.0),
            height: 60.0,
            child: MaterialButton(
              hoverColor: Colors.black.withOpacity(0.5),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/main',
                    arguments: {index.toString()});
                // Navigator.of(context).pushReplacement(new MaterialPageRoute(
                //     builder: (BuildContext context) => MainPage()));
              },
              child: Text(
                index == 0
                    ? CinarTranslations.aboutUsMenu.tr
                    : CinarTranslations.practiceAreasMenu.tr,
                style: GoogleFonts.montserrat(
                  fontSize: MediaQuery.of(context).size.width * 0.0070,
                  //fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
                // style: TextStyle(
                //   color:
                //       themeProvider.lightTheme ? Colors.black : Colors.white,
                // ),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  hoverColor: mainColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index + 1);
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text(
                    index == 0
                        ? CinarTranslations.aboutUsMenu.tr
                        : CinarTranslations.practiceAreasMenu.tr,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    //textAlign: TextAlign.start,
                  ),
                ),
                Divider(color: Colors.brown[200])
              ],
            ),
          );
  }
}
