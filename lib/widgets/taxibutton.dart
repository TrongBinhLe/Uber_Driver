import 'package:flutter/material.dart';

class TaxiButton extends StatelessWidget {
  final title;
  final color;
  final onPress;

  TaxiButton(
      {@required this.title, @required this.color, @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        height: 50.0,
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 20.0, fontFamily: 'Brand-Bold'),
          ),
        ),
      ),
      color: color,
      textColor: Colors.white,
      onPressed: onPress,
    );
  }
}
