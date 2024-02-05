import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Messages",style: TextStyle(color: Colors.white,fontSize: 30),),
      ),
      body: ListView(
        children: [
          _itemList(title: "Laurent   20:18 \nHow about meeting tomorrow?",image: "assets/images/im_laurent.jpg"),
          _itemList(title: "Tracy  19:22\nI love that Idea",image: "assets/images/im_tracy.jpg"),
          _itemList(title: "Claire  14:34\nI wasn't aware of that.Let me check",image: "assets/images/im_claire.jpg"),
          _itemList(title: "Joe  11:05\nFlutter just released 3.1 officially\nShould I go for it?",image: "assets/images/im_joe.jpg"),
          _itemList(title: "Mark  09:45\nIt totally makes sense to get\nextra day-off",image: "assets/images/im_mark.jpg"),
          _itemList(title: "Williams  08:15\nIt has been rescheduled to next\nSaturday 7:30pm",image: "assets/images/im_williams.jpg"),
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              color: Colors.blueAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 40, // Image radius
                    backgroundImage: NetworkImage('https://12-makhachkala.gosuslugi.ru/netcat_files/8/140/team14_scaled_3.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Dilshodbek Toshtemirov",style: TextStyle(color: Colors.white,fontSize: 16),),
                  ),
                  Text("dilshodbek@gmail.com",style: TextStyle(color: Colors.white,fontSize: 14),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("Home", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 17),),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.people_outline,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("About Us", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _itemList({title, image,}){
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                color: Colors.grey,
              ))
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40, // Image radius
                backgroundImage: AssetImage(image),
              ),
              SizedBox(width: 10,),
              Text(title),
            ],
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.grey,
            size: 30.0,
          )
        ],
      ),
    );
  }
}