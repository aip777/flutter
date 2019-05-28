import 'package:flutter/material.dart';
import 'package:multipage/pages/page_one.dart';

void main(){
  runApp(MaterialApp(home: Dashboard()));
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),
      body: Column(
        children: <Widget>[
          Text("Dashboard"),
          RaisedButton(
            child: Text("Page One"),
            onPressed: (){
              Route route = MaterialPageRoute(builder: (context)=>PageOne());
              Navigator.push(context, route);
            },
          )
        ],
      ),
    );
  }
}
