import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

import '../sections/publicationsList/publications_listArticle.dart';

class BlogPost extends StatefulWidget {
  final String blogPostId;
  final String date;
  final String title;
  final String content;
  final String author;

  BlogPost(
      {Key key,
      this.blogPostId,
      this.date,
      this.title,
      this.content,
      this.author})
      : super(key: key);

  factory BlogPost.fromDocument(DocumentSnapshot doc) {
    return BlogPost(
        blogPostId: doc['blogPostId'],
        date: doc['date'],
        title: doc['title'],
        content: doc['content'],
        author: doc['author']);
  }
  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return starredBlogPostCard(
        context, width, height, widget.date, widget.title);
  }

  InkWell starredBlogPostCard(BuildContext context, double width, double height,
      String date, String title) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PublicationsListArticle(
                title: title, description: widget.content),
          ),
        );
      },
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            //border: Border.all(color: Colors.grey),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 25.0,
                offset: Offset(2.0, 2.0),
              ),
            ],
            color: Colors.white70,
            borderRadius: BorderRadius.circular(12),
            // image: DecorationImage(
            //     image: AssetImage('assets/adakemi.jpg'),
            //     fit: BoxFit.cover)
          ),
          width: width < 1200 ? width * 0.60 : width * 0.20,
          height: height * 0.30,
        ),
        Padding(
          padding: EdgeInsets.only(top: width * 0.08, left: 7, right: 7),
          child: Center(
            child: Container(
              color: Colors.transparent,
              width: width < 1200 ? width * 0.60 : width * 0.19,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    date,
                    style: GoogleFonts.montserrat(
                        fontSize: height * 0.015,
                        color: Colors.black,
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
                        color: Colors.black,
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
