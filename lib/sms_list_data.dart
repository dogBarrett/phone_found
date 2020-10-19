import 'package:flutter/material.dart';

Color myGreen = Color(0xff4bb17b);
Color theirGreen = Color(0xff43ff00);
int currentSMS = 0;
int choiceSMS = 0;

List<Map<String, dynamic>> smsList = [
{
'imgUrl':
'https://cdn.pixabay.com/photo/2019/11/06/17/26/gear-4606749_960_720.jpg',
'username': 'Wifey',
'lastMsg': 'Hey babe, hope everything is OK.',
'seen': true,
'hasUnSeenMsgs': false,
'unseenCount': 0,
'lastMsgTime': '18:44',
'isOnline': true
},
{
'imgUrl':
'https://cdn.pixabay.com/photo/2019/11/11/04/33/africa-4617142_960_720.jpg',
'username': 'Matty',
'lastMsg': 'whats happening... havent heard from you for a while. hit me back bro',
'seen': false,
'hasUnSeenMsgs': false,
'unseenCount': 0,
'lastMsgTime': '18:44',
'isOnline': false
}];