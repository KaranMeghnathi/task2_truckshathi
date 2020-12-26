import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Task2 extends StatefulWidget{

  @override

  TaskState createState()=> TaskState();
}

class TaskState extends State<Task2>{

  Future<List> TaskData;
  Future <List> getTaskData() async {
    var response = await Dio().get('http://api.tvmaze.com/schedule');
    return response.data;
  }

  @override

  void initState(){
    TaskData = getTaskData();
    super.initState();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: TaskData,
          builder: (BuildContext context,AsyncSnapshot<List> snapshot) {
              return ListView.builder(
              itemCount: snapshot.data==null?0:snapshot.data.length,
              itemBuilder: (BuildContext context,int index) {
                return Column(children: [
                  Card(
                    color: Colors.white60,
                    child: Column(children: [
                      Text("ID : "+snapshot.data[index]['id'].toString()),
                      Text("Name : "+snapshot.data[index]['name']),
                      Text("season : "+snapshot.data[index]['season'].toString()),
                      Text("type : "+snapshot.data[index]['type']),
                      Text("airdate : "+snapshot.data[index]['airdate']),
                      Text("airtime : "+snapshot.data[index]['airtime']),
                      Text(snapshot.data[index]['number'].toString()),
                      Text("runtime : "+snapshot.data[index]['runtime'].toString()+"mins"),
                      Text("summary : "+snapshot.data[index]['summary'].toString()),
                      Text("image : "+snapshot.data[index]['image'].toString()),
                      FlatButton(
                        onPressed:() {
                          final url = snapshot.data[index]['url'];
                          if (canLaunch(url) != null) {
                            launch(url);
                            print(url);
                          }},
                        child: Text(snapshot.data[index]['url']),)
                    ],),),
//Show Card
                  Card(
                    color: Colors.blue[100],
                    child: Column(children: [

                      Text("show id : "+snapshot.data[index]['show']['id'].toString()),
                      Text("show name : "+snapshot.data[index]['show']['name'].toString()),
                      Text("show type : "+snapshot.data[index]['show']['type'].toString()),
                      Text("show language : "+snapshot.data[index]['show']['language'].toString()),
                      Text("status : "+snapshot.data[index]['show']['status'].toString()),
                      Text("Rating : "+snapshot.data[index]['show']['rating']['average'].toString()),
                      Text("summary : "+snapshot.data[index]['show']['summary'].toString()),
                    ],),),

                ],);
              },);
            }
        )
      ),
    );
  }
}