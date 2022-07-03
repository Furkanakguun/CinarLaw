import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinarlaw/animations/entranceFader.dart';
import 'package:cinarlaw/sections/Carrier/carrier.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_list.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/translation/translation.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/alertDialog.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class ContactDektop extends StatefulWidget {
  const ContactDektop({Key key}) : super(key: key);

  @override
  _ContactDektopState createState() => _ContactDektopState();
}

class _ContactDektopState extends State<ContactDektop> {
  final List<String> _sectionsName = [
    "ABOUT US",
    "PRACTICE AREAS",
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
    Icons.settings,
    Icons.article,
    Icons.phone,
  ];

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ListView(
            children: [
              upBannerSection(height, width),
            ],
          ),
        ));
  }

  Align sectionTitle(double height) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        CinarTranslations.iletisimUstBaslik.tr,
        style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: height * 0.018,
            fontWeight: FontWeight.w200),
      ),
    );
  }

  Widget upBannerSection(double height, double width) {
    return Stack(children: [
      Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/contact_arka.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          height: height + 130,
          width: width,
          //color: Colors.yellow),
        ),
      ),
      appBarSection(width),

      Padding(
        padding: EdgeInsets.only(top: height / 4 - 120),
        child: sectionTitle(height),
      ),

      Padding(
        padding: EdgeInsets.only(top: height / 4 - 100),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            CinarTranslations.iletisimOrtaBaslik.tr,
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: height * 0.045,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: height / 4 - 50),
        child: IntrinsicHeight(
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
                color: Colors.white,
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
      ),
      Padding(
          padding: EdgeInsets.symmetric(vertical: height / 3),
          child: width < 1200
              ? mobileSection(width, height)
              : desktopSection(width, height)),
      //FooterBlack()
    ]);
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
        height: height / 2,
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
             CinarTranslations.ankaraOfis.tr,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w300),
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
                "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 \n" +
                    "Oran/Çankaya / Ankara ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
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
                "Ankara: +90 312 426 90 22 ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
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
                "info@cinarlaw.com ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              launchURL(
                  "https://www.google.com/maps?z=16&daddr=39.8518066,32.8571376");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 5,
                //width: 60,
                decoration: BoxDecoration(
                  //color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/cinar_ankara.PNG"),
                  ),
                ),
                // width: width < 1200
                //     ? width * 0.60
                //     : width * 0.20,
                //height: height * 0.30,
              ),
            ),
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
             CinarTranslations.istanbulOfis.tr,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w300),
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
                "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5 D:5 \n" +
                    "Maslak / Sarıyer / İstanbul  ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
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
                "İstanbul: +90 212 963 02 29  ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
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
                "info@cinarlaw.com ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => launchURL(
                "https://www.google.com/maps/dir//41.11755,29.015142/@41.1175068,28.9451,12z"),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 5,
                //width: 60,
                decoration: BoxDecoration(
                  //color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/cinar_ist.PNG"),
                  ),
                ),
                // width: width < 1200
                //     ? width * 0.60
                //     : width * 0.20,
                //height: height * 0.30,
              ),
            ),
          ),
        ]),
      ),
    ]);
  }

  Column mobileSection(double width, double height) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
        width: width < 1200 ? width * 0.80 : width * 0.35,
        height: height / 2,
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
             CinarTranslations.ankaraOfis.tr,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w300),
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
                "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 \n" +
                    "Oran/Çankaya / Ankara ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: AdaptiveText(
                "Ankara: +90 312 426 90 22 ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
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
                "info@cinarlaw.com ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height / 5,
              //width: 60,
              decoration: BoxDecoration(
                //color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/cinar_ankara.PNG"),
                ),
              ),
              // width: width < 1200
              //     ? width * 0.60
              //     : width * 0.20,
              //height: height * 0.30,
            ),
          ),
        ]),
      ),
      SizedBox(
        height: 12,
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
        width: width < 1200 ? width * 0.80 : width * 0.25,
        height: height / 2,
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
             CinarTranslations.istanbulOfis.tr,
              style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: height * 0.025,
                  fontWeight: FontWeight.w300),
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
                "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5  D:5 \n" +
                    "Maslak / Sarıyer / İstanbul  ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
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
                "İstanbul: +90 212 963 02 29  ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
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
                "info@cinarlaw.com ",
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: height / 5,
              //width: 60,
              decoration: BoxDecoration(
                //color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/cinar_ist.PNG"),
                ),
              ),
              // width: width < 1200
              //     ? width * 0.60
              //     : width * 0.20,
              //height: height * 0.30,
            ),
          ),
        ]),
      ),
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

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}
