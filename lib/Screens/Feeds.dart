import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:task_truckshathi/Screens/Home.dart';

class FeedsPage extends StatefulWidget{

  @override
  FeedsState createState() => FeedsState();

}

class FeedsState extends State<FeedsPage>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
        body:SingleChildScrollView(child: Column(children: [
          Container(
            height: 100,
            width: 500,
            color: Colors.white,
            child: ListView(scrollDirection: Axis.horizontal,children: [

              Padding(child: GFButton(
                type: GFButtonType.outline2x,
                shape: GFButtonShape.pills,
                color: Colors.blueGrey,
                child: Text("1",),
                onPressed:() =>  HomePage(),
              ),
                padding:EdgeInsets.all(10),
              ),

              Padding(child:GFButton(
                type: GFButtonType.outline2x,
                shape: GFButtonShape.pills,
                color: Colors.blueGrey,
                child: Text("2",),
                onPressed:() =>  HomePage(),
              ),
                padding:EdgeInsets.all(10),
              ),

              Padding(child:GFButton(
                type: GFButtonType.outline2x,
                shape: GFButtonShape.pills,
                color: Colors.blueGrey,
                child: Text("3",),
                onPressed:() =>  HomePage(),
              ),
                padding:EdgeInsets.all(10),
              ),

              Padding(child:GFButton(
                type: GFButtonType.outline2x,
                shape: GFButtonShape.pills,
                color: Colors.blueGrey,
                child: Text("4",),
                onPressed:() =>  HomePage(),),
                padding:EdgeInsets.all(10),
              ),
              Padding(child:GFButton(
                type: GFButtonType.outline2x,
                shape: GFButtonShape.pills,
                color: Colors.blueGrey,
                child: Text("5",),
                onPressed:() =>  HomePage(),),
                padding:EdgeInsets.all(10),
              ),

            ],),
          ),
          SizedBox(height: 5,),
          Container(
              height: 600,
              child: ListView(
                children: [
                  GFCard(
                    boxFit: BoxFit.cover,
                    titlePosition: GFPosition.start,
                    title: GFListTile(
                      avatar: GFAvatar(
                        size:22,
                        backgroundImage: AssetImage(''),
                      ),
                      title: Text('Username'),
                      subtitle: Text('Location'),
                    ),
                    image: Image.asset('assets/images.jpg',fit: BoxFit.contain,),
                    buttonBar: GFButtonBar(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.thumb_up), onPressed: null),
                        IconButton(icon: Icon(Icons.messenger_outline), onPressed: null),
                        IconButton(icon: Icon(Icons.send), onPressed: null),
                        SizedBox(width: 100,),
                        IconButton(icon: Icon(Icons.save_alt_sharp), onPressed: null),

                      ],

                    ),

                  ),
                  GFCard(
                    boxFit: BoxFit.cover,
                    titlePosition: GFPosition.start,
                    title: GFListTile(
                      avatar: GFAvatar(
                        size:22,
                        backgroundImage: AssetImage(''),
                      ),
                      title: Text('Username'),
                      subtitle: Text('Location'),
                    ),
                    image: Image.asset('assets/mcimages.jpg',fit: BoxFit.contain,),
                    buttonBar: GFButtonBar(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.thumb_up), onPressed: null),
                        IconButton(icon: Icon(Icons.messenger_outline), onPressed: null),
                        IconButton(icon: Icon(Icons.send), onPressed: null),
                        SizedBox(width: 100,),
                        IconButton(icon: Icon(Icons.save_alt_sharp), onPressed: null),

                      ],

                    ),

                  ),
                  GFCard(
                    boxFit: BoxFit.cover,
                    titlePosition: GFPosition.start,
                    title: GFListTile(
                      avatar: GFAvatar(
                        size:22,
                        backgroundImage: AssetImage(''),
                      ),
                      title: Text('Username'),
                      subtitle: Text('Location'),
                    ),
                    image: Image.asset('assets/inde1.jpg',fit: BoxFit.contain,),
                    buttonBar: GFButtonBar(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.thumb_up), onPressed: null),
                        IconButton(icon: Icon(Icons.messenger_outline), onPressed: null),
                        IconButton(icon: Icon(Icons.send), onPressed: null),
                        SizedBox(width: 100,),
                        IconButton(icon: Icon(Icons.save_alt_sharp), onPressed: null),

                      ],

                    ),

                  ),
                ],)

          ),
        ],
        ),scrollDirection: Axis.vertical,),
    );
  }
}
