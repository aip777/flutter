import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/widgets.dart';
import 'package:my_app/toast.dart' as prefix1;
import 'helper.dart';
import 'toast.dart';


void main(){

  runApp(new MaterialApp(
    title: 'My App',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget{
  _HomePageState createState()=> _HomePageState();
}



class _HomePageState extends State <HomePage>{
  String txt ="Stateless Widget";
  final _helloWorld = "Hello World Hello World Hello WorldHello World Hello World Hello WorldHello World Hello World Hello WorldHello World Hello World Hello World";

  int Count = 0;
  final msg = "Hello this is Show Toast Message";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  _showSnackBar (){
    var _mySnackBar = SnackBar(content: Text("This is my Snack Bar"),);
    _scaffoldKey.currentState.showSnackBar(_mySnackBar);
  }

  _showToast(){
    Toast.show(msg, context, backgroundColor:Colors.red, textColor: Colors.white);
  }

  List people = [
    {"name": "Maryam", "email": "eleifend.vitae@Vivamusmolestiedapibus.edu"},
    {"name": "Carlos", "email": "purus.accumsan@Donecfringilla.edu"},
    {"name": "Ali", "email": "eu.nibh.vulputate@non.ca"},
    {"name": "Alexandra", "email": "placerat@Aenean.com"},
    {"name": "Illana", "email": "egestas@montesnasceturridiculus.co.uk"},
    {"name": "Cora", "email": "auctor.Mauris.vel@erat.com"},
    {"name": "Astra", "email": "gravida@Morbivehicula.org"},
    {"name": "Oliver", "email": "Cras.vehicula@iaculisquis.edu"},
    {"name": "Howard", "email": "faucibus@nuncid.ca"},
    {"name": "Carlos", "email": "nibh.Quisque.nonummy@tristiquepharetra.co.uk"},
    {"name": "Wendy", "email": "Etiam@leoelementum.co.uk"},
    {"name": "Desirae", "email": "posuere.enim.nisl@infaucibusorci.com"},
    {"name": "Cora", "email": "auctor.Mauris.vel@erat.com"},
    {"name": "Astra", "email": "gravida@Morbivehicula.org"},
    {"name": "Oliver", "email": "Cras.vehicula@iaculisquis.edu"},
    {"name": "Howard", "email": "faucibus@nuncid.ca"},
    {"name": "Carlos", "email": "nibh.Quisque.nonummy@tristiquepharetra.co.uk"},
    {"name": "Wendy", "email": "Etiam@leoelementum.co.uk"},
  ];
  @override
  Widget build(BuildContext contex){

    return Scaffold(
      appBar: new AppBar(title: new Text('Home'),),
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[

                Image.asset("assets/images/image3.png"),
                Positioned(
                  left: 30,
                  bottom: 50,
                  child: Container(height: 50, width: 50, child: Image.asset("assets/images/avatar.png"),),
                ),
                Positioned(
                  left: 30,
                  bottom: 20,
                  child: Text("Palash Khan", style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
            SizedBox(height: 30,),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Mailbox"),
            ),
            Divider(),

            SizedBox(height: 30,),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(),
            SizedBox(height: 30,),
            ListTile(
              leading: Icon(Icons.gif),
              title: Text("Gif"),
            ),
            Divider(),

            SizedBox(height: 30,),
            ListTile(
              leading: Icon(Icons.record_voice_over),
              title: Text("Record"),
            ),
            Divider(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: (){
            setState(() {

            });
          }
      ),
      body: ListView(
        children: <Widget>[

          Text("Count: ${Count}", textAlign: TextAlign.center, style: TextStyle(color: Colors.amber),),
          RaisedButton(
              child: Text('Raise Button', style: TextStyle(color: Colors.green),),
              onPressed: (){
                setState(() {
                  _showSnackBar();
                });
              }
          ), //end rise Button

          IconButton(
              icon: Icon(Icons.dashboard),
              onPressed: (){
                setState(() {
                  _showToast();
                });
              }
          ),



          _foodCard(),
          _foodCard(),
          _foodCard(),
        ],
      ),



    ); // end Scaffold
  }

  Widget _foodCard(){
    return Material(
      elevation: 20,
      child:Column (
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset("assets/images/image2.png"),
          Padding(
            padding: EdgeInsets.all(10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Hot Dog", style: TextStyle(color: Colors.green, fontSize: 20),),
                SizedBox(height: 5,),
                Text("Price \$55", style: TextStyle(fontSize: 12),),
                SizedBox(height: 5,),
                Text("Sales 222 Times", style: TextStyle( fontSize: 12),),
              ],
            ) ,
          ),
        ],
      ),
    );
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
