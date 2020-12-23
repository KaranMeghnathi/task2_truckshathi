
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/getwidget.dart';
class ProfilePage extends StatefulWidget{

  @override
  ProfileState createState() => ProfileState();

}

class ProfileState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {

  TabController tabController;


  @override

  void initState() {
    super.initState();
     tabController = TabController(length: 3, vsync :this );
  }

  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child:
      Column(children: [
            Row(
              children: [
                Container(padding: EdgeInsets.only(left: 5,top: 40),child: GFAvatar(size: 50,backgroundImage: AssetImage("assets/index.jpg"),),),
                Container(
                  height: 90,
                  width: 90,
                  padding: EdgeInsets.only(left: 15,top: 10),
                  child: ListTile(title: Text("10"),subtitle: Text("Posts"),),
                ),
                Container(
                  height: 90,
                  width: 100,
                  padding: EdgeInsets.only(left: 1,top: 10),
                  child: ListTile(title: Text("101"),subtitle: Text("Followers"),),
                ),
                Container(
                  height: 90,
                  width: 105,
                  padding: EdgeInsets.only(left: 1,top: 10),
                  child: ListTile(title: Text("101"),subtitle: Text("Following"),),
                ),
              ],
            ),
        SizedBox(height: 100,),
        GFTabBar(
          tabBarColor: Colors.white,
          length: 3,
          labelColor: Colors.black,
          indicatorColor: Colors.black,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.image_outlined),
              ),
            Tab(
              icon: Icon(Icons.video_call_outlined),
              ),
            Tab(
              icon: Icon(Icons.image_sharp),
             ),
          ],
        ),
      ],
      ),
      ),
    );
  }
}