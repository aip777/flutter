import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  var data;
  PageOne(this.data);

  @override
  _PageOneState createState() => _PageOneState(this.data);
}

class _PageOneState extends State<PageOne> {
  var data;
  _PageOneState(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Title ${data['title']}"),
            Text("Body ${data['body']}"),
            Text("ID ${data['id']}"),
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