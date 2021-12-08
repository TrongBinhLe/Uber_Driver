import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uber_driver/screens/mainpage.dart';
import 'package:uber_driver/screens/registration.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'db2',
    options: const FirebaseOptions(
      appId: '1:233591750828:android:6244909e9557a08ac75f09',
      apiKey: 'AIzaSyAXXXz9v0KdiLYFJorygMpVW0y_HhbNgtI',
      messagingSenderId: '233591750828',
      databaseURL: 'https://uber-now-e8f0c-default-rtdb.firebaseio.com/',
      projectId: 'uber-now-e8f0c',
    ),
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
