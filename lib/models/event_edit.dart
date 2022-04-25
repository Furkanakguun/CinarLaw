import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../sections/publicationsList/publications_listArticle.dart';

class EventEdit extends StatefulWidget {
  final String blogPostId;
  final String date;
  final String title;
  final String content;
  final String author;
  final String image;
  final bool star;

  EventEdit(
      {Key key,
      this.blogPostId,
      this.date,
      this.title,
      this.content,
      this.author,
      this.image,
      this.star})
      : super(key: key);

  factory EventEdit.fromDocument(DocumentSnapshot doc) {
    return EventEdit(
      blogPostId: doc['blogPostId'],
      date: doc['date'],
      title: doc['title'],
      content: doc['content'],
      author: doc['author'],
      image: doc['image'],
      star: doc['star'],
    );
  }
  @override
  State<EventEdit> createState() => _EventEditState();
}

class _EventEditState extends State<EventEdit> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return EventPostCard(
        context, width, height, widget.date, widget.title, widget.image);
  }

  showAlertDialog(BuildContext context, String message, String heading,
      String buttonAcceptTitle, String buttonCancelTitle) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text(buttonCancelTitle,style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black,
                        height: 1.4,
                        fontWeight: FontWeight.w400)),
      onPressed: () {},
    );
    Widget continueButton = FlatButton(
      child: Text(buttonAcceptTitle,style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.red,
                        height: 1.4,
                        fontWeight: FontWeight.w400)),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(heading,style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.black,
                        height: 1.4,
                        fontWeight: FontWeight.w400)),
      content: Text(message,style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.4,
                        fontWeight: FontWeight.w400)),
      actions: [
        cancelButton,
        continueButton,
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

  Widget starField(double height, double width) {
    return Center(
      child: Container(
          width: 80,
          height: 120,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: CheckboxListTile(
              secondary: const Icon(Icons.star),
              title: const Text('Featured on Academia Page'),
              //subtitle: Text('Ringing after 12 hours'),
              value: widget.star,
              onChanged: (bool value) {
                // setState(() {
                //   this.star = value;
                // });
              },
            ),
          )),
    );
  }

  Widget EventPostCard(BuildContext context, double width, double height,
      String date, String title, String imageUrl) {
    return ListTile(
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star,
                color: widget.star ? Colors.yellow : Colors.grey,
              )),
          IconButton(
              onPressed: () {
               
              },
              icon: Icon(Icons.edit)),
          IconButton(onPressed: () { showAlertDialog(context, 'Are you sure you want to delete?',
                    "Delete Event?", "Delete", "Cancel");}, icon: Icon(Icons.delete)),
        ],
      ),
      title: Stack(children: [
        Container(
          decoration: BoxDecoration(
            // //border: Border.all(color: Colors.grey),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 25.0,
                offset: Offset(2.0, 2.0),
              ),
            ],
            color: Colors.black54,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(imageUrl),
                opacity: 0.5),
          ),
          width: width < 1200 ? width * 0.60 : width * 0.50,
          height: height * 0.30,
        ),
        Padding(
          padding: EdgeInsets.only(top: width * 0.08, left: 7, right: 7),
          child: Center(
            child: Container(
              color: Colors.transparent,
              width: width < 1200 ? width * 0.60 : width * 0.50,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    date,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.white,
                        height: 1.4,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.white,
                        height: 1.4,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
