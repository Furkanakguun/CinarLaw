import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinarlaw/models/blog.dart';
import 'package:cinarlaw/sections/Carrier/carrier.dart';
import 'package:cinarlaw/sections/admin/admin_login.dart';
import 'package:cinarlaw/sections/contact/contactDesktop.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/events_list.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listArticle.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listList.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import '../../constants.dart';
import '../../translation/translation.dart';

class PublicationsListDesktop extends StatefulWidget {
  const PublicationsListDesktop({Key key}) : super(key: key);

  @override
  _PublicationsListDesktopState createState() =>
      _PublicationsListDesktopState();
}

class _PublicationsListDesktopState extends State<PublicationsListDesktop> {
  List<BlogPost> starredBlogList;
  bool starredBlogPostsLoading = true;
  bool eventEmpty = false;
  bool blogEmpty = false;
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

  getStarredBlogPost() async {
    List<BlogPost> feedItems = [];
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('blogPosts')
        .doc('1')
        .collection('items')
        .where("star", isEqualTo: true)
        .limit(3)
        .get();
    if (snapshot.docs.isEmpty) {
      setState(() {
        blogEmpty = true;
      });
    } else {
      setState(() {
        blogEmpty = false;
      });
    }
    for (var item in snapshot.docs) {
      feedItems.add(BlogPost.fromDocument(item));
    }
    return feedItems;
  }

  getStarredEventPost() async {
    List<BlogPost> feedItems = [];
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('eventPosts')
        .doc('1')
        .collection('items')
        .where("star", isEqualTo: true)
        .limit(3)
        .get();
    if (snapshot.docs.isEmpty) {
      setState(() {
        eventEmpty = true;
      });
    } else {
      setState(() {
        eventEmpty = false;
      });
    }
    for (var item in snapshot.docs) {
      feedItems.add(BlogPost.fromDocument(item));
    }
    return feedItems;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getStarredBlogPost();
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
              upBannerSection(height, width),
              SizedBox(
                height: height * 0.03,
              ),
              cinarAkademiLetterSection(),
              Align(
                alignment: Alignment.center,
                child: Text(
                  CinarTranslations.cinarAkademiGiris.tr,
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: height * 0.050,
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
              cinarAkademiDescription(width, height),
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
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Text("Blog",
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
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          width < 1200 ? width * (0.20) : width * (0.15)),
                  child: FutureBuilder(
                    future: getStarredBlogPost(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Container();
                      }
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: snapshot.data,
                      );
                    },
                  )),
              SizedBox(
                height: 15,
              ),
              seeMorePublication(width, context),
              SizedBox(
                width: width * 0.012,
              ),
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
                          child: Text("Event",
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
                width: width * 0.012,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          width < 1200 ? width * (0.20) : width * (0.15)),
                  child: FutureBuilder(
                    future: getStarredEventPost(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Container();
                      }
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: snapshot.data,
                      );
                    },
                  )),
              SizedBox(
                height: 15,
              ),
              seeMoreEvent(width, context),
              SizedBox(
                height: 150,
              ),
              FooterBlack()
            ],
          ),
        ),
      ),
    );
  }

  Padding seeMorePublication(double width, BuildContext context) {
    return blogEmpty
        ? Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width < 1200 ? width * (0.20) : width * (0.15)))
        : Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width < 1200 ? width * (0.20) : width * (0.15)),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                textStyle: TextStyle(color: Colors.blue),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PublicationsListList(),
                  ),
                )
              },
              icon: Icon(
                Icons.arrow_forward_outlined,
                color: mainColorWhite,
              ),
              label: Text(
                'See more',
                style: TextStyle(color: mainColor),
              ),
            ),
          );
  }

  Padding seeMoreEvent(double width, BuildContext context) {
    return eventEmpty
        ? Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width < 1200 ? width * (0.20) : width * (0.15)))
        : Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width < 1200 ? width * (0.20) : width * (0.15)),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                textStyle: TextStyle(color: Colors.blue),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventsList(),
                  ),
                )
              },
              icon: Icon(
                Icons.arrow_forward_outlined,
                color: mainColorWhite,
              ),
              label: Text(
                'See more',
                style: TextStyle(color: mainColor),
              ),
            ),
          );
  }

  InkWell starredBlogPostCard(BuildContext context, double width, double height,
      String date, String title) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                PublicationsListArticle(title: title, description: ""),
          ),
        );
      },
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 25.0,
                offset: Offset(2.0, 2.0),
              ),
            ],
            color: Colors.white70,
            borderRadius: BorderRadius.circular(12),
          ),
          width: width < 1200 ? width * 0.60 : width * 0.20,
          height: height * 0.30,
        ),
        Padding(
          padding: EdgeInsets.only(top: width * 0.08, left: 7, right: 7),
          child: Center(
            child: Container(
              color: Colors.transparent,
              width: width < 1200 ? width * 0.60 : width * 0.19,
              child: Column(
                children: [
                  Text(
                    date,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.black,
                        height: 1.4,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.black,
                        height: 1.4,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }

  Column cinarAkademiDescription(double width, double height) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width < 1200 ? width * 0.80 : width * 0.45,
          child: TextRenderer(
            text:
                "Çınar&Çınar Law Office places great importance to education, especially legal training. Çınar Legal and Academic Researches Association (‘Çınar Academy’) was founded especially in consideration of law students, lawyers and disabled citizens who intend to work within the legal sector. \n\n",
            child: AdaptiveText(
              CinarTranslations.cinarAkademiDesc1.tr + " \n\n",
              style: GoogleFonts.montserrat(
                fontSize: height * 0.016,
                color: Colors.grey[500],
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          width: width * 0.012,
        ),
        Container(
          width: width < 1200 ? width * 0.80 : width * 0.45,
          child: TextRenderer(
            text:
                "Within the education center established in scope of the Çınar Academy; seminars, conferences, and various educational programs are being held. Through these events, the Academy is able to offer both guidance and assistance to its attendants to become jurists who are well prepared for the professional and academic journey and who are widely experienced in the field of international law.  \n\n",
            child: AdaptiveText(
              CinarTranslations.cinarAkademiDesc2.tr + " \n\n",
              style: GoogleFonts.montserrat(
                fontSize: height * 0.016,
                color: Colors.grey[500],
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
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

  List<dynamic> showcourselImagesList() {
    List<dynamic> imageList = List<dynamic>();
    imageList.add(
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/akademi_1.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        //color: Colors.yellow),
      ),
    );
    imageList.add(
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/akademi_2.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        //color: Colors.yellow),
      ),
    );
    imageList.add(
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/akademi_3.jpg"),
            fit: BoxFit.cover,
          ),
        ),

        //color: Colors.yellow),
      ),
    );
    return imageList;
  }

  Widget upBannerSection(double height, double width) {
    return Stack(
      children: [
        Container(
          height: height * 0.50,
          width: width,
          // child: Carousel(
          //   radius: Radius.circular(35),
          //   // onImageTap: (int a) {
          //   //   print('ovye');
          //   // },
          //   borderRadius: true,
          //   //radius: Radius.circular(35),
          //   boxFit: BoxFit.cover,
          //   autoplay: false,
          //   //animationCurve: Curves.,
          //   animationDuration: Duration(milliseconds: 2000),
          //   autoplayDuration: Duration(milliseconds: 10000),
          //   dotSize: 7.0,
          //   dotIncreasedColor: mainColor,
          //   dotBgColor: Colors.transparent,
          //   dotPosition: DotPosition.bottomCenter,
          //   dotVerticalPadding: 15.0,
          //   showIndicator: true,
          //   indicatorBgPadding: 3.0,
          //   //moveIndicatorFromBottom: ,
          //   images: showcourselImagesList(),
          // ),
          child: CarouselSlider(
              options: CarouselOptions(
                  height: height * 0.60,
                  viewportFraction: 1.05,
                  enlargeCenterPage: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(seconds: 7),
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 7)),
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/akademi_1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/akademi_2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/akademi_3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ]),
        ),
        appBarSection(width),
      ],
    );
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
                  onPressed: () {},
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
                  onPressed: () {
                    //_scroll(index);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => PublicationsListDesktop(),
                    //   ),
                    // );
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
