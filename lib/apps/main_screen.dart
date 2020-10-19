import 'package:flutter/material.dart';
import 'dart:async';

import 'sms_list.dart';
import 'package:phone_found/main.dart';

import 'package:flutter/services.dart';

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    getTime(context);

    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: GridView.count(crossAxisCount: 3, children: <Widget>[
            FlatButton(
              child: Column(children: <Widget>[
                Image(
                  image: AssetImage('images/sms_icon_1.jpg'),
                ),
                Text(
                  "Messages",
                  textAlign: TextAlign.center,
                  style: (TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  )),
                  softWrap: true,
                ),
              ]),
              onPressed: () {
                Navigator.pushReplacement(context,
                    FadeRoute(page: SMSList()));
              },
            ),
            FlatButton(
                child: Column(children: <Widget>[
                  Image(
                    image: AssetImage('images/cryp_chat.jpg'),
                    height: 80,
                  ),
                  Text("CrypChat",
                      textAlign: TextAlign.center,
                      style: (TextStyle(color: Colors.white, fontSize: 12)),
                      softWrap: true),
                ]),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      FadeRoute(page: SMSList()))
                      .then((value) {
                    getTime(context);
                  });
                }),
            FlatButton(
              child: Column(children: <Widget>[
                Image(
                  image: AssetImage('images/call_icon.jpg'),
                ),
                Text("Phone",
                    textAlign: TextAlign.center,
                    style: (TextStyle(color: Colors.white, fontSize: 12)),
                    softWrap: true),
              ]),
              onPressed: () {
                Navigator.pushReplacement(context,
                    FadeRoute(page: SMSList()));
              },
            )
          ]),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
//        child: [Your content here],
        ),
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
      ),
    );
  }
}

