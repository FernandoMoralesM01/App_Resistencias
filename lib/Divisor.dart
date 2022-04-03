import 'package:flutter/material.dart';

class DivisorDeVoltaje extends StatefulWidget {
  const DivisorDeVoltaje({Key? key}) : super(key: key);

  @override
  _DivisorDeVoltajeState createState() => _DivisorDeVoltajeState();
}

class _DivisorDeVoltajeState extends State<DivisorDeVoltaje> {

  String result = '';

  @override
  Widget build(BuildContext context)
  {
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
                  decoration:  const InputDecoration(
                      hintText: "V out"
                  ),
                  onSubmitted: (String str){
                    setState((){
                      print(str);
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
                            decoration:  const InputDecoration(
                                hintText: "R1"
                            ),
                            onSubmitted: (String str){
                              setState((){
                                print(str);
                              });
                            }
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                        child: TextField(
                            decoration:  const InputDecoration(
                                hintText: "R2"
                            ),
                            onSubmitted: (String str){
                              setState((){
                                print(str);
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
                      decoration:  const InputDecoration(
                          hintText: "V out"
                      ),
                      onSubmitted: (String str){
                        setState((){
                          print(str);
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
}

