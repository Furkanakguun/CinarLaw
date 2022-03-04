import 'package:cinarlaw/sections/Carrier/carrier.dart';
import 'package:cinarlaw/sections/home/home.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listArticle.dart';
import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../animations/entranceFader.dart';
import '../../constants.dart';

class PublicationsListDesktop extends StatefulWidget {
  const PublicationsListDesktop({Key key}) : super(key: key);

  @override
  _PublicationsListDesktopState createState() =>
      _PublicationsListDesktopState();
}

class _PublicationsListDesktopState extends State<PublicationsListDesktop> {
  final List<String> _sectionsName = [
    "ABOUT",
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

  String description2 =
      "Çin Halk Cumhuriyeti’nde ortaya çıkan ve sonrasında da tüm dünyada etkisini gösteren Covid 19 salgına karşı verilen mücadele artık sağlık alanındaki geleneksel tıbbi mücadeleyi aşmış teknolojik imkanların yardımı ile salgına karşı etkin bir mücadele verilmeye başlanmıştır. Bu mücadele kapsamında Kişisel Verileri Koruma Kurumu (KVKK) 09.04.2020 tarihinde bir kamuoyu duyurusu paylaşmıştır.\n" +
          "Yapılan duyuru salgına karşı mücadele kapsamında kullanılan teknolojik imkanlara ilişkindir. Bu teknolojik imkanlar karşımıza mobil uygulamalar vasıtası ile hastalık taşıyan kimselerin veya hastalık riski bulunanların temas ettikleri ortamların tespit edilmesi, bu sayede virüsün yayılma haritasının çıkarılması ve karantina uygulanması veya sosyal izolasyona uyulmayan kalabalık yerlerin tespit edilmesi gibi faaliyetler olarak çıkmaktadır. Bahsi geçen faaliyetler sırasında ilgili pek çok kimsenin kişisel verisi toplanmakta ve bu yolla da kişisel verileri işlenmektedir.\n" +
          "Sağlık verisi gibi özel nitelikli kişisel veriler 6698 sayılı Kişisel Verilerin Korunması Kanunu 6.maddesi 3.fıkrasına göre sır saklama yükümlülüğü altında bulunan kişiler veya yetkili kurum ve kuruluşlar tarafından ilgilinin açık rızası aranmaksızın işlenebilir. Bununla birlikte kurum açıklamasında teknolojik imkanlar yoluyla alınan tedbirler kapsamında, toplanan konum verilerine değinmiş ve konum verisini “Elektronik Haberleşme Sektöründe Kişisel Verilerin İşlenmesi ve Gizliliğinin Korunması Hakkında Yönetmelikte “Kamuya açık elektronik haberleşme hizmeti kullanıcısına ait bir cihazın coğrafi konumunu belirleyen ve elektronik haberleşme şebekesinde veya elektronik haberleşme hizmeti aracılığıyla işlenen belirli veri” olarak tanımlamış ve konum verisinin 6698 sayılı kanuna göre bir kişisel veri olduğunun altını çizmiştir.\n" +
          "Bu kapsamda Kurum, kamu düzeni ve güvenliğini tehdit eden Covid-19 salgınına karşı, hastalığın yayılmasının önüne geçmek amacıyla konum verisi toplanması faaliyetini Kişisel Verilerin Korunması Kanunu’nun Yedinci Bölümü’nün İstisnalar başlıklı 28.maddesinin 1. Fıkrasının ç. bendine göre “Kişisel verilerin millî savunmayı, millî güvenliği, kamu güvenliğini, kamu düzenini veya ekonomik güvenliği sağlamaya yönelik olarak kanunla görev ve yetki verilmiş kamu kurum ve kuruluşları tarafından yürütülen önleyici, koruyucu ve istihbari faaliyetler kapsamında işlenmesi.” istisna kapsamına sokmuş ve konum verisinin toplanması faaliyetini “hastalık teşhisi konuş kişilerin bulaşıcılığının sürdüğü dönemde izolasyonlarının temin edilmesine, genel nüfusun konum verilerinin işlenmesi suretiyle kalabalık alanların tespit edilmesine ve bu kapsamda önemler geliştirilmesine yönelik faaliyetler” olarak açıklamış ve bu kapsamdaki veri işleme faaliyetlerinin tümünü istisnalar kapsamına almıştır. Yani kurum bu duyurusu ile, Covid-19 salgına karşı mücadele veren ve bu mücadele kapsamında konum verisi işleyen kamu kurum ve kuruluşlarının bu verileri işlemelerinin önündeki engelleri kaldırmıştır.\n" +
          "Bununla birlikte kurum, hastalıkla mücadele faaliyeti içerisinde işlenen türlü çeşit verinin üçüncü kişilerce ele geçirilmesi durumunu da dikkate almış ve ilgili kurum ve kuruluşların işledikleri kişisel verilerin güvenliğini sağlamaları gerektiğinin altını çizmiş ve veri güvenliği için gereken teknik ve idari tedbirleri almalarını, bununla birlikte bahsi geçen verilerin işlenmesine sebep olan durumların ortadan kalkması ile beraber söz konusu kişisel verilerin silinmesi veya yok edilmesi gerektiğini hatırlatmıştır. Bizler de KVKK tarafından altı çizilen hususlar hakkında bütün veri sorumlularının oldukça dikkatli olmalarını ve yaşanan salgın sürecinde dahi veri sorumluları için belirlenmiş olan yükümlülüklerin devam ettiğini önemle vurgulamak isteriz.\n\n" +
          "Saygılarımla\n\n" +
          "Av. Ahmet Atakan GİDER\n" +
          "Stj. Av. Mehmet GÜRBÜZ";


  String description3 =
      "Cumhurbaşkanlığı, 02 Nisan 2020 tarihinde yayımlanan 2020/5 sayılı Genelgesi ile (“Genelge”) ile birlikte, Covid-19 salgını nedeniyle devamlılığı etkilenecek olan, Kamu İhale Kanunu kapsamında yapılan ihaleler sonucunda imzalanan sözleşmelere ilişkin başvuru yoluna açıklık getirmiştir. COVID-19 salgını nedeniyle tüm dünyada olduğu gibi Türkiye’de de çoğu sektörden küçük ve büyük işletmeler/şirketler ekonomik anlamda zorluluklar yaşamaktadırlar. Yaşanan bu zorluklar nedeniyle bahsi geçen işletmeler/şirketler altına girdikleri sözleşmesel yükümlülükleri yerine getirememektedirler. Bu durum Kamu İhale Kanunu kapsamında gerçekleştirilen ihaleler sonucunda imzalanan sözleşmelerde yüklenici sıfatını taşıyan özel hukuk kişileri bakımından da gözlenebilmektedir.\n" +
          "Genelge’de, imzalanan sözleşmelerde yükümlülüklerini geçici veya sürekli olarak yerine getirmesi kısmen veya tamamen imkansız hale gelen yüklenicilerin başvuracağı yöntem belirtilmiştir. Buna göre yükleniciler bu durumu belgeleyerek sözleşmenin tarafı olan idareye başvurabileceklerdir. Kendisine başvuru yapılan idare ise Kamu İhale Sözleşmeleri Kanunu’nun “Mücbir Sebep” başlıklı 10. Maddesi ve ilgili diğer mevzuat hükümleri uyarınca inceleyecektir. Konu ile ilgili karar alınmadan önce ise Hazine ve Maliye Bakanlığı’nın değerlendirmesi alınacaktır.\n" +
          "Genelge kapsamında yapılan değerlendirme sonucunda sözleşme ile ilgili süre uzatımı veya fesih kararı verilecektir. Bu iki karardan birinin gerçekleşebilmesi için aşağıdaki şartların bir arada bulunması gerekmektedir:\n" +
          "• Ortaya çıkan durumun yükleniciden kaynaklanan bir kusurdan ileri gelmemiş olması,\n"+
                 "• Yüklenicinin sözleşmeden doğan yükümlülüklerini yerine getirmesine engel nitelikte olması,\n"+
                        "• Yüklenicinin bu engeli ortadan kaldırmaya gücünün yetmemesi şartlarının birlikte gerçekleştiğinin tespit edilmesi.\n"+
          "COVID-19 salgını nedeniyle ortaya çıkan ekonomik durumun bütün sözleşmeleri etkileyeceği düşünülmekte ve bu etkiler şu an dahi gözlenebilmektedir. Kamu ihale sözleşmeleri bakımından Genelge ile bu etkinin sonucunda başvurulacak yöntem konusuna bir açıklık getirilmiş olup İdarenin süre uzatım veya fesih kararı verirken durumun koşullarını değerlendirmesi gerekmektedir.\n\n" +
          "Saygılarımla\n\n" +
          "Av. Onur Özkan";

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
                    color: Colors.black.withOpacity(0.3),
                    image: DecorationImage(
                      image: AssetImage("assets/akademi.jpg"),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: width < 1200 ? width * 0.80 : width * 0.45,
                    child: AdaptiveText(
                      "Çınar&Çınar Law Office places great importance to education, especially legal training. Çınar Legal and Academic Researches Association (‘Çınar Academy’) was founded especially in consideration of law students, lawyers and disabled citizens who intend to work within the legal sector. \n\n",
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
                      "Within the education center established in scope of the Çınar Academy; seminars, conferences, and various educational programs are being held. Through these events, the Academy is able to offer both guidance and assistance to its attendants to become jurists who are well prepared for the professional and academic journey and who are widely experienced in the field of international law.  \n\n",
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
                    horizontal: width < 1200 ? width * (0.20) : width * (0.15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PublicationsListArticle(
                                title:
                                    "YARGI ALANINDAKİ HAK KAYIPLARININ ÖNLENMESİ AMACIYLA GETİRİLEN DURMA SÜRELERİNİN UZATILMASINA DAİR BİLGİ NOTU",
                                description: description),
                          ),
                        );
                      },
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 25.0,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     image: AssetImage('assets/adakemi.jpg'),
                            //     fit: BoxFit.cover)
                          ),
                          width: width < 1200 ? width * 0.60 : width * 0.20,
                          height: height * 0.30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: width * 0.08, left: 7, right: 7),
                          child: Center(
                            child: Container(
                              color: Colors.transparent,
                              width: width < 1200 ? width * 0.60 : width * 0.19,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '4/5/2020',
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
                                    'YARGI ALANINDAKİ HAK KAYIPLARININ ÖNLENMESİ AMACIYLA GETİRİLEN DURMA SÜRELERİNİN UZATILMASINA DAİR BİLGİ NOTU ',
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
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PublicationsListArticle(
                                title:
                                    "COVID-19 SALGINININ KAMU İHALE SÖZLEŞMELERİNE ETKİSİNE İLİŞKİN GENELGE",
                                description: description3),
                          ),
                        );
                      },
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 25.0,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     image: AssetImage('assets/adakemi.jpg'),
                            //     fit: BoxFit.cover)
                          ),
                          width: width < 1200 ? width * 0.60 : width * 0.20,
                          height: height * 0.30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: width * 0.08, left: 7, right: 7),
                          child: Center(
                            child: Container(
                              color: Colors.transparent,
                              width: width < 1200 ? width * 0.60 : width * 0.19,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '20/4/2020',
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
                                    'COVID-19 SALGINININ KAMU İHALE SÖZLEŞMELERİNE ETKİSİNE İLİŞKİN GENELGE ',
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
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PublicationsListArticle(
                                title:
                                    "KVKK KAPSAMINDA KONUM VERİSİNİN İŞLENMESİ",
                                description: description2),
                          ),
                        );
                      },
                      child: Stack(children: [
                        Container(
                          decoration: BoxDecoration(
                            //border: Border.all(color: Colors.grey),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 25.0,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(12),
                            // image: DecorationImage(
                            //     image: AssetImage('assets/adakemi.jpg'),
                            //     fit: BoxFit.cover)
                          ),
                          width: width < 1200 ? width * 0.60 : width * 0.20,
                          height: height * 0.30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: width * 0.08, left: 7, right: 7),
                          child: Center(
                            child: Container(
                              color: Colors.transparent,
                              width: width < 1200 ? width * 0.60 : width * 0.19,
                              child: Column(
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '13/4/2020',
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
                                    'KVKK KAPSAMINDA KONUM VERİSİNİN İŞLENMESİ ',
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
                    ),
                  ],
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
              SizedBox(
                width: width * 0.012,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 25.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                          color: Color(0xff959190),
                          borderRadius: BorderRadius.circular(12),
                          // image: DecorationImage(
                          //     image: AssetImage('assets/adakemi.jpg'),
                          //     fit: BoxFit.cover)
                        ),
                        width: width < 1200 ? width * 0.60 : width * 0.20,
                        height: height * 0.30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: width * 0.10, left: 12, right: 12),
                        child: Center(
                          child: Container(
                            color: Colors.transparent,
                            width: width < 1200 ? width * 0.60 : width * 0.17,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'İstanbul Hukuk Konferansı Medya ve Reklam Hukuku ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: height * 0.017,
                                      color: Colors.white,
                                      height: 1.5,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                    Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 25.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                          color: Color(0xff9b8c9f),
                          borderRadius: BorderRadius.circular(12),
                          // image: DecorationImage(
                          //     image: AssetImage('assets/adakemi.jpg'),
                          //     fit: BoxFit.cover)
                        ),
                        width: width < 1200 ? width * 0.60 : width * 0.20,
                        height: height * 0.30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: width * 0.10, left: 12, right: 12),
                        child: Center(
                          child: Container(
                            color: Colors.transparent,
                            width: width < 1200 ? width * 0.60 : width * 0.17,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'İstanbul Hukuk Konferansı Medya ve Reklam Hukuku ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: height * 0.017,
                                      color: Colors.white,
                                      height: 1.5,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                    Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                          //border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 25.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                          color: Color(0xffcdb68c),
                          borderRadius: BorderRadius.circular(12),
                          // image: DecorationImage(
                          //     image: AssetImage('assets/adakemi.jpg'),
                          //     fit: BoxFit.cover)
                        ),
                        width: width < 1200 ? width * 0.60 : width * 0.20,
                        height: height * 0.30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: width * 0.10, left: 12, right: 12),
                        child: Center(
                          child: Container(
                            color: Colors.transparent,
                            width: width < 1200 ? width * 0.60 : width * 0.17,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'İstanbul Hukuk Konferansı Medya ve Reklam Hukuku ',
                                  style: GoogleFonts.montserrat(
                                      fontSize: height * 0.017,
                                      color: Colors.white,
                                      height: 1.5,
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: 62,
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
                  onPressed: () {},
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
            ? Container(
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
                        builder: (context) => CarrierDesktop(),
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
