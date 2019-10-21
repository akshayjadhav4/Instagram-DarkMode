import 'package:flutter/material.dart';
import 'InstaList.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        leading: Icon(Icons.camera_alt,color: Colors.white,),
        title: SizedBox(
          height: 35.0,
          child: Image.asset("assests/instagram.png"),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.send),
          )
        ],
      ),
      body: InstaList(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.add_box),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.account_box),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}