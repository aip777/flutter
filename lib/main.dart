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
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[

                Image.asset('assets/images/image1.png'),
                Image.asset('assets/images/ima.jpg'),
                Container(
                  child: Text(_helloWorld, textAlign: TextAlign.justify,),
                  padding: EdgeInsets.all(20),
                ),
                Row(

                  children: <Widget>[
                    Image.asset('assets/images/image.png'),
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 10,),
                      padding: EdgeInsets.all(15),
                      height: 50,
                      width: 100,
                      decoration:BoxDecoration(color: Color(Helper.getHexToInt('#fbbc05')),
                          borderRadius: BorderRadius.circular(8)) , //end decoration
                      child:Icon(Icons.account_balance),
                    ),//end container

                    Container(
                      margin: EdgeInsets.only(left: 15,top: 10,),
                      padding: EdgeInsets.all(15),
                      height: 50,
                      width: 100,
                      decoration:BoxDecoration(color: Color(Helper.getHexToInt('#fbbc05')),
                          borderRadius: BorderRadius.circular(8)) , //end decoration
                      child:Icon(Icons.account_balance),
                    ),//end container

                    Container(
                      margin: EdgeInsets.only(left: 15,top: 10,),
                      padding: EdgeInsets.all(15),
                      height: 50,
                      width: 100,
                      decoration:BoxDecoration(color: Color(Helper.getHexToInt('#fbbc05')),

                          borderRadius: BorderRadius.circular(8)) , //end decoration
                      child:Icon(Icons.account_balance),
                    ),//end container
                  ],)
              ],)
          ],
        )); // end Scaffold
  }

}
