import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multipage/pages/page_one.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';



void main(){
  runApp(MaterialApp(home: Dashboard()));
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

 List data;

  Future<bool> loadJsonData() async{
    var jsonText = await rootBundle.loadString("assets/data.json");
    setState(() =>data = json.decode(jsonText));
    print(jsonText);
    return true;
  } 

  @override
  void initState(){
    super.initState();
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Search"),),
      body: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              // itemCount: this.data.length,
              itemCount: data.length==null?0:data.length,
              itemBuilder:(BuildContext context, int i){
                var name = data[i] ['name'];
                var email = data[i] ['email'];

                return ListTile(
                    leading: CircleAvatar(
                      child: Text(name[0]),
                      ),
                      title: Text(name),
                      subtitle: Text(email),
                );
              }

            ),
            )
      ],)
    );
  }
}
