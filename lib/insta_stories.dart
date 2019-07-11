import 'package:flutter/material.dart';
import 'models/stories_model.dart';

final topText = new Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: <Widget>[
    Text("Stories",
      style: new TextStyle(
        fontWeight: FontWeight.bold
      ),
    ),

    new Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.play_arrow
          ),
          onPressed: (){},
        ),
        Text("Watch All",
        style: new TextStyle(
          fontWeight: FontWeight.bold
        ))
        
      ],
    )
  ],
);


final stories = new Expanded(
  child: Padding(
    padding: const EdgeInsets.only(top:8.0),
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dummyStories.length,
      itemBuilder: (context,index)=>new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          new Container(
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.cover,
                image: new NetworkImage(dummyStories[index].imageUrl),

              )
            ),
            margin: EdgeInsets.symmetric(horizontal: 8.0),
          ),
           index == 0? Positioned(
             right: 10.0,
             child: CircleAvatar(
               backgroundColor: Colors.blueAccent,
               radius: 10.0,
               child: Icon(
                 Icons.add,
                 size: 14.0,
                 color: Colors.white,
               ),
             ),
           ): new Container()
        ],
      ),
    ),
  ),
);

class InstaStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories
        ],
      )
    );
  }
}