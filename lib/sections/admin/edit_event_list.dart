import 'package:cinarlaw/models/blog.dart';
import 'package:cinarlaw/models/blog_big.dart';
import 'package:cinarlaw/sections/Carrier/carrier.dart';
import 'package:cinarlaw/sections/admin/admin_dashboard.dart';
import 'package:cinarlaw/sections/mainSection.dart';
import 'package:cinarlaw/sections/museum/museum_listDesktop.dart';
import 'package:cinarlaw/sections/navBar/navBarLogo.dart';
import 'package:cinarlaw/sections/publicationsList/publications_listDesktop.dart';
import 'package:cinarlaw/widget/footer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../animations/entranceFader.dart';
import '../../constants.dart';
import '../../models/event_edit.dart';
import '../admin/admin_login.dart';

class EditEventsList extends StatefulWidget {
  const EditEventsList({
    Key key,
  }) : super(key: key);

  @override
  _EditEventsListState createState() => _EditEventsListState();
}

class _EditEventsListState extends State<EditEventsList> {
  getStarredEventPost() async {
    List<Padding> feedItems = [];
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection('eventPosts')
        .doc('1')
        .collection('items')
        .get();
    print(snapshot.docs.isEmpty);
    for (var item in snapshot.docs) {
      feedItems.add(Padding(
          padding: EdgeInsets.all(8), child: EventEdit.fromDocument(item)));
    }
    return feedItems;
  }

 

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.white,shadowColor: Colors.white,),
      backgroundColor: Colors.white,
      body: Padding(
        padding: width < 1200
            ? EdgeInsets.only(top: 0.0, bottom: 0)
            : EdgeInsets.only(top: 0.0, bottom: 0),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: width < 1200
                    ? EdgeInsets.only(left: 40.0, bottom: 0)
                    : EdgeInsets.only(top: 0.0, bottom: 0),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        
                        icon: Icon(
                          Icons.arrow_back,
                          color: mainColor,
                          size: 32,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AdminDashboard(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Çınar Academia Events",
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: height * 0.050,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
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
                          child: Text("All Events",
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
                height: 6,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          width < 1200 ? width * (0.20) : width * (0.30)),
                  child: FutureBuilder(
                    future: getStarredEventPost(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Container();
                      }
                      return Column(
                        ///shrinkWrap: true,
                        children: snapshot.data,
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
