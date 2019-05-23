import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'helper.dart';
void main(){

  runApp(new MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget{
  final _helloWorld = "Hello World Hello World Hello WorldHello World Hello World Hello WorldHello World Hello World Hello WorldHello World Hello World Hello World";
  @override
  Widget build(BuildContext contex){

      return Scaffold(
        appBar: new AppBar(title: new Text('Home')),
        body: Column(
          children: <Widget>[
            Container(
              height: 500,
              padding: EdgeInsets.all(20),
              child: ListView(
                children: <Widget>[
                    _cell(),
                    Divider(),
                    _cell(),
                  Divider(),
                    _cell(),
                  Divider(),
                    _cell(),
                  Divider(),
                    _cell(),
                  Divider(),
                    _cell(),

                ],
              ),
            )
          ],
        )
      ); // end Scaffold
  }
      Widget _rowCell(String clr){
    return Expanded(
      child: Container(
        height: 50, width: 50, decoration: BoxDecoration(color: Color(Helper.getHexToInt(clr))),
      child: Icon(Icons.all_inclusive, color: Colors.red,),
      ),

    );
      }


    Widget _cell() {
      return Row(children: <Widget>[
      Container(
      width: 100,
      height: 100,

      decoration: BoxDecoration(color: Colors.teal),
      child: Icon(Icons.lightbulb_outline, color: Colors.white),

    ),
      ],
      );
  }
}
