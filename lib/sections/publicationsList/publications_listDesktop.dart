import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class PublicationsListDesktop extends StatefulWidget {
  const PublicationsListDesktop({Key key}) : super(key: key);

  @override
  _PublicationsListDesktopState createState() =>
      _PublicationsListDesktopState();
}

class _PublicationsListDesktopState extends State<PublicationsListDesktop> {
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
                    height: 70,
                    width: width,
                    //color: Colors.yellow),
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
                    horizontal: width < 1200 ? width * (0.20) : width * (0.35)),
                child: Stack(children: [
                  Card(
                    child: Container(
                      width: width < 1200 ? width * 0.60 : width * 0.40,
                      height: height * 0.40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/museum_1.jpg"),
                          alignment: FractionalOffset.center,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical:28.0),
                    child: Container(
                        width: width < 1200 ? width * 0.60 : width * 0.40,
                        color: Colors.black.withOpacity(0.3),
                    height: 100,
                      child: Text(
                        'TEXT',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width < 1200 ? width * (0.20) : width * (0.40)),
                child: Stack(children: [
                  Container(
                    width: width < 1200 ? width * 0.60 : width * 0.20,
                    height: height * 0.30,
                    color: Colors.grey[200],
                  ),
                  Text('TEXT',
                      style: TextStyle(
                        color: Colors.black,
                      ))
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
