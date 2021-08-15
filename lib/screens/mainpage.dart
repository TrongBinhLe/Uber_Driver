import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static final String routeName = '/main_page';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainPage'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {},
          color: Colors.blue,
          minWidth: 200,
          child: Text('Hello'),
        ),
      ),
    );
  }
}
