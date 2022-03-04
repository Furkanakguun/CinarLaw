import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publications/publication.dart';
import 'package:cinarlaw/sections/publicationsList/publications_list.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listArticle.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/entranceFader.dart';
import '../../constants.dart';
import '../mainSection.dart';

class CarrierDesktop extends StatefulWidget {
  const CarrierDesktop({Key key}) : super(key: key);

  @override
  _CarrierDesktopState createState() => _CarrierDesktopState();
}

class _CarrierDesktopState extends State<CarrierDesktop> {
  final List<String> _sectionsName = [
    "ABOUT",
    "PRACTICE AREAS",
    "OUR TEAM",
    "CONTACT",
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 10),
            child: Image.asset(
              'assets/cinar_Logo.png',
              fit: BoxFit.cover,
              height: 100,
              width: 180,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          )
        ],
      ),
      drawer: _appBarMobile(),
      body: Padding(
        padding: width < 1200
            ? EdgeInsets.only(top: 0.0, bottom: 3)
            : EdgeInsets.only(top: 0.0, bottom: 16),
        child: Center(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 55,
                    width: width,
                    color: Colors.white,
                    child: _appBarTabDesktop(),
                  ),
                ],
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/museum_stack.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: height * 0.20,
                  width: width,
                  //color: Colors.yellow),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "CAREER",
                  style: GoogleFonts.montserrat(
                      color: mainColorWhite,
                      fontSize: height * 0.018,
                      fontWeight: FontWeight.w200),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Attorneyship Application",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: height * 0.030,
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
                height: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width < 1200 ? width * 0.80 : width * 0.45,
                    child: AdaptiveText(
                      "çınar&çınar law firm chooses its members with highest standards and only prefers working with professionals specialized in their fields. We offer a wide variety of services to the leading Turkish and international companies. This also enables çınar&çınar professionals to gain experience in many exciting and various tasks and projects. Here, within our family; every new task you’ll take on will return to you as a rise in your career and a satisfying feeling of success. relative dressing code and behavioural requirements arisen from the necessities of their professions. You can send your cv to info@cinarlaw.com for attorneyship application.",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.013,
                        color: Colors.grey[500],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.012,
                  ),
                  Container(
                    width: width < 1200 ? width * 0.80 : width * 0.45,
                    child: AdaptiveText(
                      "Applicants must be consistent, disciplined and have a team spirit. It is also expected from the applicants, to act in accordance with the \n\n",
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.013,
                        color: Colors.grey[500],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Container(
                width: width < 1200 ? width * 0.80 : width * 0.45,
                height: 240,
                color: Colors.black,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Legal Internship Application",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: height * 0.030,
                              fontWeight: FontWeight.w500),
                        ),
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
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                              "The application shall send their applications to info@cinarlaw.com",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: height * 0.013,
                            height: 1.5,
                          ),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                width: width < 1200 ? width * 0.80 : width * 0.45,
                child: Column(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Summer Internship Application",
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: height * 0.030,
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
                    height: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width < 1200 ? width * 0.80 : width * 0.45,
                        child: AdaptiveText(
                          "Our firm offers summer internship opportunities to the apprentice attorneys at Law. Applicants must be consistent, disciplined and have a team spirit. It is also expected from the applicants, to act in accordance with the relative dressing code and behavioural requirements arisen from the necessities of their professions.",
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.013,
                            color: Colors.grey[500],
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.012,
                      ),
                      Container(
                        width: width < 1200 ? width * 0.80 : width * 0.45,
                        child: AdaptiveText(
                          "If you possess the required specifications and talents or if you are enthusiastic and determined to gain these qualifications while working with us. You can send your cv to info@cinarlaw.com for summer internship application.  \n\n",
                          style: GoogleFonts.montserrat(
                            fontSize: height * 0.013,
                            color: Colors.grey[500],
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBarTabDesktop() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      // flexibleSpace: Image(
      //   image: AssetImage('assets/navbar.png'),
      //   fit: BoxFit.cover,
      // ),
      title: MediaQuery.of(context).size.width < 780
          ? NavBarLogo(
              height: 20.0,
            )
          : InkWell(
            onTap: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
            },
            child: Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 18),
                child: Image.asset(
                  'assets/cinar_Logo.png',
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
                  hoverColor: kPrimaryColor,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PublicationList(),
                    ),
                  ),
                  child: Text(
                    "ÇINAR ACADEMIA",
                    style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: mainColorWhite),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationList(),
                      ),
                    );
                    //Navigator.pop(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      "Çınar Academia",
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
                  hoverColor: kPrimaryColor,
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MuseumListDesktop(),
                    ),
                  ),
                  child: Text(
                    "ÇINAR MUSEUM",
                    style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: mainColorWhite),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MuseumListDesktop(),
                      ),
                    );
                    //Navigator.pop(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      "Çınar Museum",
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
        MediaQuery.of(context).size.width > 760
            ? EntranceFader(
                offset: Offset(0, -10),
                delay: Duration(milliseconds: 100),
                duration: Duration(milliseconds: 250),
                child: Container(
                  color: mainColorWhite,
                  padding: const EdgeInsets.all(8.0),
                  height: 60.0,
                  child: MaterialButton(
                    hoverColor: kPrimaryColor,
                    onPressed: () => {},
                    child: Text(
                      "CAREER",
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
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationList(),
                      ),
                    );
                    //Navigator.pop(context);
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.book,
                      color: kPrimaryColor,
                    ),
                    title: Text(
                      "CAREER",
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
            color: mainColorWhite,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                EntranceFader(
                  offset: Offset(0, -10),
                  delay: Duration(milliseconds: 100),
                  duration: Duration(milliseconds: 250),
                  child: IconButton(
                    icon: Icon(
                      AntDesign.linkedin_square,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width * 0.0095,
                    ),
                    //iconSize: height,
                    onPressed: () => launchURL('https://www.linkedin.com/company/cinarlaw/?originalSubdomain=tr'),
                    //hoverColor: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ))
      ],
    );
  }
    Widget _appBarMobile() {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBarLogo(
                height: 28,
              ),
              Divider(
                color: Colors.grey[200],
              ),
              for (int i = 0; i < _sectionsName.length; i++)
                _appBarActions(_sectionsName[i], i, _sectionsIcons[i]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: mainColorWhite.withAlpha(70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: kPrimaryColor)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationList(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Entypo.open_book,
                      color: mainColorWhite,
                    ),
                    title: Text(
                      "Çınar ACADEMIA",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: mainColorWhite.withAlpha(70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: kPrimaryColor)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MuseumListDesktop(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      MaterialCommunityIcons.leaf_maple,
                      color: mainColorWhite,
                    ),
                    title: Text(
                      "Çınar MUSEUM",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _appBarActions(
    String childText,
    int index,
    IconData icon,
  ) {
    return MediaQuery.of(context).size.width > 760
        ? Container(
            color: mainColorWhite,
            padding: const EdgeInsets.all(8.0),
            height: 60.0,
            child: MaterialButton(
              hoverColor: kPrimaryColor,
              onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
              },
              child: Text(
                childText,
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
                     Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                  },
                  child: Text(
                    childText,
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
