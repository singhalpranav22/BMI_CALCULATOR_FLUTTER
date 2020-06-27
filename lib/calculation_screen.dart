import 'package:flutter/material.dart';
import 'CardView.dart';
import 'brain.dart';
import 'inputpage.dart';
final deccol=Color(0xFF14152A);
class calculation extends StatelessWidget{

  calculation({this.bmi,this.resText,this.interp});

 final String bmi;
 final String resText;
 final String interp;



  @override
  Widget build(BuildContext context) {

    Color col=Colors.green;
    if(resText=="Overweight" || resText=='Underweight')
      {
        col=Colors.red;
      }
    return  Scaffold(
        appBar: AppBar(
          title:Center(child: Text('RESULT PAGE !')),

        ),

      body: Container(
        height: 1000.0,
        width: 750.0,
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[

              Text(
                "YOUR RESULT"
                    ,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0
                ),
              ),

              Expanded(
                child: Container(

                  height: 180.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: deccol,


                  ),

                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resText,
                        style: TextStyle(

                            color: col,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        bmi,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 100.0
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        ("Normal BMI Range:"),
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),
                      ),
                      Text(
                        ("18.5-25"),
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),
                      ),
    SizedBox(
        height: 25.0,
    ),
                      Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Text(
                        interp,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                              fontSize: 25.0
                          ),textAlign: TextAlign.center,
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){

                  Navigator.pop(context);
                },
                child: Container(
                    margin: EdgeInsets.only(top: 10.0),
                    width: double.infinity,
                    color: Colors.pink,
                    height: 50.0,
                    child: Center(
                      child: Text("RE-CALCULATE",style: TextStyle(
                        fontSize: 30.0
                        ,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    )

                ),
              )
            ],

          ),
        ),
      ),


      );

  }
}
