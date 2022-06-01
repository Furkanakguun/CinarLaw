import 'package:cinarlaw/translation/translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xFF3A2E1E);
const Color mainColor = Color(0xFF3A2E1E);
const Color mainColorWhite = Color(0xFF86754D);
//const Color mainColorWhite = Color(0xFF86754D);
// Social Media
const kSocialIcons = [
  "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  // "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

const kSocialLinks = [
  "https://facebook.com/mhmzdev",
  "https://instagram.com/mhmzdev",
  "https://twitter.com/mhmzdev",
  "https://www.linkedin.com/company/cinarlaw/?originalSubdomain=tr",
  "https://github.com/mhmzdev",
  "https://mhamzadev.medium.com"
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

// Community
final kCommunityLogo = [
  'assets/cui.png',
  'assets/flutterIsl.png',
  'assets/dsc.png'
];

final kCommunityLinks = [
  "https://www.comsats.edu.pk/",
  "https://web.facebook.com/FlutterIslamabadPakistan/",
  "https://dsc.community.dev/comsats-university-islamabad/"
];

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Python",
  "Java",
  "C++",
  "HTML",
  "CSS",
  "Bootstrap"
];

// services
final kServicesIcons = [
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/blog.png",
  "assets/services/open.png",
  "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
  "assets/services/open.png",
];

  List<String> kServicesTitles = [
  CinarTranslations.practice1.tr,
  "Corporate Services ",
  "Mergers & Acquisitions",
  "Banking & Finance",
  "Private Equity / Venture Capital",
  "Labour Law / Employment/ Social Security Law",
  "Litigation & Arbitration",
  "Intellectual Property",
  "Data Protection Law",
  "Construction and Infrastructure",
  "Energy, Natural Resources and Mining",
];

// final kServicesDescriptions = [
//   "For now, I can only develop Android Apps using Flutter, that's because I don't own a MacBook right now so can't test or debug apps for iOS. Hopefully this missing piece will be filled soon :)",
//   "Although I'm mainly a flutter developer but I do care about the UI/UX for my client. Hence, I also do UI designing for applications. So, feel free to ask me for getting you UI/UX for your apps",
//   "Having a startup idea? Or maybe just want a prototype for your clients? With Flutter I can get you basic version of your app in no time and you are good to go for your project in future.",
//   "I have been writing technical blogs on Medium for over a year now. So, I can get you technical blogs with awesome header images with interesting topics.\nMy Medium profile @mhamzadev",
//   "Working as open source contributor on GitHub with 200+ stars and numerous forks on various projects liked and shared by other developers.\nMy GitHub Profile @mhmzdev",
// ];

final kServicesDescriptions = [
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
];

final kServicesLinks = [
   CinarTranslations.practiceDes1.tr,
  "Çınar&Çınar provides high-quality corporate advice to both international and domestic corporations from general corporate issues to most challenging matters. We consult on legal matters at ali stages of development of a business. We assist our Clients in incorporation transactions of domestic companies or companies with foreign Capital such as preparation of foundation documents, Articles of Associations and applications to relevant authorities. We also advise on share transfers, shareholder's rights, opening branches or liaison offices in or outside Turkey, corporate governance issues, general assembly meetings, board meetings, Capital increase operations, class change operations; contracting issues such as employment contracts, stock option agreements, licensing agreements, franchise agreements, supply agreements, distributorship and agency contracts. Furthermore, çınar & çınar provides consultancy servicesin a diverse set of partnership transactions such as joint venture structuring. çınar & çınar possesses outstanding reputation for further advising joint-ventures on issues related to competition law, arbitration, intellectual property law and corporate governance. We always collaborate with the parties' in-house counsels to better identify their objectives and commercial culture, and to meet their commercial needs. We develop innovative and effıcient approaches to deal with complex and challenging matters  and to structure most effıcient way to develop a business. ",
  "Mergers, acquisitions and takeovers together constitute one of çinar & çinar most common practice area. Our team members have considerable knowledge and experience in the structure and negotiation of M&A transactions. Our team has experience in all relevant aspects relevant to a business acquisition and is prepared to succeed at all stages of the acquisition transaction including pre-negotiation, extensive due diligence investigation, drafting and negotiating share transfer and asset transfer agreements, and coordinating financial arrangements. Additionally we guide our clients in matters such as employment, environmental, competition and real estate issues",
  "Our Banking & Finance team provides the well-qualified legal services both to local and foreign clients. Our team members have experience in all sorts of financing transactions including bank lending, receivable financing, debt restructuring, credit agreements, insolvency, bankruptcy process, corporate trust matters and general consultancy service to domestic and international Clients. Our practice also includes regular representation of companies, creditors such as domestic and international banks and other financial institutions, insolvency practitioners, financially troubled companies. Our considerable litigation experience proves our knowledge and success in the field of Banking & Finance",
  "Çınar&Çınar provides high-qualified consultancy services in the field of private equity and venture Capital. The field has a multidisciplinary approach to deal with legal problems that might arise from private equity and venture capital transactions such as structuring and organizing investment funds, executing acquisitions, exit transactions. In order to provide best consultancy services to private equity investors or their portfolio companies, we combine our private equity experience with our experience in related practice areas, such as general corporate services, Tax Law, Mergers and Acquisitions, Project Finance and Real Estate",
  "In Turkey, the relationship between employee and employer is very formal and highly regulated and the majority of the legislation is in favor of the employee and aims to protect the employee's interests rather than those of the employer.At çınar & çınar, we give legal advice to national and International employers from various sectors. Our consultancy service concerns all aspects of Turkish Labour Law and Social Security Law. We give legal advice on a broad spectrum of employment issues including but not limited to day-to-day issues, contracts and issues regarding the termination, recruitment and retention of the employee ",
  "Çınar & Çınar is one of the few Turkish law firms that combine international legal practice with knowledge and experience of litigation before Turkish civil, criminal and administrative courts. Our team members have extensive experience in a wide range of civil, criminal and administrative litigation matters, at first instance and appellate levels. We regularly manage commercial and individual compensation cases, unfair competition cases, real estate disputes, shareholding disputes, bankruptcy and execution proceedings, labour law cases, intellectual property infringeınent cases, recognition and enforcement of judgments ar & çınar also has considerable experience in arbitration, ınediation and negotiations. Our partners have been involved mostly in institutional arbitrations such as the Landon Court of International Arbitration. Our team has reliable knowledge about the rules of arbitration of International Chamber of Commererce, UNCITRAL, ICSID and AAA. The Firm has successfully represented Turkish and foreign clients in many recognition and enforcement procedures of arbitral awards. ",
  "Our Intellectual Property team is well qualified in Turkey to provide its clients with the complete range of legal services for protecting and exploiting all types of intellectual property assets. We represent our Clients in the registration and protection of patents, utility models, industrial designs, trademarks, geographical signs and copyrights. We also assist our Clients in drafting Intellectual Property Agreements, License Agreements, Transfer of Registered Trademarks and Patents Agreements, Technology Transfer Agreeınents, Technical Assistance Agreements, Franchise Agreements. In addition, we assist our Clients with respect to all formns of infringement issues in order to provide maximum protection of their intellectual property. ",
  "Data protection law will play a very important role in Turkish Business Life and change almost everything that the companies have been used to. Furthermore, there is no doubt that the process of complying with the Data Protection Law in Turkey will cause a significant challenge for the firms. In accordance with latest regulations on Data Protection Law in Turkey (KVKK) and GDPR çınar&çınar Data Protection team provides high-level consultansy services for its clients. We represent our clients in the registration process for data controller system (VERBIS), we give seminars and conferences in order to increase awareness about Personal Data Protection of out clients. Our team has also been experienced in fields of drafting Data Protection Policy - Clarifacition Text, creating a Data Protection know-how and train the employees with a regular plan",
  "Since the inception of our law firm, Construction Agreements and any sort of construction related transactions have been deemed one of the most important areas of law for us. The Firm has been proudly involved in a wide variety of large construction and infrastructure projects and concluded ali of them in a timely and efficient manner. In addition to our specialized and well-qualified team members, our firm also employs construction experts and consultants to minimize risks, which may arise during construction projects. Our attorneys and outsource counsels in different countries have considerable knowledge and experience in drafting construction contracts and dealing with dispute resolutions in accordance with FIDIC as well as domestic regulations in foreign States. ",
  "In the emerging Turkish Energy market with ever changing regulations, çınar & çınar has an excellent reputation in completing complex regulatory transactions and contracts in energy and power projects. We provide a wide range of legal Services for energy matters such as project fınance and development, drafting and fınalizing contracts (Concession Agreements, B.O.T and B.0.O Agreements, Take-or-Pay Contracts, 1NG Contracts). We also represent our Clients in administrative and fıscal transactions. Our partners have extensive knowledge in electricity market  regulations, having involved in drafting the Turkish Electricity Law No 4628. Our team has also been involved in numerous mining projects such as gold mining. At çınar & çınar, we also assist our Clients with regards to administrative and legal transactions for mining projects which includes financing prospective operations, prospective license transactions, drafting and negotiating agreements, mining lease,  renunciation of mines and other related issues. We also provide consultancy Services to companies for future  partnership opportunities.",
];

// Our Team
final kOurTeamBanner = [
  "assets/Emir_Cinar.png",
  "assets/Hakan_Cinar.png",
  "assets/Duygu_Akan.png",
  "assets/Emir_Cinar.png",
  "assets/Hakan_Cinar.png",
  "assets/Duygu_Akan.png",
  "assets/Emir_Cinar.png",
  "assets/Hakan_Cinar.png",
  "assets/Duygu_Akan.png",
  "assets/Hakan_Cinar.png",
];

final kOurTeamTitles = [
  "Mr Cinar",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
];

final kOurTeamDescriptions = [
  "Emir Çınar",
  "M. Hakan Çınar",
  "Duygu Akan",
  "Ahmet Atakan Gider",
  "Nurşen Yamantürk",
  "Onur Özkan",
  "Onur Özkan",
  "Onur Özkan",
  "Onur Özkan",
  "Onur Özkan",
];

final kOurTeamLinks = [
  "https://www.linkedin.com/in/emir-c%C4%B1nar-5a1a8548/",
  "https://www.linkedin.com/in/m-hakan-cinar-35770136/",
  "https://www.linkedin.com/in/duygu-akan-5628394a/",
  "https://www.linkedin.com/in/ahmet-atakan-gider-66b290130/",
  "https://www.linkedin.com/in/a-nur%C5%9Fen-yamant%C3%BCrk-o%C4%9Fuz-2041a4152/",
  "https://www.linkedin.com/in/onur-ozkan-a7b628bb/",
  "https://www.linkedin.com/in/onur-ozkan-a7b628bb/",
  "https://www.linkedin.com/in/onur-ozkan-a7b628bb/",
  "https://www.linkedin.com/in/onur-ozkan-a7b628bb/",
  "https://www.linkedin.com/in/onur-ozkan-a7b628bb/",
];

//new&publications

// projects
final kPublicsBanner = [
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
];

final kPublicsIcons = [
  "assets/projects/medkit.png",
  "assets/projects/quran.png",
  "assets/projects/hereiam.png",
  "assets/projects/covid.png",
  "assets/projects/messenger.png",
  "assets/projects/flutter.png",
  "assets/projects/earbender.png",
  "assets/projects/java.png",
  "assets/projects/android.png",
  "assets/services/open.png",
];

final kPublicsTitles = [
  "4/5/2020",
  "4/5/2020",
  "4/5/2020",
  "4/5/2020",
  "4/5/2020",
  "4/5/2020",
  "4/5/2020",
];

final kPublicsDescriptions = [
  "YARGI ALANINDAKİ HAK KAYIPLARININ ÖNLENMESİ AMACIYLA GETİRİLEN DURMA SÜRELERİNİN UZATILMASINA DAİR BİLGİ NOTU",
  "COVID-19 SALGINININ EKONOMİK VE SOSYAL HAYATA ETKİLERİNİN AZALTILMASI AMACIYLA GETİRİLEN YENİ DÜZENLEMELER",
  "KVKK KAPSAMINDA KONUM VERİSİNİN İŞLENMESİ",
  "COVID-19 SALGINININ KİRA SÖZLEŞMELERİNE ETKİSİ",
  "COVID-19 SEBEBİYLE VERGİ USUL KANUNU’NUN MÜCBİR SEBEP HÜKÜMLERİNDEN FAYDALANDIRILMASI",
  "COVID-19 SALGINININ İŞ SÖZLEŞMELERİNE VE ÇALIŞMA USULLERİNE ETKİSİ",
  "COVID-19 SALGINININ İŞ SÖZLEŞMELERİNE VE ÇALIŞMA USULLERİNE ETKİSİ",
];

final kPublicsLinks = [
  "https://www.linkedin.com/in/emir-c%C4%B1nar-5a1a8548/",
  "https://www.linkedin.com/in/m-hakan-cinar-35770136/",
  "https://www.linkedin.com/in/duygu-akan-5628394a/",
  "https://www.linkedin.com/in/ahmet-atakan-gider-66b290130/",
  "https://www.linkedin.com/in/a-nur%C5%9Fen-yamant%C3%BCrk-o%C4%9Fuz-2041a4152/",
  "https://www.linkedin.com/in/onur-ozkan-a7b628bb/",
];
// Contact
final kContactIcons = [
  Icons.home,
  Icons.phone,
  Icons.mail,
];

final kContactTitles = [
  "Location",
  "Phone",
  "Email",
];

final kContactDetails = [
  "İlkbahar Mah. Galip Erdem Cad. 621. Sok. No: 17 Oran/Çankaya / Ankara \n" +
      "Maslak Mah. Akasya Sok. Eclipse Business E Blok Kat:5  D:5 Maslak / Sarıyer / İstanbul \n",
  "Ankara: +90 312 426 90 22 \n" + "İstanbul: +90 212 963 02 29",
  "info@cinarlaw.com"
];


final kMuseumImage = [

  "assets/museum/museum_1.jpg",
  "assets/museum/museum_2.jpg",
  "assets/museum/museum_3.jpg",
  "assets/museum/museum_4.jpg",
  "assets/museum/museum_5.jpg",
  "assets/museum/museum_6.jpg",
  "assets/museum/museum_7.jpg",
  "assets/museum/museum_8.jpg",

];
