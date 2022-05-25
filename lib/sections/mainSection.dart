import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/sections/Carrier/carrier.dart';
import 'package:cinarlaw/sections/contact/contactDesktop.dart';
import 'package:cinarlaw/sections/museum/museum_list.dart';
import 'package:cinarlaw/sections/museum/museum_listMobile.dart';
import 'package:cinarlaw/sections/publications/publication.dart';
import 'package:cinarlaw/sections/publicationsList/publications_list.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listMobile.dart';
import 'package:cinarlaw/widget/socialMediaIcon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/animations/entranceFader.dart';
import 'package:cinarlaw/constants.dart';
import 'package:cinarlaw/sections/about/about.dart';
import 'package:cinarlaw/sections/contact/contact.dart';
import 'package:cinarlaw/sections/home/home.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/portfolio/portfolio.dart';
import 'package:cinarlaw/sections/services/services.dart';
import 'package:cinarlaw/widget/arrowOnTop.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/adaptiveText.dart';
import 'admin/admin_login.dart';
import 'museum/museum_listDesktop.dart';

bool isTr = false;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ThemeProvider _themeProviders = ThemeProvider();
  bool isPressed = false;
  bool _isScrollingDown = false;
  bool _navbarWhite = false;
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: 260);

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

  void _scroll(int i) {
    _scrollController.animateTo(
      i == 0
          ? 0.0
          : i == 1
              ? MediaQuery.of(context).size.height * 1.20
              : i == 2
                  ? MediaQuery.of(context).size.height * 2.30
                  : i == 3
                      ? MediaQuery.of(context).size.height * 2.9
                      : MediaQuery.of(context).size.height * 4,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return HomePage();
    } else if (i == 1) {
      return About();
    } else if (i == 2) {
      return Services();
    } else if (i == 3) {
      return FooterBrown();
    } else {
      return Container();
    }
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      var data = ModalRoute.of(context).settings.arguments;

      // print("Dataaa" + data.toString());
      if (data.toString() == "{0}") {
        _scroll(1);
      }
      if (data.toString() == "{1}") {
        _scroll(2);
      }
      // if (data.title == "scrollIndex") {
      //   if (data.message == 1) {
      //     _scroll(1);
      //   }

      //   // getImage(ImageSource.camera);
      // }
    });

    _scrollController = _themeProviders.scroll;
    _scrollController.addListener(() {
      if (_scrollController.position.pixels < 100) {
        //print('topp');
        _scrollController.jumpTo(145);
        setState(() {
          //_scroll(1);
        });
      }
      if (_scrollController.position.pixels <
          MediaQuery.of(context).size.height * 1.05) {
        //print('topp2');
        setState(() {
          _navbarWhite = false;
        });
      } else if (_scrollController.position.pixels >
          MediaQuery.of(context).size.height * 1.05) {
        setState(() {
          _navbarWhite = true;
        });
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollingDown) {
          _isScrollingDown = true;
          setState(() {});
        }
      }

      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isScrollingDown) {
          _isScrollingDown = false;
          setState(() {});
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _themeProv = Provider.of<ThemeProvider>(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: _themeProv.lightTheme ? Colors.white : Colors.black,
      appBar: MediaQuery.of(context).size.width < 760
          ? AppBar(
              iconTheme: IconThemeData(
                  color: _themeProv.lightTheme ? Colors.black : Colors.white),
              elevation: 0,
              backgroundColor: Colors.white,
              actions: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, top: 10, bottom: 10),
                  child: Image.asset(
                    'assets/cinar_beyaz-01.png',
                    fit: BoxFit.cover,
                    height: 100,
                    width: 180,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                )
              ],
            )
          : _appBarTabDesktop(_themeProv),
      drawer: MediaQuery.of(context).size.width < 760
          ? _appBarMobile(_themeProv)
          : null,
      body: Stack(
        children: [
          SectionsBody(
            scrollController: _scrollController,
            sectionsLength: _sectionsIcons.length,
            sectionWidget: sectionWidget,
          ),
          _isScrollingDown
              ? Positioned(
                  bottom: 90,
                  right: 0,
                  child: EntranceFader(
                      offset: Offset(0, 20),
                      child: ArrowOnTop(
                        onPressed: () => _scroll(0),
                      )))
              : Container()
        ],
      ),
    );
  }

  Widget _appBarActions(
      String childText, int index, IconData icon, ThemeProvider themeProvider) {
    return MediaQuery.of(context).size.width > 760
        ? EntranceFader(
            offset: Offset(0, -10),
            delay: Duration(milliseconds: 100),
            duration: Duration(milliseconds: 250),
            child: Container(
              color: _navbarWhite ? mainColorWhite : Colors.transparent,
              padding: const EdgeInsets.all(8.0),
              height: 60.0,
              child: MaterialButton(
                hoverColor: Colors.black.withOpacity(0.5),
                onPressed: () => _scroll(index + 1),
                child: Text(
                  childText,
                  style: GoogleFonts.montserrat(
                    fontSize: MediaQuery.of(context).size.width * 0.0070,
                    //fontWeight: FontWeight.w300,
                    color:
                        themeProvider.lightTheme ? Colors.white : Colors.white,
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
                    _scroll(index + 1);
                    Navigator.pop(context);
                  },
                  child: Text(
                    childText,
                    style: TextStyle(
                      color: themeProvider.lightTheme
                          ? Colors.black
                          : Colors.white,
                    ),
                    //textAlign: TextAlign.start,
                  ),
                ),
                Divider(
                  color: themeProvider.lightTheme
                      ? Colors.brown[200]
                      : Colors.white,
                )
              ],
            ),
          );
  }

  Widget _appBarTabDesktop(ThemeProvider _themeProv) {
    return _navbarWhite
        ? AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          )
        : AppBar(
            elevation: 0.0,
            backgroundColor: _navbarWhite ? mainColorWhite : Colors.transparent,
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
                    padding: const EdgeInsets.only(left: 28.0, top: 10),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            new MaterialPageRoute(
                                builder: (BuildContext context) => MainPage()));
                      },
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 10, bottom: 18),
                        child: Image.asset(
                          'assets/cinar_beyaz-01.png',
                          fit: BoxFit.fitWidth,
                          height: 120,
                          width: 200,
                        ),
                      ),
                    ),
                  ),
            actions: [
              MediaQuery.of(context).size.width > 760
                  ? Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: EntranceFader(
                        offset: Offset(0, -10),
                        delay: Duration(milliseconds: 100),
                        duration: Duration(milliseconds: 250),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 60.0,
                          child: MaterialButton(
                            hoverColor: Colors.black.withOpacity(0.5),
                            onPressed: () => Navigator.of(context)
                                .pushReplacement(new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        PublicationList())),
                            child: Text(
                              "ÇINAR ACADEMIA",
                              style: GoogleFonts.montserrat(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0070,
                                // fontWeight: FontWeight.w300,
                                color: _themeProv.lightTheme
                                    ? Colors.white
                                    : Colors.white,
                              ),
                              // style: TextStyle(
                              //   color:
                              //       themeProvider.lightTheme ? Colors.black : Colors.white,
                              // ),
                            ),
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
                              builder: (context) => PublicationList(),
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
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0070,
                              // fontWeight: FontWeight.w300,
                              color: _themeProv.lightTheme
                                  ? Colors.black
                                  : Colors.white,
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
                          hoverColor: Colors.black.withOpacity(0.5),
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MuseumList())),
                          child: Text(
                            "ÇINAR MUSEUM",
                            style: GoogleFonts.montserrat(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0070,
                              // fontWeight: FontWeight.w300,
                              color: _themeProv.lightTheme
                                  ? Colors.white
                                  : Colors.white,
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
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0070,
                              // fontWeight: FontWeight.w300,
                              color: _themeProv.lightTheme
                                  ? Colors.black
                                  : Colors.white,
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
                _appBarActions(
                    _sectionsName[i], i, _sectionsIcons[i], _themeProv),
              MediaQuery.of(context).size.width > 760
                  ? EntranceFader(
                      offset: Offset(0, -10),
                      delay: Duration(milliseconds: 100),
                      duration: Duration(milliseconds: 250),
                      child: Container(
                        color:
                            _navbarWhite ? mainColorWhite : Colors.transparent,
                        padding: const EdgeInsets.all(8.0),
                        height: 60.0,
                        child: MaterialButton(
                          hoverColor: Colors.black.withOpacity(0.5),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CarrierDesktop(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            "CAREERS",
                            style: GoogleFonts.montserrat(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0070,
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
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PublicationList(),
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
                            "CAREERS",
                            style: GoogleFonts.montserrat(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0070,
                              // fontWeight: FontWeight.w300,
                              color: _themeProv.lightTheme
                                  ? Colors.black
                                  : Colors.white,
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
                        color:
                            _navbarWhite ? mainColorWhite : Colors.transparent,
                        padding: const EdgeInsets.all(8.0),
                        height: 60.0,
                        child: MaterialButton(
                          hoverColor: Colors.black.withOpacity(0.5),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Contact(),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            "CONTACT",
                            style: GoogleFonts.montserrat(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0070,
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
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Contact(),
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
                            "CONTACT",
                            style: GoogleFonts.montserrat(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0070,
                              // fontWeight: FontWeight.w300,
                              color: _themeProv.lightTheme
                                  ? Colors.black
                                  : Colors.white,
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
                  )),
              Container(
                  color: Colors.transparent,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Ionicons.md_exit,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.0095,
                        ),
                        //iconSize: height,
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AdminLogin(),
                            ),
                            (Route<dynamic> route) => false,
                          );
                        },
                        //hoverColor: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ))
            ],
          );
  }

  Widget _appBarMobile(ThemeProvider theme) {
    return Drawer(
      child: Material(
        color: theme.lightTheme ? Colors.white : Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBarLogo(
                height: 28,
              ),
              Divider(
                color: theme.lightTheme ? Colors.grey[200] : Colors.white,
              ),
              for (int i = 0; i < _sectionsName.length; i++)
                _appBarActions(_sectionsName[i], i, _sectionsIcons[i], theme),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      hoverColor: mainColor.withAlpha(70),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CarrierDesktop(),
                          ),
                        );
                      },
                      child: Text(
                        "CAREERS",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        //textAlign: TextAlign.start,
                      ),
                    ),
                    Divider(color: Colors.brown[200])
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      hoverColor: mainColor.withAlpha(70),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Contact(),
                          ),
                        );
                      },
                      child: Text(
                        "CONTACT",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        //textAlign: TextAlign.start,
                      ),
                    ),
                    Divider(color: Colors.brown[200])
                  ],
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
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationsListMobile(),
                      ),
                      (Route<dynamic> route) => false,
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
                        color: theme.lightTheme ? Colors.black : Colors.white,
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
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MuseumListDesktop(),
                      ),
                      (Route<dynamic> route) => false,
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
                        color: theme.lightTheme ? Colors.black : Colors.white,
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
}

class SectionsBody extends StatelessWidget {
  final ScrollController scrollController;
  final int sectionsLength;
  final Widget Function(int) sectionWidget;

  const SectionsBody({
    Key key,
    this.scrollController,
    this.sectionsLength,
    this.sectionWidget,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        // physics: !kIsWeb ? ScrollPhysics() : NeverScrollableScrollPhysics(),
        controller: scrollController,
        itemCount: sectionsLength,
        itemBuilder: (context, index) => sectionWidget(index),
      ),
    );
  }
}

// onPointerSignal: (ps) {
//           if (ps is PointerScrollEvent) {
//             final newOffset = scrollController.offset + ps.scrollDelta.dy;
//             if (ps.scrollDelta.dy.isNegative) {
//               scrollController.jumpTo(math.max(0, newOffset));
//             } else {
//               scrollController.jumpTo(math.min(
//                   scrollController.position.maxScrollExtent, newOffset));
//             }
//           }
//         },