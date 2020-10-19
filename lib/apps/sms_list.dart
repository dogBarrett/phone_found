import 'package:flutter/material.dart';
import 'package:phone_found/apps/sms_chat_screen.dart';
import 'dart:async';
import 'main_screen.dart';
import 'package:phone_found/sms_list_data.dart';
import 'package:phone_found/main.dart';
import 'package:phone_found/apps/widgets/widgets.dart';

import 'package:flutter/services.dart';

class SMSList extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    getTime(context);

    return MaterialApp(
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
                children: <Widget>[
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
                          context, FadeRoute(page: MainScreen()));
                    },
                  ),
                ],
              ),
            ),
            body: Column(children: <Widget>[
              Container(
                child: AppBar(
                  backgroundColor: Colors.white70,
                  title: Text("Messages",
                      textAlign: TextAlign.center,
                      style: (TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ))),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: smsList.length,
                  itemBuilder: (ctx, i) {
                    return Column(
                      children: <Widget>[
                        ListTile(
                          isThreeLine: true,
                          onTap: () {
                            currentSMS = i;
                            choiceSMS = currentSMS;
                            Navigator.pushReplacement(
                                context, FadeRoute(page: SMSChatScreen()));
                          },
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.3),
                                    offset: Offset(0, 5),
                                    blurRadius: 25)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(smsList[i]['imgUrl']),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: Text(
                            "${smsList[i]['username']}",
                            style: Theme.of(context).textTheme.title,
                          ),
                          subtitle: Text(
                            "${smsList[i]['lastMsg']}",
                          ),
                          trailing: Container(
                            width: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    smsList[i]['seen']
                                        ? Icon(
                                            Icons.check,
                                            size: 15,
                                          )
                                        : Container(height: 15, width: 15),
                                    Text("${smsList[i]['lastMsgTime']}")
                                  ],
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider()
                      ],
                    );
                  },
                ),
              ),
            ])));
  }
}
