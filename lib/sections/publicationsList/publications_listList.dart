import 'package:cinarlaw/models/blog.dart';
import 'package:cinarlaw/sections/home/home.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/entranceFader.dart';
import '../../constants.dart';

class PublicationsListList extends StatefulWidget {
  const PublicationsListList({
    Key key,
  }) : super(key: key);

  @override
  _PublicationsListListState createState() => _PublicationsListListState();
}

class _PublicationsListListState extends State<PublicationsListList> {
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
  getStarredBlogPost() async {
    List<Padding> feedItems = [];
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('blogPosts')
        .doc('1')
        .collection('items')
        .get();
    print(snapshot.docs.isEmpty);
    for (var item in snapshot.docs) {
      feedItems.add(Padding(
          padding: EdgeInsets.all(8), child: BlogPost.fromDocument(item)));
    }
    return feedItems;
  }

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
             cinarAkademiLetterSection(),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Çınar Academia Publications",
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: height * 0.050,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              // IntrinsicHeight(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Container(
              //         width: width * 0.32,
              //         height: 50,
              //         child: AdaptiveText(
              //           "",
              //           style: GoogleFonts.roboto(
              //             fontSize: height * 0.018,
              //             color: Colors.grey[500],
              //             height: 1.5,
              //           ),
              //         ),
              //       ),
              //       VerticalDivider(
              //         color: mainColor,
              //         thickness: 3,
              //       ),
              //       Container(
              //         height: 50,
              //         width: width * 0.32,
              //         child: AdaptiveText(
              //           "",
              //           style: GoogleFonts.roboto(
              //             fontSize: height * 0.018,
              //             color: Colors.grey[500],
              //             height: 1.5,
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
                Padding(
                padding: const EdgeInsets.only(top: 28.0, bottom: 28.0),
                child: Column(
                  children: [
                    Container(
                      width: width * 0.67,
                      child: Row(children: <Widget>[
                        Expanded(
                            child: Divider(
                          thickness: 2,
                          color: mainColorWhite,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Text("All Blogs",
                              style: GoogleFonts.montserrat(
                                  fontSize: height * 0.020,
                                  color: Colors.black,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 2,
                          color: mainColorWhite,
                        )),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          width < 1200 ? width * (0.30) : width * (0.40)),
                  child: FutureBuilder(
                    future: getStarredBlogPost(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Container();
                      }
                      return Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: snapshot.data,
                        ),
                      );
                    },
                  )),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       width: width * 0.55,
              //       child: AdaptiveText(
              //         "",
              //         style: GoogleFonts.montserrat(
              //           fontSize: height * 0.016,
              //           color: Colors.grey[500],
              //           height: 1.8,
              //         ),
              //         textAlign: TextAlign.left,
              //       ),
              //     ),
              //     SizedBox(
              //       width: width * 0.012,
              //     ),
              //   ],
              // ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }

    Container cinarAkademiLetterSection() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/cinar_akademi_logo.png"),
          fit: BoxFit.contain,
        ),
        //color: Colors.yellow
      ),
      height: 70,
      width: 150,
      //color: Colors.yellow),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationsListDesktop(),
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