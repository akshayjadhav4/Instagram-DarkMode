import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InstaStories extends StatefulWidget {
  @override
  _InstaStoriesState createState() => _InstaStoriesState();
}

class _InstaStoriesState extends State<InstaStories> {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      //  Row(
      //   children: <Widget>[
      //     new Icon(Icons.play_arrow),
      //     new Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
      //   ],
      // )
    ],
  );
  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.all(0.5),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, i) => Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://pbs.twimg.com/profile_images/1102071490646663169/YlH7YrRm_400x400.jpg")),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                ),
                i == 0
                    ? Positioned(
                        right: 5.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 10.0,
                          child: Icon(
                            Icons.add,
                            size: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
          Divider(
            color: Colors.black,
            height: 10.0,
          )
        ],
      ),
    );
  }
}
