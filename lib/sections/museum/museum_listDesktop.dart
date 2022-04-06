import 'package:cinarlaw/animations/entranceFader.dart';
import 'package:cinarlaw/sections/Carrier/carrier.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_list.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/alertDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class MuseumListDesktop extends StatefulWidget {
  const MuseumListDesktop({Key key}) : super(key: key);

  @override
  _MuseumListDesktopState createState() => _MuseumListDesktopState();
}

class _MuseumListDesktopState extends State<MuseumListDesktop> {
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
                      color: Colors.grey[300],
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
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      showImageDialog(context, "assets/museum/museum_1.jpg")
                    },
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.30,
                      height: height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/museum/museum_1.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.30,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1920Jupiter Büro Kalemtraşı Guhl & Hardbeck Hamburg",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Türkiye Cumhuriyeti Kamu ve Özel Bürolarında Kullanılmış Mekanik Makine\n",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      showImageDialog(context, "assets/museum/museum_2.jpg")
                    },
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.30,
                      height: height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/museum/museum_2.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.30,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1950, Brunsviga Hesap Makinesi",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Türkiye Cumhuriyeti Kamu ve Özel Bürolarında Kullanılmış Çok Fonksiyonlu Alman Yapımı\n",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      showImageDialog(context, "assets/museum/museum_3.jpg")
                    },
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.30,
                      height: height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/museum/museum_3.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.30,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Kitap Cildi Pres Makinesi",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "H. Korassandjian Constantinople Plaketli Ünlü Demir Sanayi Eşya Fabrikasında İmal Edilmiş\n",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      showImageDialog(context, "assets/museum/museum_4.jpg")
                    },
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.30,
                      height: height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/museum/museum_4.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.30,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1920, Telefon",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Türkiye Cumhuriyeti Kamu ve Özel Bürolarında Kullanılmış İngiliz Yapımı Dahili Telefon Cihazı\n",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      showImageDialog(context, "assets/museum/museum_5.jpg")
                    },
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.30,
                      height: height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/museum/museum_5.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.30,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1926, Türkiye Cumhuriyeti Adliye Vekaleti, İstanbul Barosu Avukatlık Ruhsatnamesi,",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Avukat Pertani Efendi'ye 152 Kayıt Numarası ile Verilmiş, Adliye Vekili Mahmut Esat Bozkurt İmzalı\n",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      showImageDialog(context, "assets/museum/museum_6.jpg")
                    },
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.30,
                      height: height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/museum/museum_6.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.30,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1958, Avukatlık Ruhsatnamesi,",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Adliye Vekili Esad Budakoğlu ve Hukuk Müdürü Şevket Mühtügil İmzalı, Osmanlı Yaprak Deseni Tezyinatlı\n",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      showImageDialog(context, "assets/museum/museum_7.jpg")
                    },
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.30,
                      height: height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/museum/museum_7.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.30,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1912, İstanbul Hukuk Mektebi Diploması,",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "1878 Doğumlu Dimitri Kandıralı Efendi'ye Okulu Aleyul Al ( Pek İyi ) Derece İle Bitirmiş Olduğu İçin Adliye Nezareti Damgası İle Verilmiş Diploma\n",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.20)),
                child: Row(children: [
                  InkWell(
                    onTap: () => {
                      showImageDialog(context, "assets/museum/museum_8.jpg")
                    },
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.30,
                      height: height * 0.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/museum/museum_8.jpg"),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                    ),
                  ),
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.30,
                    height: height * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.010),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "1958, Avukatlık Ruhsatnamesi,",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Adliye Vekili Esad Budakoğlu ve Hukuk Müdürü Şevket Mühtügil İmzalı, Osmanlı Yaprak Deseni Tezyinatlı\n",
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
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
          ? NavBarLogo(
              height: 20.0,
            )
          : InkWell(
              onTap: () {
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
                  onPressed: () => {},
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MuseumListDesktop(),
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
                  hoverColor: kPrimaryColor,
                  onPressed: () => {
                    Navigator.of(context).pushReplacement(new MaterialPageRoute(
                        builder: (BuildContext context) => CarrierDesktop()))
                  },
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
