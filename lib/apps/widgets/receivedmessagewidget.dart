import 'package:flutter/material.dart';
import 'package:phone_found/sms_list_data.dart';
import 'package:phone_found/sms_chat_data.dart';
import 'package:phone_found/main.dart';

import 'mycircleavatar.dart';
class ReceivedMessagesWidget extends StatelessWidget {


  final int i;
  const ReceivedMessagesWidget({
    Key key,
    @required this.i,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        children: <Widget>[
          MyCircleAvatar(
            imgUrl: chosenSMSList[i]['contactImgUrl'],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*Text(
                "${messages[i]['contactName']}",
                style: Theme.of(context).textTheme.caption,
              ),*/
              Text(
                "${chosenSMSList[i]['time']}",
                style: Theme.of(context).textTheme.body2.apply(color: Colors.grey,
                  fontSizeFactor: .7,
                ),
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * .7),
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),

                child: Text(

                  "${chosenSMSList[i]['message']}",
                  style: Theme.of(context).textTheme.body1.apply(
                        color: Colors.black87,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(width: 5),

        ],
      ),
    );
  }
}
