import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One"),),
      body: Column(
        children: <Widget>[
          Text("Page One"),
          RaisedButton(
            child: Text("GoTO DashBoard"),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
