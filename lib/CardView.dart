import 'package:flutter/material.dart';

class cardView extends StatelessWidget {

//   cardView({Icon icon.this});
  cardView(this.colors,this.hght,this.cardChild);
  final Color colors;
  final Widget cardChild;
  double hght;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: hght,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: colors,


      ),



      margin: EdgeInsets.all(10.0),


    );
  }
}
