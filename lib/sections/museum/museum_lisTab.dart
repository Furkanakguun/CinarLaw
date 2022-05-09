import 'package:cinarlaw/animations/entranceFader.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import 'museum_list.dart';

class MuseumListTab extends StatefulWidget {
  const MuseumListTab({Key key}) : super(key: key);

  @override
  _MuseumListTabState createState() => _MuseumListTabState();
}

class _MuseumListTabState extends State<MuseumListTab> {
  final List<String> _sectionsName = [
    "ABOUT US",
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
                  height: height * 0.25,
                  width: width,
                  //color: Colors.yellow),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/cinar_law_museum_logo.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                height: 70,
                width: width,
                //color: Colors.yellow),
              ),
              SizedBox(
                height: 7,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Our past is our future",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: height * 0.045,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.05) : width * (0.20)),
                child: Row(
                  children: [
                    Column(children: [
                      Container(
                        width: width < 1200 ? width * 0.60 : width * 0.30,
                        height: height * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("assets/museum/museum_1.jpg"),
                            alignment: FractionalOffset.center,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: width < 1200 ? width * 0.60 : width * 0.30,
                        color: Colors.black.withOpacity(0.1),
                        height: 100,
                        child: Text(
                          'TEXT',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ]),
                    SizedBox(
                      width: 12,
                    ),
                    Column(children: [
                      Container(
                        width: width < 1200 ? width * 0.60 : width * 0.30,
                        height: height * 0.40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("assets/museum/museum_1.jpg"),
                            alignment: FractionalOffset.center,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: width < 1200 ? width * 0.60 : width * 0.30,
                        color: Colors.black.withOpacity(0.1),
                        height: 100,
                        child: Text(
                          'TEXT',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.35)),
                child: Column(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.40,
                    height: height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/museum/museum_2.jpg"),
                        alignment: FractionalOffset.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.40,
                      color: Colors.black.withOpacity(0.1),
                      height: 100,
                      child: Text(
                        'TEXT',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.35)),
                child: Column(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.40,
                    height: height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/museum/museum_3.jpg"),
                        alignment: FractionalOffset.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.40,
                      color: Colors.black.withOpacity(0.1),
                      height: 100,
                      child: Text(
                        'TEXT',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.35)),
                child: Column(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.40,
                    height: height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/museum/museum_4.jpg"),
                        alignment: FractionalOffset.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.40,
                      color: Colors.black.withOpacity(0.1),
                      height: 100,
                      child: Text(
                        'TEXT',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.35)),
                child: Column(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.40,
                    height: height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/museum/museum_5.jpg"),
                        alignment: FractionalOffset.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.40,
                      color: Colors.black.withOpacity(0.1),
                      height: 100,
                      child: Text(
                        'TEXT',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.35)),
                child: Column(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.40,
                    height: height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/museum/museum_6.jpg"),
                        alignment: FractionalOffset.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.40,
                      color: Colors.black.withOpacity(0.1),
                      height: 100,
                      child: Text(
                        'TEXT',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.35)),
                child: Column(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.40,
                    height: height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/museum/museum_7.jpg"),
                        alignment: FractionalOffset.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.40,
                      color: Colors.black.withOpacity(0.1),
                      height: 100,
                      child: Text(
                        'TEXT',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.35)),
                child: Column(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.40,
                    height: height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/museum/museum_8.jpg"),
                        alignment: FractionalOffset.center,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.40,
                      color: Colors.black.withOpacity(0.1),
                      height: 100,
                      child: Text(
                        'TEXT',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
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
          ? EntranceFader(
              duration: Duration(milliseconds: 250),
              offset: Offset(0, -10),
              delay: Duration(seconds: 3),
              child: NavBarLogo(
                height: 20.0,
              ))
          : Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10, bottom: 18),
              child: Image.asset(
                'assets/cinar_Logo.png',
                fit: BoxFit.fitWidth,
                height: 120,
                width: 200,
              ),
            ),
      actions: [
        MediaQuery.of(context).size.width > 760
            ? EntranceFader(
                offset: Offset(0, -10),
                delay: Duration(milliseconds: 100),
                duration: Duration(milliseconds: 250),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 60.0,
                  child: MaterialButton(
                    hoverColor: kPrimaryColor,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationsListDesktop(),
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
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index);
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationsListDesktop(),
                      ),
                      (Route<dynamic> route) => false,
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
            ? EntranceFader(
                offset: Offset(0, -10),
                delay: Duration(milliseconds: 100),
                duration: Duration(milliseconds: 250),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 60.0,
                  child: MaterialButton(
                    hoverColor: kPrimaryColor,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MuseumList(),
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
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: kPrimaryColor.withAlpha(70),
                  onPressed: () {
                    //_scroll(index);
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MuseumList(),
                      ),
                      (Route<dynamic> route) => false,
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
        Container(
            color: mainColorWhite,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 12,
                ),
                EntranceFader(
                    offset: Offset(0, -10),
                    delay: Duration(milliseconds: 100),
                    duration: Duration(milliseconds: 250),
                    child: IconButton(
                      icon: Icon(
                        AntDesign.instagram,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width * 0.0095,
                      ),
                      //iconSize: height,
                      onPressed: () => launchURL('www'),
                      //hoverColor: kPrimaryColor,
                    )),
                SizedBox(
                  width: 4,
                ),
                EntranceFader(
                    offset: Offset(0, -10),
                    delay: Duration(milliseconds: 100),
                    duration: Duration(milliseconds: 250),
                    child: IconButton(
                      icon: Icon(
                        AntDesign.twitter,
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width * 0.0095,
                      ),
                      //iconSize: height,
                      onPressed: () => launchURL('www'),
                      //hoverColor: kPrimaryColor,
                    )),
                SizedBox(
                  width: 4,
                ),
                EntranceFader(
                  offset: Offset(0, -10),
                  delay: Duration(milliseconds: 100),
                  duration: Duration(milliseconds: 250),
                  child: IconButton(
                    icon: Icon(
                      AntDesign.facebook_square,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width * 0.0095,
                    ),
                    //iconSize: height,
                    onPressed: () => launchURL('www'),
                    //hoverColor: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
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
                    onPressed: () => launchURL('www'),
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

  Widget _appBarActions(
    String childText,
    int index,
    IconData icon,
  ) {
    return MediaQuery.of(context).size.width > 760
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
                onPressed: () => Navigator.pop(context),
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
                    Navigator.pop(context);
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
