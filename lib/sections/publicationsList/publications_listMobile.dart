import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listArticle.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listList.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

import '../../animations/entranceFader.dart';
import '../../constants.dart';
import '../../widget/projectCard.dart';
import '../../widget/publication_card.dart';

class PublicationsListMobile extends StatefulWidget {
  const PublicationsListMobile({Key key}) : super(key: key);

  @override
  _PublicationsListMobileState createState() => _PublicationsListMobileState();
}

class _PublicationsListMobileState extends State<PublicationsListMobile> {
  final List<String> _sectionsName = [
    "ABOUT US",
    "PRACTICE AREAS",
    "OUR TEAM",
    "CONTACT",
  ];
  String description = "2480 sayılı Yargı Alanındaki Hak Kayıplarının Önlenmesi Amacıyla Getirilen Durma Süresinin Uzatılmasına Dair  Karar (“Karar”) 29/04/2020 tarih 31114 sayılı Resmî Gazete’de yayımlanmıştır. Söz konusu karar ile 7226 sayılı Kanun’un geçici 1 inci maddesi gereğince yargıda durmuş olan süreler uzatılmıştır. 12 Mart 2020 tarihi itibariyle Dünya Sağlık Örgütü tarafından pandemi olarak ilan edilmiş olan ve tüm dünyada etkileri artarak devam eden COVID-19 salgınına karşı tedbir amacıyla getirilmiştir." +
      "\nİşbu bilgi notu aracılığıyla 7226 sayılı Kanun’un geçici 1 inci maddesi ile anılan uzatma kararı incelenecektir. Buna göre"
          "\n7226 sayılı Bazı Kanunlarda Değişiklik Yapılmasına Dair Kanun (“Kanun”) 26/03/2020 tarih 31080 sayılı Resmî Gazete’de yayımlanmış olup, ilgili Kanun’un geçici 1 inci maddesi ile hukukumuzda süreler bir takım istisnalar dışında durmuştur. COVID-19 salgının ekonomik etkilerinin yanı sıra yargılama ve dava açma bakımından birçok hak kaybına yol açtığı durumlar tüm dünyada olduğu gibi Türkiye’de de görülmüştür. Kanun’la getirilen geçici madde ile yaşanan hak kayıplarının önüne geçilmesi amaçlanmıştır. Bu kapsamda dava açma, icra takibi başlatma, başvuru, şikâyet, itiraz, ihtar, bildirim, ibraz ve zamanaşımı süreleri, hak düşürücü süreler ve zorunlu idari başvuru süreleri de dâhil olmak üzere bir hakkın doğumu, kullanımı veya sona ermesine ilişkin tüm süreler;  İdari Yargılama Usulü Kanunu, Ceza Muhakemesi Kanunu ve Hukuk Muhakemeleri Kanunu ile usul hükmü içeren diğer kanunlarda taraflar bakımından belirlenen süreler ve bu kapsamda hâkim tarafından tayin edilen süreler ile arabuluculuk ve uzlaştırma kurumlarındaki süreler 13/3/2020 (bu tarih dâhil) tarihinden itibaren 30/04/2020 tarihine kadar durmuştur." +
      "\nBenzer şekilde, İcra ve İflas Kanunu ile takip hukukuna ilişkin diğer kanunlarda belirlenen süreler ve bu kapsamda hâkim veya icra ve iflas daireleri tarafından tayin edilen süreler; nafaka alacaklarına ilişkin icra takipleri hariç olmak üzere tüm icra ve iflas takipleri, taraf ve takip işlemleri, yeni icra ve iflas takip taleplerinin alınması, ihtiyati haciz kararlarının icra ve infazına ilişkin işlemler 22/3/2020 (bu tarih dâhil) tarihinden itibaren 30/04/2020 tarihine kadar durmuştur." +
      "\nAynı maddenin devam eden hükümlerinde ise durma süresinin sona erdiği günü takip eden günden itibaren işlemeye başlar. Durma süresinin başladığı tarih itibarıyla yani 13/03/2020 itibariyle, bitimine on beş gün ve daha az kalmış olan süreler, durma süresinin sona erdiği günü takip eden günden başlamak üzere on beş gün uzamış sayılır. Salgının devam etmesi halinde Cumhurbaşkanı durma süresini altı ayı geçmemek üzere bir kez uzatabilir ve bu döneme ilişkin kapsamı daraltabilir denilmektedir. Anılan karar ile Cumhurbaşkanı 7226 sayılı Kanun’un geçici 1 inci maddesi hükmünden almış olduğu yetkiyi kullanarak 30.04.2020 tarihine kadar olan durma süresini 15.06.2020 tarihine uzatmıştır. Aynı zamanda geçici maddede durma süreleri kapsamında yer alan 4734 sayılı Kamu İhlale Kanununda öngörülen zorunlu idari başvuru yoluna ilişkin süreler, uzatma kararında kapsam dışı bırakılmıştır. Anılan kararda uzatma süresinin yanına bir şerh düşülmüştür. Buna göre “salgın hastalığın yayılma tehlikesinin daha önce ortadan kalkması halinde yeniden değerlendirilmek üzere” denilerek bu uzatma süresinin şartlar oluşursa yeni bir karar ile 15 Hazirandan önce sona erebileceği ihtimali doğmuştur." +
      "\nBu kapsamda aşağıda durma süresinin istisnalarını sayılmaktadır. Buna göre;" +
      "\nİstisnalar"
          "\n1- Suç ve ceza, kabahat ve idari yaptırım ile disiplin hapsi ve tazyik hapsi için kanunlarda düzenlenen zamanaşımı süreleri" +
      "\n2- 5271 sayılı Kanunda düzenlenen koruma tedbirlerine ilişkin süreler." +
      "\n3- 6100 sayılı Kanunda düzenlenen ihtiyati tedbiri tamamlayan işlemlere ilişkin süreler." +
      "\n4- 4734 sayılı Kamu İhlale Kanununda öngörülen zorunlu idari başvuru yoluna ilişkin süreler(Sadece uzatma kararı kapsamı dışındadır yani 13.03.2020-30.04.2020 arası durmuştur.)" +
      "\nİcra ve İflas Kanunu ile Takip Hukuku Bakımından" +
      "\n1- İcra ve İflas daireleri tarafından yapılacak satışların durma süresi içerisinde kalması durumunda talep aranmaksızın bu satışlara durma süresi(15 Haziran) sonrası yeni bir gün verilir. Bu durumda satış ilanı sadece elektronik ortamda yapılır ve ilan için ayrıca ücret alınmaz" +
      "\n2- Durma süresi içinde rızaen yapılan ödemeler kabul edilir ve taraflardan biri, diğer tarafın lehine olan işlemlerin yapılmasını talep edebilir." +
      "\n3- Konkordato mühletinin alacaklı ve borçlu bakımından sonuçları, durma süresince devam eder." +
      "\nSonuç olarak İcra ve İflas Kanunu ile takip hukuku kapsamına girmeyen süreler 13.03.2020-15.06.2020 arasında durmuştur. İcra ve İflas Kanunu ve takip hukukuna ilişkin süreler ise 22.03.2020-15.06.2020 tarihleri arasında durmuştur. Ancak anılan uzatma süresinin yani 15 Haziran tarihinin kesin olmadığı ve yeni bir karar ile daha erken bir tarihe çekilme ihtimalinin olduğu unutulmamalıdır." +
      "\nSaygılarımızla," +
      "\nAv. Hasan Ali ŞIVGIN" +
      "\nStj. Av. Ecem GÖKÇE";

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
              Container(
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
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "We value the future",
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
                    child: TextRenderer(
                      text:  "Founded in 1988, çınar & çınar is a full service law offıce that provides high quality professional Services in a broad range of legal practices and industries. Our focus is to provide creative, effıcient and innovative advice that meets our Clients' commercial needs. At çınar & çınar, we dedicate our enthusiasm and our energy to success of our Clients with our proactive, experienced and well-qualifıed team members.\n\n",
                      child: AdaptiveText(
                        "Founded in 1988, çınar & çınar is a full service law offıce that provides high quality professional Services in a broad range of legal practices and industries. Our focus is to provide creative, effıcient and innovative advice that meets our Clients' commercial needs. At çınar & çınar, we dedicate our enthusiasm and our energy to success of our Clients with our proactive, experienced and well-qualifıed team members.\n\n",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.013,
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
                      text:  "Çınar&Çınar has expertise in a broad spectrum of practice areas including International Commercial Transactions and International Contracts, Corporate Services, Mergers & Acquisitions, Banking & Finance, Labour Law & Employment, Social Security Law, Litigation & Arbitration, Intellectual Property Law Data Protection Law Energy, Natural Resources and Mining Law, Privatization, Criminal Law, Insurance Law, Tax Law, Real Estate Law, Tourism Law, Construction Law, Environmental Law, Inheritance Law, Family Law and Sports Law \n\n",
                      child: AdaptiveText(
                        "Çınar&Çınar has expertise in a broad spectrum of practice areas including International Commercial Transactions and International Contracts, Corporate Services, Mergers & Acquisitions, Banking & Finance, Labour Law & Employment, Social Security Law, Litigation & Arbitration, Intellectual Property Law Data Protection Law Energy, Natural Resources and Mining Law, Privatization, Criminal Law, Insurance Law, Tax Law, Real Estate Law, Tourism Law, Construction Law, Environmental Law, Inheritance Law, Family Law and Sports Law \n\n",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.013,
                          color: Colors.grey[500],
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
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
              CarouselSlider.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int itemIndex, int i) =>
                    Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: PublicationCard(
                    cardHeight: height * 0.3,
                    cardWidth: width * 0.7,
                    color: Colors.white70,
                    //projectIcon: kProjectsIcons[i],
                    title: "4/5/2020",
                    description:
                        "YARGI ALANINDAKİ HAK KAYIPLARININ ÖNLENMESİ AMACIYLA GETİRİLEN DURMA SÜRELERİNİN UZATILMASINA DAİR BİLGİ NOTU",
                  ),
                ),
                options: CarouselOptions(
                    height: height * 0.3,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    enlargeCenterPage: true,
                    pauseAutoPlayOnTouch: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enableInfiniteScroll: false),
              ),
              
              SizedBox(
                width: width * 0.012,
              ),
               Padding(
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
              ),
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
              CarouselSlider.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int itemIndex, int i) =>
                    Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: PublicationCard(
                    cardHeight: height * 0.3,
                    cardWidth: width * 0.7,
                    color: Color(0xff959190),
                    //projectIcon: kProjectsIcons[i],
                    title: "",
                    description:
                        "İstanbul Hukuk Konferansı Medya ve Reklam Hukuku",
                  ),
                ),
                options: CarouselOptions(
                    height: height * 0.3,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    enlargeCenterPage: true,
                    pauseAutoPlayOnTouch: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enableInfiniteScroll: false),
              ),
              Footer()
            ],
          ),
        ),
      ),
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
                        builder: (context) => PublicationsListMobile(),
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
