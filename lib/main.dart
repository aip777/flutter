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
        appBar: new AppBar(title: new Text('Home')),
        body: ListView.builder(
                itemCount:people.length,
                itemBuilder: (BuildContext context, int index){
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text("P"),
                        ),
                        title: Text(people[index] ['name']),
                        subtitle: Text(people[index]["email"]),
                      )
                    ],
                  );
                }

              ),



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
