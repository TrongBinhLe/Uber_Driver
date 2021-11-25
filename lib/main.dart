import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uber_driver/screens/mainpage.dart';
import 'dart:io';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await FirebaseApp.configure(
    name: 'db2',
    options: Platform.isIOS
        ? const FirebaseOptions(googleAppID: '', apiKey: '', databaseURL: '')
        : const FirebaseOptions(
            googleAppID: '1:233591750828:android:515619b2267dff8fc75f09',
            apiKey: 'AIzaSyAXXXz9v0KdiLYFJorygMpVW0y_HhbNgtI',
            databaseURL: 'https://uber-now-e8f0c-default-rtdb.firebaseio.com/'),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MainPage.routeName,
      routes: {
        MainPage.routeName: (context) => MainPage(),
      },
    );
  }
}
