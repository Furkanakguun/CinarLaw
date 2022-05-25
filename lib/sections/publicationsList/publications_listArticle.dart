import 'package:cinarlaw/sections/home/home.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/entranceFader.dart';
import '../../constants.dart';
import '../Carrier/carrier.dart';
import '../contact/contactDesktop.dart';

class PublicationsListArticle extends StatefulWidget {
  final String title;
  final String description;
  final String author;
  const PublicationsListArticle(
      {Key key, this.title, this.description, this.author})
      : super(key: key);

  @override
  _PublicationsListArticleState createState() =>
      _PublicationsListArticleState();
}

class _PublicationsListArticleState extends State<PublicationsListArticle> {
  final List<String> _sectionsName = [
    "ABOUT US",
    "PRACTICE AREAS",
  ];

  final List<IconData> _sectionsIcons = [
    Icons.home,
    Icons.person,
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
                  "BLOG",
                  style: GoogleFonts.montserrat(
                      color: mainColorWhite,
                      fontSize: height * 0.018,
                      fontWeight: FontWeight.w200),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Column(
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
                    width: width * 0.55,
                    child: Text(
                      widget.description,
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.016,
                        color: Colors.grey[500],
                        height: 1.8,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.012,
                  ),
                  Container(
                    width: width * 0.55,
                    child: Text(
                      widget.author,
                      style: GoogleFonts.montserrat(
                        fontSize: height * 0.016,
                        color: Colors.grey[500],
                        height: 1.8,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: height * 0.050,
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
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
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
            ? Container(
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
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MuseumListDesktop(),
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
        MediaQuery.of(context).size.width > 760
            ? Container(
                color: mainColorWhite,
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: Colors.black.withOpacity(0.5),
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) => CarrierDesktop()))
                  },
                  child: Text(
                    "CAREERS",
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
                      "CAREERS",
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
                color: mainColorWhite,
                padding: const EdgeInsets.all(8.0),
                height: 60.0,
                child: MaterialButton(
                  hoverColor: Colors.black.withOpacity(0.5),
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) => ContactDektop()))
                  },
                  child: Text(
                    "CONTACT",
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
                      "CONTACT",
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
                SizedBox(
                  width: 12,
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
                    onPressed: () => launchURL(
                        'https://www.linkedin.com/company/cinarlaw/?originalSubdomain=tr'),
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
        ? Container(
            color: mainColorWhite,
            padding: const EdgeInsets.all(8.0),
            height: 60.0,
            child: MaterialButton(
              hoverColor: kPrimaryColor,
              onPressed: () {
                 Navigator.pushReplacementNamed(context, '/main',
                    arguments: {index.toString()});
                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => MainPage(),
                //   ),
                //   (Route<dynamic> route) => false,
                // );
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
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ),
                      (Route<dynamic> route) => false,
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
