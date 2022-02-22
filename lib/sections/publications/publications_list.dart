import 'package:flutter/material.dart';


class PublicationsList extends StatefulWidget {
  const PublicationsList({ Key key }) : super(key: key);

  @override
  _PublicationsListState createState() => _PublicationsListState();
}

class _PublicationsListState extends State<PublicationsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Text',style: TextStyle(color: Colors.black),),
    );
  }
}