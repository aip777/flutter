import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  var msg;
  PageOne(this.msg);

  @override
  _PageOneState createState() => _PageOneState(this.msg);
}

class _PageOneState extends State<PageOne> {
  var msg;
  _PageOneState(this.msg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Page One ${this.msg}"),
          RaisedButton(
            child: Text("GoTO DashBoard"),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
      ),
    );
  }
}
