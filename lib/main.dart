import 'package:flutter/material.dart';

import './Window.dart';

void main()
{
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
  int _indexMenu = 1;

  void ScreenChange()
  {

  }


  void showConf()
  {
    setState(() {
      _indexMenu = 0;
    });
  }

  @override
  Widget build (BuildContext context)
  {
    /**INICIA MATERIAL APP**/
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: AppBarTxt(_indexMenu),
          leading: GestureDetector(
            onTap: showConf,
            child: Icon(Icons.settings),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child:
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text("Divisor de voltaje"),
                      onTap: () => setState((){ _indexMenu = 1;}),
                    ),
                    PopupMenuItem(
                      child: Text("Cálculo de resistencias"),
                      onTap: () => setState((){ _indexMenu = 2;}),
                    ),
                    PopupMenuItem(
                      child: Text("Generador de corriente"),
                      onTap: () => setState((){ _indexMenu = 3;}),
                    ),
                    PopupMenuItem(
                      child: Text("Reducción de resistencias"),
                      onTap: () => setState((){ _indexMenu = 4;}),
                    ),
                  ],),
                alignment: Alignment(1.0, 1.0),
              ),
              Window(_indexMenu),
            ],
          ),
        ),
      ),
    );

    /**TERMINA MATERIAL APP**/
  }
}
