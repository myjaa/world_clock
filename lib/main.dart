import 'package:flutter/material.dart';
import 'package:worldclock/pages/home.dart';
import 'package:worldclock/pages/choose_location.dart';
import 'package:worldclock/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  theme: ThemeData.dark(),
  routes: {
    '/':(context) => Loading(),
    '/home':(context) =>Home(),
    '/location': (context) => ChooseLocation(),
  },
  )
  );

