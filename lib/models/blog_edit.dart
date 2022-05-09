import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinarlaw/sections/admin/event_post_edit.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../sections/admin/admin_dashboard.dart';
import '../sections/admin/blog_post_edit.dart';
import '../sections/publicationsList/publications_listArticle.dart';

class BlogEdit extends StatefulWidget {
  final String blogPostId;
  final String date;
  final String title;
  final String content;
  final String author;
  final String image;
  final bool star;

  BlogEdit(
      {Key key,
      this.blogPostId,
      this.date,
      this.title,
      this.content,
      this.author,
      this.image,
      this.star})
      : super(key: key);

  factory BlogEdit.fromDocument(DocumentSnapshot doc) {
    return BlogEdit(
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
  State<BlogEdit> createState() => _BlogEditState();
}

class _BlogEditState extends State<BlogEdit> {
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
      child: Text(buttonCancelTitle,
          style: GoogleFonts.montserrat(
              fontSize: 14,
              color: Colors.black,
              height: 1.4,
              fontWeight: FontWeight.w400)),
      onPressed: () {},
    );
    Widget continueButton = FlatButton(
      child: Text(buttonAcceptTitle,
          style: GoogleFonts.montserrat(
              fontSize: 14,
              color: Colors.red,
              height: 1.4,
              fontWeight: FontWeight.w400)),
      onPressed: () {
        handleDeletePost();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(heading,
          style: GoogleFonts.montserrat(
              fontSize: 20,
              color: Colors.black,
              height: 1.4,
              fontWeight: FontWeight.w400)),
      content: Text(message,
          style: GoogleFonts.montserrat(
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

  handleDeletePost() {
    Navigator.pop(context);
    Future.delayed(const Duration(milliseconds: 1), () {
      FirebaseFirestore.instance
          .collection('blogPosts')
          .doc('1')
          .collection('items')
          .doc(widget.blogPostId)
          .delete()
          .then((value) => showSubmitRequestSnackBar(context));
    });
  }

  handleUpdateStar() {
    Navigator.pop(context);
    Future.delayed(const Duration(milliseconds: 1), () {
      FirebaseFirestore.instance
          .collection('blogPosts')
          .doc('1')
          .collection('items')
          .doc(widget.blogPostId)
          .update({"star": !widget.star}).then(
              (value) => showSubmitRequestSnackBarNoPop(context));
    });
  }

  showSubmitRequestSnackBar(BuildContext context) async {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AdminDashboard()),
    );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.white,
      content: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.green[400],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // border: Border.all(
          //   width: 0.1,
          //   color: Colors.black,
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(Icons.done),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: Text(
                  "Blog Deleted",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.w300),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
      duration: Duration(seconds: 3),
    ));
  }

  showSubmitRequestSnackBarNoPop(BuildContext context) async {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    //Navigator.pop(context);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => AdminDashboard()),
    // );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.white,
      content: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.green[400],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // border: Border.all(
          //   width: 0.1,
          //   color: Colors.black,
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(Icons.done),
              SizedBox(
                width: 7,
              ),
              Expanded(
                child: Text(
                  "Blog Updated",
                  style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: height * 0.022,
                      fontWeight: FontWeight.w300),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
      duration: Duration(seconds: 3),
    ));
  }

  Widget EventPostCard(BuildContext context, double width, double height,
      String date, String title, String imageUrl) {
    return ListTile(
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
              onPressed: () {
                handleUpdateStar();
              },
              icon: Icon(
                Icons.star,
                color: widget.star ? Colors.yellow : Colors.grey,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BlogPostEdit(
                            blogPostId: widget.blogPostId,
                            title: widget.title,
                            content: widget.content,
                            date: widget.date,
                            imagePath: widget.image,
                            star: widget.star,
                          )),
                  (Route<dynamic> route) => false,
                );
              },
              icon: Icon(Icons.edit)),
          IconButton(
              onPressed: () {
                showAlertDialog(context, 'Are you sure you want to delete?',
                    "Delete Blog?", "Delete", "Cancel");
              },
              icon: Icon(Icons.delete)),
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
