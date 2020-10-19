import 'package:flutter/material.dart';
import 'dart:async';
import 'main_screen.dart';
import 'package:phone_found/main.dart';
import 'package:phone_found/apps/sms_list.dart';

import 'package:phone_found/sms_chat_data.dart';
import 'package:phone_found/sms_list_data.dart';

import 'package:phone_found/apps/widgets/widgets.dart';

import 'package:flutter/services.dart';

/*class SMSChatScreen extends StatefulWidget{
  @override

  _SMSChatScreenState createState() => _SMSChatScreenState();
}

class _SMSChatScreenState extends State<SMSChatScreen> {*/
class SMSChatScreen extends StatelessWidget {
  bool _showBottom = false;


  String smsName;
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("My title"),
      content: Text("This is my message."),
      actions: [
        okButton,
      ],
    );
    
    getTime(context);

    if (choiceSMS == 0) {
      chosenSMSList = sms_chat_list_wife;
      smsName = "Wifey";
    } else {
      chosenSMSList = sms_chat_list_friend;
      smsName = "Matty";
    }
    return MaterialApp(
      //return Scaffold(
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(24.0), // here the desired height
            child: AppBar(
              backgroundColor: Colors.black,
              title: Text('$currentTime'),
              actions: [
                Text('No Service'),
                //Icon(Icons.phone_disabled),
                Icon(Icons.signal_cellular_off),
                Icon(Icons.battery_unknown),
                Icon(Icons.battery_alert, color: Colors.black),
              ],
            )),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 7.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.view_headline, color: Colors.black45),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.home, color: Colors.black45),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, FadeRoute(page: MainScreen()));
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black45),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, FadeRoute(page: SMSList()));
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white70,
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black45),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, FadeRoute(page: SMSList()));
                },
              ),
              title: Text("$smsName",
                  textAlign: TextAlign.center,
                  style: (TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ))),
            ),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(5),
                  itemCount: chosenSMSList.length,
                  itemBuilder: (ctx, i) {
                    if (chosenSMSList[i]['status'] == MessageType.received) {
                      return ReceivedMessagesWidget(i: i);
                    } else {
                      return SentMessageWidget(i: i);
                    }
                  }),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              height: 61,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35.0),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 5,
                              color: Colors.grey)
                        ],
                      ),
                      child: Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 24.0),
                              hintText: " Text here...",
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    //padding: const EdgeInsets.all(15.0),
                    decoration:
                        BoxDecoration(color: myGreen, shape: BoxShape.circle),
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.white70,
                      ),
                      onPressed: () {return alert;
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      /*Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  //setState(() {
                  //_showBottom = false;
                  //});
                },
              ),
            ),
            _showBottom
                ? Positioned(
                    bottom: 90,
                    left: 25,
                    right: 25,
                    child: Container(
                      padding: EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 15.0,
                              color: Colors.grey)
                        ],
                      ),
                      child: GridView.count(
                        mainAxisSpacing: 21.0,
                        crossAxisSpacing: 21.0,
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        children: List.generate(
                          icons.length,
                          (i) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey[200],
                                border: Border.all(color: myGreen, width: 2),
                              ),
                              child: IconButton(
                                icon: Icon(
                                  icons[i],
                                  color: myGreen,
                                ),
                                onPressed: () {},
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ]),*/
    );
  }

}

List<IconData> icons = [
  Icons.image,
  Icons.camera,
  Icons.file_upload,
  Icons.folder,
  Icons.gif,
  Icons.home
];
