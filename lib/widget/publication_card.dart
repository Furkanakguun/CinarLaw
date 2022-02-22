import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PublicationCard extends StatefulWidget {
  final String title;
  final String description;
  final double cardWidth;
  final double cardHeight;

  const PublicationCard(
      {Key key, this.title, this.description, this.cardWidth, this.cardHeight})
      : super(key: key);

  @override
  _PublicationCardState createState() => _PublicationCardState();
}

class _PublicationCardState extends State<PublicationCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('launch'),
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
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30.0, left: 12, right: 12, bottom: 30),
          child: Column(
            children: [
              Text(
                widget.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                widget.description,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
