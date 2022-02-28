import 'package:cinarlaw/animations/bottomAnimation.dart';
import 'package:cinarlaw/sections/museum/museum_listMobile.dart';
import 'package:cinarlaw/sections/publications/publication.dart';
import 'package:cinarlaw/sections/publicationsList/publications_list.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
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

import 'museum/museum_listDesktop.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ThemeProvider _themeProviders = ThemeProvider();
  bool isPressed = false;
  bool _isScrollingDown = false;
  ScrollController _scrollController = ScrollController();

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

  void _scroll(int i) {
    _scrollController.animateTo(
      i == 0
          ? 0.0
          : i == 1
              ? MediaQuery.of(context).size.height * 1.05
              : i == 2
                  ? MediaQuery.of(context).size.height * 1.98
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
      return Portfolio();
    } else if (i == 4) {
      return Footer();
    } else if (i == 5) {
      return Footer();
    } else {
      return Container();
    }
  }

  @override
  void initState() {
    _scrollController = _themeProviders.scroll;
    _scrollController.addListener(() {
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
              color: mainColorWhite,
              padding: const EdgeInsets.all(8.0),
              height: 60.0,
              child: MaterialButton(
                hoverColor: kPrimaryColor,
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
    return AppBar(
      elevation: 0.0,
      backgroundColor: _themeProv.lightTheme ? Colors.white : Colors.black,
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
                        color: _themeProv.lightTheme
                            ? mainColorWhite
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
                        color:
                            _themeProv.lightTheme ? Colors.black : Colors.white,
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
                        builder: (context) => MuseumListDesktop(),
                      ),
                    ),
                    child: Text(
                      "ÇINAR MUSEUM",
                      style: GoogleFonts.montserrat(
                        fontSize: MediaQuery.of(context).size.width * 0.0070,
                        // fontWeight: FontWeight.w300,
                        color: _themeProv.lightTheme
                            ? mainColorWhite
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
                        color:
                            _themeProv.lightTheme ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
        for (int i = 0; i < _sectionsName.length; i++)
          _appBarActions(_sectionsName[i], i, _sectionsIcons[i], _themeProv),
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
                child: MaterialButton(
                  hoverColor: mainColorWhite.withAlpha(70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: kPrimaryColor)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationsListDesktop(),
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