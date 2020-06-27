import 'package:flutter/material.dart';
class icondata extends StatelessWidget {


  icondata(this.label,this.icon);

  String label;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[

        icon,
        SizedBox(
          height: 15.0,
        ),
        Text(label, style: TextStyle(
          fontSize: 26.0,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),)

      ],
    );
  }
}

