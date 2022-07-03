import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/translation/translation.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../Carrier/carrier.dart';
import '../contact/contactDesktop.dart';
import '../publicationsList/publications_list.dart';

class ServiceArticle extends StatefulWidget {
  final String title;
  final String description;
  final String author;
  const ServiceArticle({Key key, this.title, this.description, this.author})
      : super(key: key);

  @override
  _ServiceArticleState createState() => _ServiceArticleState();
}

class _ServiceArticleState extends State<ServiceArticle> {
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
      body: Padding(
        padding: width < 1200
            ? EdgeInsets.only(top: 0.0, bottom: 0)
            : EdgeInsets.only(top: 0.0, bottom: 0),
        child: Center(
          child: ListView(
            children: [
              // appBarSection(width),
              upBannerSection(height, width),
              SizedBox(
                height: height * 0.03,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  CinarTranslations.servicesGiris.tr,
                  style: GoogleFonts.montserrat(
                      color: mainColorWhite,
                      fontSize: height * 0.018,
                      fontWeight: FontWeight.w200),
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              titleSection(width, height),
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
                      color: mainColorWhite,
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
                height: 50,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  practiceAreasListSection(width, height),
                  SizedBox(
                    width: 25,
                  ),
                  contentSection(width, height),
                ],
              ),
              SizedBox(
                width: 100,
              ),
              FooterBlack()
            ],
          ),
        ),
      ),
    );
  }

  Container practiceAreasListSection(double width, double height) => Container(
        width: width * 0.25,
        height: height / 2 + 150,
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes1.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes2.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes3.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes4.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes5.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes6.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes7.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes8.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes9.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes10.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
              padding: const EdgeInsets.all(16.0),
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
                            description: CinarTranslations.practiceDes11.tr,
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
                          color: mainColor,
                          fontSize: height * 0.018,
                          fontWeight: FontWeight.w300),
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
            
            // for (int index = 0; index < 11; index++)
            //   Padding(
            //     padding: const EdgeInsets.all(16.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         InkWell(
            //           onTap: () => {
            //             Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                 builder: (context) => ServiceArticle(
            //                   title: kServicesTitles[index],
            //                   description: kServicesLinks[index],
            //                   author: "",
            //                 ),
            //               ),
            //             )
            //             //showOurAreasAlertDialog(context, index)
            //           },
            //           child: Text(
            //             kServicesTitles[index],
            //             style: GoogleFonts.montserrat(
            //                 color: mainColor,
            //                 fontSize: height * 0.018,
            //                 fontWeight: FontWeight.w300),
            //             textAlign: TextAlign.start,
            //           ),
            //         ),
            //         Divider(
            //           color: Colors.grey[300],
            //           thickness: 2,
            //         )
            //       ],
            //     ),
            //   )
          ],
        ),
      );

  Column titleSection(double width, double height) {
    return Column(
      children: [
        Container(
          width: width * 0.55,
          child: Text(
            widget.title,
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: height * 0.030,
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Container contentSection(double width, double height) {
    return Container(
      width: width * 0.55,
      child: Text(
        widget.description,
        style: GoogleFonts.montserrat(
          fontSize: height * 0.018,
          color: Colors.grey[500],
          height: 1.8,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget upBannerSection(double height, double width) {
    return Stack(children: [
      Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/cinar163.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          height: height * 0.40,
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
