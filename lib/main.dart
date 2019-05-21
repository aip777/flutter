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
  final _helloWorld = "Hello World Hello World Hello World";
  @override
  Widget build(BuildContext contex){

      return Scaffold(
        appBar: new AppBar(title: new Text('Home')),
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/images/image1.png'),
                Positioned(
                  bottom: 20,
                  left: 30,
                  child: Text("Hello Flutter", style: TextStyle(color: Colors.black, fontSize: 20),),
                )
              ],
            ) ,// end stack
            Text("Features", style: TextStyle(color: Colors.green, fontSize: 20),),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                _rowCell('#6c5ce7'),
                _rowCell('#fd79a8'),
                _rowCell("#d63031"),
            ],)
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
}
