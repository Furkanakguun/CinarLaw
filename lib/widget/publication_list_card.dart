import 'package:cinarlaw/widget/alertDialog.dart';
import 'package:flutter/material.dart';

class PublicationListCard extends StatefulWidget {
  final String title;
  final String description;
  final double cardWidth;
  final double cardHeight;

  const PublicationListCard(
      {Key key, this.title, this.description, this.cardWidth, this.cardHeight})
      : super(key: key);

  @override
  _PublicationListCardState createState() => _PublicationListCardState();
}

class _PublicationListCardState extends State<PublicationListCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showPublicationAlertDialog(context),
      // onHover: (isHovering) {
      //   if (isHovering) {
      //     setState(() {
      //       isHover = true;
      //     });
      //   } else {
      //     setState(() {
      //       isHover = false;
      //     });
      //   }
      // },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: widget.cardWidth,
          height: widget.cardHeight,
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 12, right: 12, bottom: 30),
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
      ),
    );
  }
}
