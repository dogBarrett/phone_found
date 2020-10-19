import 'package:flutter/material.dart';
import 'apps/lock_screen.dart';

List<Map<String, dynamic>> chosenSMSList;

String currentTime;

void main() {

  runApp(LockScreen());
}

void getTime(context) {

  DateTime now = DateTime.now();
  int minute = now.minute;

  currentTime = minute < 10
      ? now.hour.toString() + ":0" + now.minute.toString()
      : currentTime = minute == 0
      ? now.hour.toString() + ":00"
      : now.hour.toString() + ":" + now.minute.toString();
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}

