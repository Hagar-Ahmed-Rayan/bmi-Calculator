
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2nd/bmi-result-screen.dart';

class bmiScreen extends StatefulWidget {
  const bmiScreen({Key? key}) : super(key: key);

  @override
  _bmiScreenState createState() => _bmiScreenState();
}

class _bmiScreenState extends State<bmiScreen> {
  bool isMale=true;
  double height=120.0;
  int weight =100;
  int age =20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title:Text(
        'Bmi Calculator'

      ),



    ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [



                  Expanded(
                    child:GestureDetector(
                      onTap: (){
             setState(() {
                     isMale=true;
                      });




                      },
                      child: Container(


                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                          image:AssetImage(
                            'images/male.png'
                          ) ,
                            width: 90.0,
                            height: 90.0,

                          ),
                          SizedBox(
                        height:15.0 ,
                ),

                             Text(
             'male',
           style:TextStyle(
          fontSize:25.0,
          fontWeight: FontWeight.bold,
        ),

         ),

                        ],



                        ),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0,),
                          color:isMale ?Colors.blue:Colors.grey[300],


                        ) ,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,

                  ),
                  Expanded(
                    child:GestureDetector(
                      onTap: (){
                        setState(() {

                        });

          isMale=false;


                      },
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image:AssetImage(
                                  'images/female.png'
                              ) ,
                              width: 90.0,
                              height: 90.0,

                            ),
                            SizedBox(
                              height:15.0 ,
                            ),

                            Text(
                              'Female',
                              style:TextStyle(
                                fontSize:25.0,
                                fontWeight: FontWeight.bold,
                              ),

                            ),

                          ],



                        ),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0,),
                          color:!isMale ?Colors.blue:Colors.grey[300],


                        ) ,
                      ),
                    ),
                  ),
                ],




              ),
            ),





          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     'Hight',
                     style:TextStyle(
                       fontSize:25.0,
                       fontWeight: FontWeight.bold,
                     ),

                   ),
                   Row(
                     crossAxisAlignment:CrossAxisAlignment.baseline,
                     mainAxisAlignment: MainAxisAlignment.center,
                     textBaseline: TextBaseline.alphabetic,
                     children: [
                       Text(
                         '${height.round()}',
                         style:TextStyle(
                           fontSize:40.0,
                           fontWeight: FontWeight.w900,
                         ),

                       ),
                       SizedBox(
                         width: 5.0,
                       ),
                       Text(
                         'cm',
                         style:TextStyle(
                           fontSize:20.0,
                           fontWeight: FontWeight.bold,
                         ),

                       ),
                     ],
                   ),
                   Slider(
                       value: height,
                       max:220.0,
                       min:80.0,
                       onChanged: (value){
                         setState(() {
                           height=value;
                         });


                         print(value);
                       }
                   )

                 ],

                ),
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10.0,),
                  color:Colors.grey[300],

                ) ,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [

      Expanded(
        child: Container(
        child:   Column(
mainAxisAlignment: MainAxisAlignment.center,
    children: [

        Text(

          'age',

          style:TextStyle(

              fontSize:25.0,

              fontWeight: FontWeight.bold,

          ),



        ),

        Text(

          '$age',

          style:TextStyle(

              fontSize:40.0,

              fontWeight: FontWeight.w900,

          ),



        ),

        Row(
       mainAxisAlignment: MainAxisAlignment.center,
          children: [

              FloatingActionButton(

                  onPressed:(){
                    setState(() {
                      age--;
                    });
                  },
                heroTag: 'age-',
                  mini:true,

                child: Icon(

                  Icons.remove



                ),



              ),
              FloatingActionButton(

                onPressed:(){

                  setState(() {
                    age++;
                  });

                },
                heroTag: 'age+',
                mini:true,

                child: Icon(

                    Icons.add



                ),



              ),
          ],

        ),



    ],

  ),
  decoration:BoxDecoration(
    borderRadius:BorderRadius.circular(10.0,),
    color:Colors.grey[300],


  ) ,
),
      ),
     SizedBox(
       width: 20.0,
     ),
     Expanded(
          child: Container(
                      child:   Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text(

                            'weight',

                            style:TextStyle(

                              fontSize:25.0,

                              fontWeight: FontWeight.bold,

                            ),



                          ),

                          Text(

                            '$weight',

                            style:TextStyle(

                              fontSize:40.0,

                              fontWeight: FontWeight.w900,

                            ),



                          ),

                          Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              FloatingActionButton(

                                onPressed:(){
                                  setState(() {
                                    weight--;
                                  });
                                },

                                mini:true,
                             heroTag: 'weight-',
                                child: Icon(

                                    Icons.remove



                                ),



                              ),
                              FloatingActionButton(

                                onPressed:(){
                                  setState(() {
                                    weight++;
                                  });

                                },
                                heroTag: 'weight+',
                                mini:true,

                                child: Icon(

                                    Icons.add



                                ),



                              ),
                            ],

                          ),



                        ],

                      ),
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(10.0,),
                        color:Colors.grey[300],


                      ) ,
                    ),
        ),

                ],



              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blueAccent,
            child: MaterialButton(
                onPressed: (){
                  double result=weight/pow(height/100, 2);

                 print(result.round());
                 Navigator.push(
                   context, //old
                     MaterialPageRoute(  //el page elly 3awz yro7 lha
                       builder:(context) => BmiResultScreen( //object mn el page elly hyro7 lha
                         age:age,
                         isMale:isMale,
                         result:result.round(),


                       ),
                     ),
                 );
                },
              height: 50.0,
              child: Text(
                'Calculate',
                 style:TextStyle(
                  color:Colors.white
    ),
              ),
            ),
          ),
        ],

      ),


    );

  }
}
