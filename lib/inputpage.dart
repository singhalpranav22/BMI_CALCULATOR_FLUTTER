import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icondata.dart';
import 'CardView.dart';
import 'calculation_screen.dart';
import 'brain.dart';
final actcol=Color(0xFFEA1155);
final deccol=Color(0xFF14152A);
Color malcol=Color(0xFF14152A);
Color femcol=Color(0xFF14152A);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


void gender(int g)
{
  if(g==1)
    {
      if(malcol==actcol)
        {
          malcol=deccol;
          femcol=deccol;
          return;
        }
      malcol=actcol;
      femcol=deccol;
    }
  else
    {
      if(femcol==actcol)
        {
          malcol=deccol;
          femcol=deccol;
          return;
        }
      malcol=deccol;
      femcol=actcol;
    }
}

int height=180;
int weight=60;
int age=19;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        
        title: Center(child: Text('BMI CALCULATOR (BY Pranav :))')),
      ),

      body: Container(
        height: 1000.0,
        width: 750.0,
        child: Column(
         children: <Widget>[

           Row(
             children: <Widget>[
               Expanded(
                 child: GestureDetector(
                   onTap: () {
                     setState(() {

                       gender(1);
                     });
                   },
                   child: cardView(malcol,150.0,
                     icondata("MALE",Icon(
                       FontAwesomeIcons.mars,
                       color: Colors.white,
                       size: 80.0,
                     )),
                   ),
                 ),
               ),
               Expanded(
                 child: GestureDetector(

                   onTap: () {
                     setState(() {
                       gender(2);

                     });
                   },
                   child: cardView(femcol,150.0,
                   icondata("FEMALE", Icon(
                     FontAwesomeIcons.venus,
                         color: Colors.white,


                     size: 80.0,
                   ))),
                 ),
               ),
             ],
           ),
           Expanded(
             child: cardView(deccol,250,
             Column(
               crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
               children: <Widget>[
                 Text(
                   "HEIGHT",
                   style: TextStyle(
                     fontSize: 25.0,
                     color: Colors.white,

                   ),

                 ),
              SizedBox(
                height: 10.0,
              ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic ,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[


                    Text(

                      height.toString(),style:
                    TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                    Text(

                      " cm",style:
                    TextStyle(
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
           activeTrackColor: Colors.white,
                    thumbColor: Color(0xFFEB1555),
                    overlayColor: Color(0x29EB1555),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
    ),
                  child: Slider(
                     max: 220,
                    min: 80,
                    value: height.toDouble(),


                    inactiveColor: Colors.black,

                  onChanged: (double value){

                       setState(() {

                         height=value.round();
                       });
                  },
                   ),
                )

               ],
             )),
           ),
           Row(
             children: <Widget>[
               Expanded(child: cardView(deccol,200.0,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                  Text(
                  "WEIGHT",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,

                  ),
                  ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic ,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[


                        Text(

                          weight.toString(),style:
                        TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                        Text(

                          " Kg",style:
                        TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),

                      ],
                    ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: <Widget>[

                      FloatingActionButton(
                        heroTag: "btn1",
                        child: Icon(FontAwesomeIcons.minus),
                        backgroundColor: Colors.pink,
                        onPressed: ()
                        {
                          setState(() {
                            if(weight>0)
                              weight--;
                          });
                        },
                      ),

                      FloatingActionButton(
                        heroTag: "btn2",
                        child: Icon(FontAwesomeIcons.plus),
                        backgroundColor: Colors.pink,
                        onPressed: (){
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ],
                  ),
                  ],
                )),
               ),
               Expanded(
                 child: cardView(deccol,200.0,Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
                     Text(
                       "AGE",
                       style: TextStyle(
                         fontSize: 25.0,
                         color: Colors.white,

                       ),
                     ),
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.baseline,
                       textBaseline: TextBaseline.alphabetic ,
                       mainAxisAlignment: MainAxisAlignment.center,

                       children: <Widget>[


                         Text(

                           age.toString(),style:
                         TextStyle(
                           fontSize: 50.0,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),
                         ),
                         Text(

                           " Years",style:
                         TextStyle(
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                           color: Colors.white,
                         ),
                         ),

                       ],
                     ),
                     Row(

                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.center,

                       children: <Widget>[

                         FloatingActionButton(
                           heroTag: "btn3",
                           child: Icon(FontAwesomeIcons.minus),
                           backgroundColor: Colors.pink,
                           onPressed: (){
                             setState(() {
                               if(age>0)
                               age--;
                             });
                           },
                         ),

                         FloatingActionButton(
                           heroTag: "btn4",
                           child: Icon(FontAwesomeIcons.plus),
                           backgroundColor: Colors.pink,
                           onPressed: (){
                             setState(() {
                               age++;
                             });
                           },
                         ),
                       ],
                     ),
                   ],
                 )),
               ),
             ],
           ),
    GestureDetector(

        onTap: (){

          CalculatorBrain ins=CalculatorBrain(height: this.height,weight: this.weight);
          Navigator.push(context,MaterialPageRoute(builder: (context)=> calculation(

            bmi: ins.calculateBMI(),
            resText: ins.getResult(),
            interp: ins.getInterpretation(),

          )));
        },
        child: Container(
            margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          color: Colors.pink,
          height: 50.0,
          child: Center(
            child: Text("CALCULATE",style: TextStyle(
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

    );
  }
}


}
