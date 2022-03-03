import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

showPublicationAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.white70,
    content: Container(
      height: 50,
      width: 50,
      child: Column(
        children: [
          // Center(
          //     child: SpinKitCircle(
          //   color: Theme.of(context).primaryColor,
          // )),
        ],
      ),
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  ).then((value) => Navigator.pop(context));
}

showOurAreasAlertDialog(BuildContext context, int index) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  AlertDialog alert = AlertDialog(
    contentPadding: EdgeInsets.only(left: 25, right: 25),
    title: Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 2, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "OUR PRACTICE AREAS",
            style: GoogleFonts.montserrat(
                color: mainColorWhite.withOpacity(0.9),
                fontSize: height * 0.018,
                fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            kServicesTitles[index],
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: height * 0.035,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    content: Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 8, left: 30),
      child: Container(
        width: width < 1200 ? width * 0.35 : width * 0.65,
        height: width < 1200 ? height * 0.8 : height * 0.27,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      kServicesLinks[index],
                      style: GoogleFonts.roboto(
                        fontSize: height * 0.018,
                        color: Colors.grey[500],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 180,
                height: 38,
                child: MaterialButton(
                  color: mainColorWhite,
                  hoverColor: mainColorWhite.withAlpha(70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    //side: BorderSide(color: kPrimaryColor),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "GO BACK",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Colors.white,
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
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showOurAreasAlertDialogMobile(BuildContext context, int index) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  AlertDialog alert = AlertDialog(
    contentPadding: EdgeInsets.only(left: 12, right: 12),
    title: Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 2, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "OUR PRACTICE AREAS",
            style: GoogleFonts.montserrat(
                color: mainColorWhite.withOpacity(0.9),
                fontSize: height * 0.018,
                fontWeight: FontWeight.w200),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            kServicesTitles[index],
            style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: height * 0.035,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    content: Padding(
      padding: const EdgeInsets.only(top: 0.0, bottom: 8, left: 30),
      child: Container(
        width: width < 1200 ? width * 0.35 : width * 0.65,
        height: width < 1200 ? height * 0.6 : height * 0.27,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      kServicesLinks[index],
                      style: GoogleFonts.roboto(
                        fontSize: height * 0.018,
                        color: Colors.grey[500],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 180,
                height: 38,
                child: MaterialButton(
                  color: mainColorWhite,
                  hoverColor: mainColorWhite.withAlpha(70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    //side: BorderSide(color: kPrimaryColor),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "GO BACK",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: 7,
            ),
          ],
        ),
      ),
    ),
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
