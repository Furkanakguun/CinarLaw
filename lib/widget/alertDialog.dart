import 'package:flutter/material.dart';
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
    title: Center(child: Text( kServicesTitles[index])),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0))),
    content: Container(
      width: width < 1200 ? width * 0.20 : width * 0.25,
      height: width < 1200 ? height * 0.32 : height * 0.45,
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
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
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
