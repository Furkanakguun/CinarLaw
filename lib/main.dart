import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cinarlaw/provider/themeProvider.dart';
import 'package:cinarlaw/provider/themeStyles.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/serviceDetails/serviceDetails.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();  
}

class _MyAppState extends State<MyApp> {
  ThemeProvider _themeProvider = ThemeProvider();

  void getCurrentAppTheme() async {
    _themeProvider.lightTheme = await _themeProvider.darkThemePref.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
   getTestData();
    super.initState();
  }

  getTestData() async {
    DocumentSnapshot doc =   await FirebaseFirestore.instance.collection('message').doc('1').get();
    print(doc.exists);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cinar Law',
        theme: ThemeStyles.themeData(_themeProvider.lightTheme, context),
        initialRoute: "/",
        routes: {
          "/": (context) => MainPage(),
          "/details": (context) => ServiceDetails()
        },
      ),
    );
  }
}
