import 'package:cinarlaw/widget/adaptiveText.dart';
import 'package:cinarlaw/widget/publication_list_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class MuseumListDesktop extends StatefulWidget {
  const MuseumListDesktop({Key key}) : super(key: key);

  @override
  _MuseumListDesktopState createState() => _MuseumListDesktopState();
}

class _MuseumListDesktopState extends State<MuseumListDesktop> {
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
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color:  Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color:  Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color:  Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color:  Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color:  Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * (0.20)),
                child: Container(
                  width: 250,
                  height: 250,
                  color:  Colors.grey[200],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
