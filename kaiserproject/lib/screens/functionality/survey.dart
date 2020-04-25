
import 'package:flutter/material.dart';

class Survey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
//        body: Padding(
//          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 20.0),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.cyan[100],
              height:150,
              width: 420,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/home');
                    }, icon:Icon(Icons.arrow_back),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0,50,90,20),
                    child: Container(
                      child: Text('how was your day', style: TextStyle(
                        fontFamily:'Oswald',
                        fontSize:30.0,
                      ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(30,30,30,20),
                child:Text('what is your mood today?',style:TextStyle(fontSize: 25,),)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.tag_faces,
                  color:Colors.green,
                  size: 50,
                ),
                Icon(
                  Icons.sentiment_neutral,
                  color:Colors.yellow,
                  size: 50,
                ),
                Icon(
                  Icons.sentiment_dissatisfied,
                  color:Colors.red,
                  size: 50,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,30,30,20),
              child: Text('what well today', style: TextStyle(fontSize: 25,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,30,30,20),
              child: TextFormField(
//              decoration: InputDecoration(
//               labelText:'Person name/group chat name',
//              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,30,30,20),
              child: Text('what did not go well today', style: TextStyle(fontSize: 25,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,30,30,10),
              child: TextFormField(
//              decoration: InputDecoration(
//               labelText:'Person name/group chat name',
//              ),
              ),
            ),
          ],
        )
    );


  }
}