import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State <MyApp>
{
  @override

  Widget build (BuildContext context)
  {
    /**INICIA MATERIAL APP**/
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('BASE',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Courier New',
                  fontWeight: FontWeight.bold
                ),
              )
          ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          margin: EdgeInsets.all(30),
          child:Column(
            children: [
              RaisedButton(
                  child: Text('Progama Base', style: TextStyle(
                    fontSize: 20,
                  ),),
                  onPressed: () {print('Presionado');}
              ),
            ],),
        ),
      ),
    );
    /**TERMINA MATERIAL APP**/
  }
}
