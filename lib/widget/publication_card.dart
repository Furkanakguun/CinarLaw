import 'package:cinarlaw/widget/alertDialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PublicationCard extends StatefulWidget {
  final String title;
  final String description;
  final double cardWidth;
  final double cardHeight;
final Color color;
  const PublicationCard(
      {Key key, this.title, this.description, this.cardWidth, this.cardHeight, this.color})
      : super(key: key);

  @override
  _PublicationCardState createState() => _PublicationCardState();
}

class _PublicationCardState extends State<PublicationCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      //onTap: () => showPublicationAlertDialog(context),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Container(
        width: widget.cardWidth,
        height: widget.cardHeight,
        color: Colors.transparent,
        child: Card(
          color: widget.color,
          shadowColor: Colors.grey[400],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  widget.title,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.015,
                      color: Colors.black,
                      height: 1.4,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                 Text(
                  widget.description,
                  style: GoogleFonts.montserrat(
                      fontSize: height * 0.014,
                      color: Colors.black,
                      height: 1.4,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
