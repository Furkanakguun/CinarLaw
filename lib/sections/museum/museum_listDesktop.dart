import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinarlaw/sections/Carrier/carrier.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/alertDialog.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';
import '../contact/contactDesktop.dart';

class MuseumListDesktop extends StatefulWidget {
  const MuseumListDesktop({Key key}) : super(key: key);

  @override
  _MuseumListDesktopState createState() => _MuseumListDesktopState();
}

class _MuseumListDesktopState extends State<MuseumListDesktop> {
  final List<String> _sectionsName = [
    "ABOUT",
    "PRACTICE AREAS",
    "CONTACT",
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
              ? EdgeInsets.only(top: 0.0, bottom: 3)
              : EdgeInsets.only(top: 0.0, bottom: 16),
          child: Center(
            child: ListView(
              children: [
                upBannerSection(height, width),
                SizedBox(
                  height: 12,
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: AssetImage("assets/cinar_law_museum_logo.png"),
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  child: Image.asset(
                    "assets/cinar_law_museum_logo.png",
                    //fit: BoxFit.cover,
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
                  height: 50,
                ),
                gridViewMuseum(width, height, context),
                SizedBox(
                  height: 122,
                ),
                FooterBlack()
              ],
            ),
          ),
        ));
  }

  Widget loading() {
    return CircularProgressIndicator(
      color: Theme.of(context).primaryColor,
    );
  }

  Padding gridViewMuseum(double width, double height, BuildContext context) {
    return Padding(
      padding: width < 1200
          ? EdgeInsets.symmetric(horizontal: width * 0.15)
          : EdgeInsets.symmetric(horizontal: width * 0.35),
      child: Container(
          width: width < 1200 ? width * 0.60 : width * 0.20,
          height: height * 3,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            // child: GridView(
            //     physics: NeverScrollableScrollPhysics(),
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 2,
            //         crossAxisSpacing: 2,
            //         mainAxisSpacing: 2,
            //         //mainAxisExtent: 120,
            //         childAspectRatio: 1),
            children: [
              InkWell(
                // onHover: (value) {  1
                //   print('yess');
                //    setState(() {
                //      sideLength = value?150 :50;
                //    });
                // },
                //onHover: () => priiint(),
                //color: Colors.black.withOpacity(0.7),
                onTap: () => showImageDialog(
                    context,
                    'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fcolored%2Fmuseum_1.jpg?alt=media&token=8946248c-5b6a-4ccb-b787-3ea1d528e6b5',
                    "1920Jupiter Büro Kalemtraşı Guhl & Hardbeck Hamburg Alman Yapımı Türkiye Cumhuriyeti Kamu ve Özel Bürolarında Kullanılmış Mekanik Makine"),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    //borderRadius: BorderRadius.circular(12),
                    // image: DecorationImage(
                    //     fit: BoxFit.cover,
                    //     image: Image.network(
                    //       image:
                    //           "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_1.jpg?alt=media&token=9c54d68b-cc2c-46d1-b55b-788536406c0f",
                    //     )),
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_1.jpg?alt=media&token=2b4ae548-17b8-46d2-bce6-b6101d3df04c",
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes
                              : null,
                        ),
                      );
                    },
                  ),
                  width: width < 1200 ? width * 0.60 : width * 0.20,
                  height: height * 0.30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                //color: Colors.black.withOpacity(0.7),  2
                onTap: () => showImageDialog(
                    context,
                    'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fcolored%2Fmuseum_2.jpg?alt=media&token=045ce01d-2ccd-4141-b162-ef8ea6246b0d',
                    "1950, Brunsviga Hesap Makinesi Türkiye Cumhuriyeti Kamu ve Özel Bürolarında Kullanılmış Çok Fonksiyonlu Alman Yapımı"),
                child: Container(
                  // decoration: BoxDecoration(
                  //   color: Colors.black,
                  //   //borderRadius: BorderRadius.circular(12),
                  //   image: DecorationImage(
                  //       fit: BoxFit.cover,
                  //       image: CachedNetworkImageProvider(
                  //           "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_2.jpg?alt=media&token=ba382388-eb8a-4e11-91c4-0659cd4066e6")),
                  // ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_2.jpg?alt=media&token=214a5b63-8017-46b7-8e90-ec75ada5f5d9",
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes
                              : null,
                        ),
                      );
                    },
                  ),
                  width: width < 1200 ? width * 0.60 : width * 0.20,
                  height: height * 0.30,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  //color: Colors.black.withOpacity(0.7), 3
                  onTap: () => showImageDialog(
                      context,
                      'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fcolored%2Fmuseum_3.jpg?alt=media&token=f5d66820-817c-49f2-ad6e-c8904fd0ac73',
                      "Kitap Cildi Pres Makinesi H. Korassandjian Constantinople Plaketli Ünlü Demir Sanayi Eşya Fabrikasında İmal Edilmiş"),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.black,
                    //   //borderRadius: BorderRadius.circular(12),
                    //   image: DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: CachedNetworkImageProvider(
                    //           'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_3.jpg?alt=media&token=2bfc9db5-adc5-44a4-93c6-2ab5fab801ff')),
                    // ),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_3.jpg?alt=media&token=c0f6f8e7-dcc7-4c8e-8a83-e498c399bcd2",
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                  )),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  //color: Colors.black.withOpacity(0.7), 4
                  onTap: () => showImageDialog(
                      context,
                      'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fcolored%2Fmuseum_4.jpg?alt=media&token=185734b2-680e-4d5e-b260-2732b1b4d8dd',
                      "1920, Telefon Türkiye Cumhuriyeti Kamu ve Özel Bürolarında Kullanılmış  İngiliz Yapımı Dahili Telefon Cihazı"),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.black,
                    //   //borderRadius: BorderRadius.circular(12),
                    //   image: DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: CachedNetworkImageProvider(
                    //           "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_4.jpg?alt=media&token=5aa187fc-1ec9-4d6e-b116-87344a5b7e11")),
                    // ),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_4.jpg?alt=media&token=69f367a1-eb79-412c-b9d8-79ac438cfc27",
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                  )),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  //color: Colors.black.withOpacity(0.7), 5
                  onTap: () => showImageDialog(
                      context,
                      'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fcolored%2Fmuseum_5.jpg?alt=media&token=2d5f42de-999c-41f9-ba19-ea61f6baab77',
                      "1926, Türkiye Cumhuriyeti Adliye Vekaleti, İstanbul Barosu Avukatlık Ruhsatnamesi, Avukat Pertani Efendi'ye 152 Kayıt Numarası ile Verilmiş,  Adliye Vekili Mahmut Esat Bozkurt İmzalı"),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.black,
                    //   //borderRadius: BorderRadius.circular(12),
                    //   image: DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: CachedNetworkImageProvider(
                    //           "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_5.jpg?alt=media&token=236527af-21f7-4856-ac96-fa4316582e67")),
                    // ),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_5.jpg?alt=media&token=10466830-00b6-47b7-9841-93da6b803741",
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                  )),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  //color: Colors.black.withOpacity(0.7), 6
                  onTap: () => showImageDialog(
                      context,
                      'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fcolored%2Fmuseum_6.jpg?alt=media&token=fbbea48f-2b1d-477b-9c22-74ca8777f7a2',
                      "1958, Avukatlık Ruhsatnamesi, Adliye Vekili Esad Budakoğlu ve Hukuk Müdürü Şevket Mühtügil İmzalı, Osmanlı Yaprak Deseni Tezyinatlı "),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.black,
                    //   //borderRadius: BorderRadius.circular(12),
                    //   image: DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: CachedNetworkImageProvider(
                    //           "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_6.jpg?alt=media&token=442b4fc5-148b-48a8-8b5a-e29adba24422")),
                    // ),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_6.jpg?alt=media&token=ae10c21b-cbef-497a-ba04-510ecdd253f8",
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                  )),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  //color: Colors.black.withOpacity(0.7),
                  onTap: () => showImageDialog(
                      context,
                      'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fcolored%2Fmuseum_7.jpg?alt=media&token=81f86dfd-6e4e-4d48-bd68-9883e5e81491',
                      "1912, İstanbul Hukuk Mektebi Diploması, 1878 Doğumlu Dimitri Kandıralı Efendi'ye Okulu Aleyul Al ( Pek İyi ) Derece İle Bitirmiş Olduğu İçin Adliye Nezareti Damgası  İle Verilmiş Diploma"),
                  child: Container(
                    // decoration: BoxDecoration( 7
                    //   color: Colors.black,
                    //   //borderRadius: BorderRadius.circular(12),
                    //   image: DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: CachedNetworkImageProvider(
                    //           "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_7.jpg?alt=media&token=c921d1eb-18ec-4f83-a840-57cbe5bd154d")),
                    // ),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_7.jpg?alt=media&token=7a3a2f3d-2755-4916-bb97-f12936af4236",
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                  )),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  //color: Colors.black.withOpacity(0.7), 8
                  onTap: () => showImageDialog(
                      context,
                      'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fcolored%2Fmuseum_8.jpg?alt=media&token=240e17dd-8174-42d3-adc0-fe43b39263c0',
                      "1930, Mercedes Daktilo Büromaschinen - Werge A.G, Zella - Mehlis İn Thringen Türkiye Cumhuriyeti Zonguldak Vilayeti Kamu Bürosunda Kullanılmış "),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.black,
                    //   //borderRadius: BorderRadius.circular(12),
                    //   image: DecorationImage(
                    //       fit: BoxFit.cover,
                    //       image: CachedNetworkImageProvider(
                    //         "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_8.jpg?alt=media&token=042ba9fc-fa40-4dab-9a00-316abe59a180",
                    //       )),
                    // ),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_8.jpg?alt=media&token=5db0f2e1-f958-4379-93f9-0ce63f2cd63b",
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                  )),
              SizedBox(
                height: 15,
              ),
              InkWell(
                  //color: Colors.black.withOpacity(0.7), 9
                  onTap: () => showImageDialog(
                      context,
                      'https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_9.jpg?alt=media&token=03d6daad-ce91-46ad-b0ff-2fce2d96bbc8',
                      ""),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   color: Colors.black,
                    //   //borderRadius: BorderRadius.circular(12),
                    //   image: DecorationImage(
                    //       fit: BoxFit.fill,
                    //       image: CachedNetworkImageProvider(
                    //           "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_9.jpg?alt=media&token=839249bf-fcea-4aa0-ab5d-d705d00704fb")),
                    // ),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/cinar-law.appspot.com/o/museum%2Fmuseum_9.jpg?alt=media&token=03d6daad-ce91-46ad-b0ff-2fce2d96bbc8",
                      fit: BoxFit.cover,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                  ))
            ],
          )),
    );
  }

  Widget upBannerSection(double height, double width) {
    return Stack(children: [
      Center(
        child: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/museum_stack.jpg"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Image.asset(
            "assets/akademi.jpg",
            fit: BoxFit.cover,
          ),
          height: height * 0.45,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PublicationsListDesktop(),
                      ),
                    );
                  },
                  child: Text(
                    "ÇINAR ACADEMIA",
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
                  hoverColor: Colors.black.withOpacity(0.5),
                  onPressed: () => Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              MuseumListDesktop())),
                  child: Text(
                    "ÇINAR MUSEUM",
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
        // Container(
        //     color: Colors.transparent,
        //     child: Row(
        //       //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         EntranceFader(
        //           offset: Offset(0, -10),
        //           delay: Duration(milliseconds: 100),
        //           duration: Duration(milliseconds: 250),
        //           child: IconButton(
        //             icon: Icon(
        //               Ionicons.md_exit,
        //               color: Colors.white,
        //               size: MediaQuery.of(context).size.width * 0.0095,
        //             ),
        //             //iconSize: height,
        //             onPressed: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => AdminLogin(),
        //                 ),
        //               );
        //             },
        //             //hoverColor: kPrimaryColor,
        //           ),
        //         ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //       ],
        //     ))
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
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                    builder: (BuildContext context) => MainPage()));
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
