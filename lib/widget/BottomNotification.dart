import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

bottomNotificaton(BuildContext context , String text , Icon icon ) async {
    showSimpleNotification(
        Container(
            decoration: BoxDecoration(
               color: Colors.green[900],
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all( 
              width: 0.1,
              color:  Colors.black,
            ),
          ),
          child: Padding( 
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                icon,
                SizedBox(width: 7,),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.black),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),        
        background: Colors.transparent,
        position: NotificationPosition.bottom,
    );
       
  }