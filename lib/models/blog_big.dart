import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

import '../sections/publicationsList/publications_listArticle.dart';

class BlogPostBig extends StatefulWidget {
  final String blogPostId;
  final String date;
  final String title;
  final String content;
  final String author;
  final String image;

  BlogPostBig(
      {Key key,
      this.blogPostId,
      this.date,
      this.title,
      this.content,
      this.author,
      this.image})
      : super(key: key);

  factory BlogPostBig.fromDocument(DocumentSnapshot doc) {
    return BlogPostBig(
      blogPostId: doc['blogPostId'],
      date: doc['date'],
      title: doc['title'],
      content: doc['content'],
      author: doc['author'],
      image: doc['image'],
    );
  }
  @override
  State<BlogPostBig> createState() => _BlogPostBigState();
}

class _BlogPostBigState extends State<BlogPostBig> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return starredBlogPostCard(
        context, width, height, widget.date, widget.title, widget.image);
  }



  InkWell starredBlogPostCard(BuildContext context, double width, double height,
      String date, String title, String imageUrl) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PublicationsListArticle(
                title: title, description: widget.content, author: widget.author,),
          ),
        );
      },
      child: Stack(children: [
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
              opacity: 0.5
            ),
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
