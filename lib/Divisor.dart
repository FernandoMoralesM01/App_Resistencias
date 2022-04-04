import 'package:flutter/material.dart';
import 'dart:convert';

class DivisorDeVoltaje extends StatefulWidget {
  const DivisorDeVoltaje({Key? key}) : super(key: key);

  @override
  _DivisorDeVoltajeState createState() => _DivisorDeVoltajeState();
}

class _DivisorDeVoltajeState extends State<DivisorDeVoltaje> {

  String result = '';

  List <String> strVal= [
    '0', '0', '0', '0'
  ];

  List <String> Labels= [
    'Vin', 'R1', 'R2', 'Vout'
  ];



  @override
  Widget build(BuildContext context)
  {
    int zeroCount = 4;
    int i;
    for (i = 0; i < 4; i++)
    {
      if(strVal[i] != '0')
        {zeroCount--;}
    }

    if(zeroCount == 1)
    {
      Calcular();
    }


        return Container(
          width: double.infinity,
          //height: double.infinity,
          //margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          color: Colors.white,

          child: Column(

            children: <Widget> [
              Container(
                padding: const EdgeInsets.fromLTRB(150, 10, 150, 20),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: Labels[0]   ///Vin
                    ),
                    onSubmitted: (String str){
                      setState((){
                        if(double.tryParse(str) == null)
                        {strVal[0] = '0';}
                        else
                        {strVal[0] = str;}

                        print(strVal);
                      });
                    }
                ),
              ),

              Row(
                //mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget> [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                            child: TextField(
                                decoration: InputDecoration(
                                    hintText: Labels[1]  ///R1
                                ),
                                onSubmitted: (String str){
                                  setState((){
                                    if(double.tryParse(str) == null)
                                    {strVal[1] = '0';}
                                    else
                                    {strVal[1] = str;}

                                    print(strVal);
                                  });
                                }
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                            child: TextField(
                                decoration:   InputDecoration(
                                    hintText: Labels[2]   ///R2
                                ),
                                onSubmitted: (String str){
                                  setState((){
                                    if(double.tryParse(str) == null)
                                    {strVal[2] = '0';}
                                    else
                                    {strVal[2] = str;}

                                    print(strVal);
                                  });
                                }
                            ),
                          ),


                        ],
                      ),
                    ),



                  ),

                  Image.asset(
                    'assets/images/Divisor.jpg',
                    scale: 0.7,
                  ),



                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: TextField(
                          decoration:   InputDecoration(
                              hintText: Labels[3]   ///Vout
                          ),
                          onSubmitted: (String str){
                            setState((){
                              if(double.tryParse(str) == null)
                              {strVal[3] = '0';}
                              else
                              {strVal[3] = str;}

                              print(strVal);
                            });
                          }
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),


        );
      }
  void Calcular()
  {

    double Vin = double.parse(strVal[0]);
    double R1  = double.parse(strVal[1]);
    double R2  = double.parse(strVal[2]);
    double Vo  = double.parse(strVal[3]);


    print('AAAAA');
    int index = 0;
    int i_calc = 0;
    for (index = 0; index < 4; index++)
    {
      if (strVal[index] == '0')
          {i_calc = index;}
    }
    setState(() {
      switch (i_calc)
      {
        case 0:
          Vin = (Vo*(R2 + R1))/R2;
          print(Vin);
          Labels[0] = Vin.toString();
          break;
        case 1:
          R1 = (R2*(Vin - Vo))/Vo;
          print(R1);
          Labels[1] = R1.toString();
          break;
        case 2:
          R2 = (Vo*R1)/(Vin-Vo);
          print(R2);
          Labels[2] = R2.toString();
          break;
        case 3:
          Vo = (Vin*R2)/(R2+R1);
          print(Vo);
          Labels[3] = Vo.toString();
          break;
        default:

          break;
      }
    });
  }
}





