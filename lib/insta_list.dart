import 'package:flutter/material.dart';
import 'package:instagram/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'models/post_model.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: dummyInstaList.length,
      itemBuilder: (context, index) => index == 0
          ? new SizedBox(
              child: new InstaStories(),
              height: deviceSize.height * 0.198999,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //1st Row
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          new Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  image: new NetworkImage(
                                     dummyInstaList[index].userImageUrl)),
                            ),
                          ),
                          new SizedBox(
                            width: 10.0,
                          ),
                          new Text(
                            dummyInstaList[index].name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      new IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      )
                    ],
                  ),
                ),


                //2nd Row
                Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                    dummyInstaList[index].postUrl,
                    fit: BoxFit.cover,
                  ),
                ),


                //3rd Row
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Icon(
                            FontAwesomeIcons.heart,
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(
                            FontAwesomeIcons.comment,
                          ),
                          new SizedBox(
                            width: 16.0,
                          ),
                          new Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      new Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),


                //4th Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    dummyInstaList[index].likes,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://aboutme.imgix.net/background/users/k/h/u/khurramrizvi_1531853708_78.jpg")),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //5th Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:
                      Text(dummyInstaList[index].time, style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
    );
  }
}