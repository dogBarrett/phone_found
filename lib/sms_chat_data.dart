import 'package:flutter/material.dart';


enum MessageType {sent, received}


List<Map<String, dynamic>> sms_chat_list_wife = [

  {
    'status' : MessageType.received,
    'contactImgUrl' : 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'message' : 'Hi mate, I\d like to hire you to create a mobile app for my business' ,
    'time' : '08:43 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Hi, I hope you are doing great!' ,
    'time' : '08:45 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Please share with me the details of your project, as well as your time and budgets constraints.' ,
    'time' : '08:45 AM'
  },
  {
    'status' : MessageType.received,
    'contactImgUrl' : 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'message' : 'Sure, let me send you a document that explains everything.' ,
    'time' : '08:47 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Ok.' ,
    'time' : '08:45 AM'
  },
  {
    'status' : MessageType.received,
    'contactImgUrl' : 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'message' : 'Hey babe' ,
    'time' : '08:47 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Hey.' ,
    'time' : '08:45 AM'
  },
];

List<Map<String, dynamic>> sms_chat_list_friend = [

  {
    'status' : MessageType.received,
    'contactImgUrl' : 'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
    'message' : 'Hi mate, I\d like to hire you to create a mobile app for my business' ,
    'time' : '2 Dec 2020, 08:43 AM'
  },
  {
    'status' : MessageType.sent,
    'message' : 'Hi, I hope you are doing great!' ,
    'time' : '08:45 AM'
  },

  {
    'status' : MessageType.sent,
    'message' : 'Ok.' ,
    'time' : '08:45 AM'
  },

  {
    'status' : MessageType.sent,
    'message' : 'Hey.' ,
    'time' : '08:45 AM'
  },
];
