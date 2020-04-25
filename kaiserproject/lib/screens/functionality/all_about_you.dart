
import 'package:flutter/material.dart';

class AllAboutYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//        body: Padding(
//          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 20.0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Colors.pink[200],
            height: 195,
            width: 420,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 50, 110, 50),
                  child: Container(
                    child: Text('All About You', style: TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 30.0,

                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).copyWith().size.height / 7,
                margin: EdgeInsets.fromLTRB(30, 20, 30, 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pink[200]),
                ),
                child: Center(
                  child: Text('Renameable Post Column',
                    style: TextStyle(fontSize: 30.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(325, 75, 10, 10),
                child:IconButton(
                  icon: Icon(Icons.more_vert),
                  iconSize: 30.0,
                  color: Colors.black,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(55, 150, 10, 10),
                child: MaterialButton(
                  height: MediaQuery.of(context).copyWith().size.height / 8,
                  child: Text('Post 1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
                  color: Colors.pink[200],
                  elevation: 4,
                  highlightElevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(225, 150, 10, 10),
                child: MaterialButton(
                  height: MediaQuery.of(context).copyWith().size.height / 8,
                  child: Text('Post 2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
                  color: Colors.pink[200],
                  elevation: 4,
                  highlightElevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(55, 270, 10, 10),
                child: MaterialButton(
                  height: MediaQuery.of(context).copyWith().size.height / 8,
                  child: Text('Post 3', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
                  color: Colors.pink[200],
                  elevation: 4,
                  highlightElevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(225, 270, 10, 10),
                child: MaterialButton(
                  height: MediaQuery.of(context).copyWith().size.height / 8,
                  child: Text('Post 4', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
                  color: Colors.pink[200],
                  elevation: 4,
                  highlightElevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                color: Colors.pink[200],
                margin: EdgeInsets.fromLTRB(60, 400, 10, 10),
                child: MaterialButton(
                  child: IconButton(
                    icon: Icon(Icons.add),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 4,
                  highlightElevation: 2,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(190, 405, 10, 10),
                child: Text('Add Column',
                  style: TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

