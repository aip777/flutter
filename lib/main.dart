import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multipage/pages/page_one.dart';
import 'package:http/http.dart' as http;
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

  List posts;

  Future<bool> _getPosts() async{
    String serivceUrl = 'https://jsonplaceholder.typicode.com/posts';
    var response = await http.get(serivceUrl);
    setState(() {
     posts =json.decode(response.body.toString());
     print(posts); 
    });
    return true;
  } 

  @override
  void initState(){
    super.initState();
    this._getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page One"),),
      body: new ListView.builder(
          padding: new EdgeInsets.all(18.0),
          itemCount: posts.length==null?0:posts.length,

          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: Text(posts[index]['title']),
              onTap: (){
                Route route = MaterialPageRoute(builder: (context)=>PageOne(posts[index]));
                Navigator.push(context, route);
              },
            );
          }

      ),
    );
  }
}
