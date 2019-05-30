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
 List unfilterData;

  Future<bool> loadJsonData() async {
    var jsonText = await rootBundle.loadString("assets/data.json");
    setState(() => data = json.decode(jsonText));
    this.unfilterData = data;
    print(data [1]);
    return true;
  } 

  @override
  void initState(){
    super.initState();
    this.loadJsonData();
  }

  searchData(str){
    var strExist = str.length>0? true:false;
    if (strExist){
        var filterData = [];
        for(var i = 0; i<unfilterData.length; i++){
          String name =unfilterData[i]['name'].toUpperCase();
            if(name.contains(str.toUpperCase())){
              filterData.add(unfilterData[i]);
            }
        }
        setState(() {
         this.data = filterData; 
        });
    }else{
      setState(() {
       this.data = this.unfilterData;
      });
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View Search"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextField(
            decoration:InputDecoration(
            hintText: 'Search a name'
            ),
            onChanged:(String str){
              print(str);
              this.searchData(str);
            },
            ),
            
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
