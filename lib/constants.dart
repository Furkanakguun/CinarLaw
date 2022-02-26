import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xFF3A2E1E);
const Color mainColor = Color(0xFF3A2E1E);
const Color mainColorWhite = Color(0xFF86754D);
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
  "https://linkedin.com/in/mhmzdev",
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
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
   "assets/services/app.png",
  "assets/services/ui.png",
  "assets/services/rapid.png",
  "assets/services/blog.png",
  "assets/services/open.png",
];

final kServicesTitles = [
  "Construction and Infrastructure",
  "Corporate Services ",
  "Mergers & Acquisitions",
  "Litigation & Arbitration",
  "International Commercial Transactions and International Contracts",
  "Labour Law/ Employment/ Social Security Law",
  "Energy, Natural Resources and Mining",
  "International Commercial Transactions and International Contracts",
  "Labour Law/ Employment/ Social Security Law",
  "Energy, Natural Resources and Mining",
    "Construction and Infrastructure",
  "Corporate Services ",
  "Mergers & Acquisitions",
  "Litigation & Arbitration",
  "International Commercial Transactions and International Contracts",
  "Labour Law/ Employment/ Social Security Law",
  "Energy, Natural Resources and Mining",
  "International Commercial Transactions and International Contracts",
  "Labour Law/ Employment/ Social Security Law",
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
];

final kServicesLinks = [
 "Expert local advice is a major element for the International Commercial Transactions and International Contracts. We represent and advise both major Turkish exporters and foreign investors in the area of international contracts and international commercial transactions including international sales agreements, agency agreements, distribution agreements, export & import issues, free trade zones, licensing agreements, know-how agreements, franchise agreements and joint-ventures. Çınar & Çınar members have been involved in many international commercial transactions. In addition to our experience, our partners have been regularly lecturing at Ankara Bar Association on International Commercial Transactions and International Contracts. ",
 "Çınar & Çınar provides high-quality corporate advice to both international and domestic corporations from general corporate issues to most challenging matters. We consult on legal matters at ali stages of development of a business. We assist our Clients in incorporation transactions of domestic companies or companies with foreign Capital such as preparation of foundation documents, Articles of Associations and applications to relevant authorities. We also advise on share transfers, shareholder's rights, opening branches or liaison offıces in or outside Turkey, corporate governance issues, general assembly meetings, board meetings, Capital increase operations, class change operations; contracting issues such as employment contracts, stock option agreements, licensing agreements, franchise agreements, supply agreements, distributorship and agency contracts. Furthermore, çınar & çınar provides consultancy servicesin a diverse set of partnership transactions such as joint venture structuring. çınar & çınar possesses outstanding reputation for further advising joint-ventures on issues related to competition law, arbitration, intellectual property law and corporate governance. We always collaborate with the parties' in-house counsels to better identify their objectives and commercial culture, and to meet their commercial needs. We develop innovative and effıcient approaches to deal with complex and challenging matters  and to structure most effıcient way to develop a business. ",
  "Mergers, acquisitions and takeovers together constitute one of çınar & çınar most common practice area. Our team members have considerable knowledge and experience in the structure and negotiation of M&A transactions. Our team has experience in all relevant aspects relevant to a business acquisition and is prepared to succeed at all stages of the acquisition transaction including pre-negotiation, extensive due diligence investigation, drafting and negotiating share transfer and asset transfer agreements, and coordinating fınancial arrangements. Additionally we guide our clients in matters such as employment, environmental, competition and real estate issues",
  "https://www.fiverr.com/hamza6shakeel/get-you-modern-ui-design-using-adobe-xd",
  "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
 "Expert local advice is a major element for the International Commercial Transactions and International Contracts. We represent and advise both major Turkish exporters and foreign investors in the area of international contracts and international commercial transactions including international sales agreements, agency agreements, distribution agreements, export & import issues, free trade zones, licensing agreements, know-how agreements, franchise agreements and joint-ventures. Çınar & Çınar members have been involved in many international commercial transactions. In addition to our experience, our partners have been regularly lecturing at Ankara Bar Association on International Commercial Transactions and International Contracts. ",
 "Çınar & Çınar provides high-quality corporate advice to both international and domestic corporations from general corporate issues to most challenging matters. We consult on legal matters at ali stages of development of a business. We assist our Clients in incorporation transactions of domestic companies or companies with foreign Capital such as preparation of foundation documents, Articles of Associations and applications to relevant authorities. We also advise on share transfers, shareholder's rights, opening branches or liaison offıces in or outside Turkey, corporate governance issues, general assembly meetings, board meetings, Capital increase operations, class change operations; contracting issues such as employment contracts, stock option agreements, licensing agreements, franchise agreements, supply agreements, distributorship and agency contracts. Furthermore, çınar & çınar provides consultancy servicesin a diverse set of partnership transactions such as joint venture structuring. çınar & çınar possesses outstanding reputation for further advising joint-ventures on issues related to competition law, arbitration, intellectual property law and corporate governance. We always collaborate with the parties' in-house counsels to better identify their objectives and commercial culture, and to meet their commercial needs. We develop innovative and effıcient approaches to deal with complex and challenging matters  and to structure most effıcient way to develop a business. ",
  "Mergers, acquisitions and takeovers together constitute one of çınar & çınar most common practice area. Our team members have considerable knowledge and experience in the structure and negotiation of M&A transactions. Our team has experience in all relevant aspects relevant to a business acquisition and is prepared to succeed at all stages of the acquisition transaction including pre-negotiation, extensive due diligence investigation, drafting and negotiating share transfer and asset transfer agreements, and coordinating fınancial arrangements. Additionally we guide our clients in matters such as employment, environmental, competition and real estate issues",
  "https://www.fiverr.com/hamza6shakeel/get-you-modern-ui-design-using-adobe-xd",
  "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
   "Expert local advice is a major element for the International Commercial Transactions and International Contracts. We represent and advise both major Turkish exporters and foreign investors in the area of international contracts and international commercial transactions including international sales agreements, agency agreements, distribution agreements, export & import issues, free trade zones, licensing agreements, know-how agreements, franchise agreements and joint-ventures. Çınar & Çınar members have been involved in many international commercial transactions. In addition to our experience, our partners have been regularly lecturing at Ankara Bar Association on International Commercial Transactions and International Contracts. ",
 "Çınar & Çınar provides high-quality corporate advice to both international and domestic corporations from general corporate issues to most challenging matters. We consult on legal matters at ali stages of development of a business. We assist our Clients in incorporation transactions of domestic companies or companies with foreign Capital such as preparation of foundation documents, Articles of Associations and applications to relevant authorities. We also advise on share transfers, shareholder's rights, opening branches or liaison offıces in or outside Turkey, corporate governance issues, general assembly meetings, board meetings, Capital increase operations, class change operations; contracting issues such as employment contracts, stock option agreements, licensing agreements, franchise agreements, supply agreements, distributorship and agency contracts. Furthermore, çınar & çınar provides consultancy servicesin a diverse set of partnership transactions such as joint venture structuring. çınar & çınar possesses outstanding reputation for further advising joint-ventures on issues related to competition law, arbitration, intellectual property law and corporate governance. We always collaborate with the parties' in-house counsels to better identify their objectives and commercial culture, and to meet their commercial needs. We develop innovative and effıcient approaches to deal with complex and challenging matters  and to structure most effıcient way to develop a business. ",
  "Mergers, acquisitions and takeovers together constitute one of çınar & çınar most common practice area. Our team members have considerable knowledge and experience in the structure and negotiation of M&A transactions. Our team has experience in all relevant aspects relevant to a business acquisition and is prepared to succeed at all stages of the acquisition transaction including pre-negotiation, extensive due diligence investigation, drafting and negotiating share transfer and asset transfer agreements, and coordinating fınancial arrangements. Additionally we guide our clients in matters such as employment, environmental, competition and real estate issues",
  "https://www.fiverr.com/hamza6shakeel/get-you-modern-ui-design-using-adobe-xd",
  "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
   "Expert local advice is a major element for the International Commercial Transactions and International Contracts. We represent and advise both major Turkish exporters and foreign investors in the area of international contracts and international commercial transactions including international sales agreements, agency agreements, distribution agreements, export & import issues, free trade zones, licensing agreements, know-how agreements, franchise agreements and joint-ventures. Çınar & Çınar members have been involved in many international commercial transactions. In addition to our experience, our partners have been regularly lecturing at Ankara Bar Association on International Commercial Transactions and International Contracts. ",
 "Çınar & Çınar provides high-quality corporate advice to both international and domestic corporations from general corporate issues to most challenging matters. We consult on legal matters at ali stages of development of a business. We assist our Clients in incorporation transactions of domestic companies or companies with foreign Capital such as preparation of foundation documents, Articles of Associations and applications to relevant authorities. We also advise on share transfers, shareholder's rights, opening branches or liaison offıces in or outside Turkey, corporate governance issues, general assembly meetings, board meetings, Capital increase operations, class change operations; contracting issues such as employment contracts, stock option agreements, licensing agreements, franchise agreements, supply agreements, distributorship and agency contracts. Furthermore, çınar & çınar provides consultancy servicesin a diverse set of partnership transactions such as joint venture structuring. çınar & çınar possesses outstanding reputation for further advising joint-ventures on issues related to competition law, arbitration, intellectual property law and corporate governance. We always collaborate with the parties' in-house counsels to better identify their objectives and commercial culture, and to meet their commercial needs. We develop innovative and effıcient approaches to deal with complex and challenging matters  and to structure most effıcient way to develop a business. ",
  "Mergers, acquisitions and takeovers together constitute one of çınar & çınar most common practice area. Our team members have considerable knowledge and experience in the structure and negotiation of M&A transactions. Our team has experience in all relevant aspects relevant to a business acquisition and is prepared to succeed at all stages of the acquisition transaction including pre-negotiation, extensive due diligence investigation, drafting and negotiating share transfer and asset transfer agreements, and coordinating fınancial arrangements. Additionally we guide our clients in matters such as employment, environmental, competition and real estate issues",
  "https://www.fiverr.com/hamza6shakeel/get-you-modern-ui-design-using-adobe-xd",
  "https://www.fiverr.com/hamza6shakeel/be-your-mobile-app-developer-via-flutter",
];

// Our Team
final kOurTeamBanner = [
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
  "assets/person.jpg",
];

final kOurTeamIcons = [
  "assets/person.jpg",
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
