import 'package:flutter/material.dart';
import 'package:phone_found/sms_list_data.dart';
import 'package:phone_found/sms_chat_data.dart';
import 'package:phone_found/main.dart';


class SentMessageWidget extends StatelessWidget {
  final int i;
  const SentMessageWidget({
    Key key,
    this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[

          Text(
            "${chosenSMSList[i]['time']}",
            style: Theme.of(context).textTheme.body2.apply(color: Colors.grey,
              fontSizeFactor: .7,
            ),
          ),
          SizedBox(width: 5),
          Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * .7),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: myGreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Text(
              "${chosenSMSList[i]['message']}",
              style: Theme.of(context).textTheme.body2.apply(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    ]),

    );
  }
}
