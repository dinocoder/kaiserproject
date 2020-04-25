
import 'package:flutter/material.dart';

class NewChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 20.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white, //will make it optional for ppl to select img
                radius: 35.0,
              ),
            ),
            Divider(
              height: 50.0,
            ),
            Text(
              'Name of chat',
              style: TextStyle(
                fontSize: 26.0,
                color:Colors.grey,
              ),
            ),
            TextFormField(
//              decoration: InputDecoration(
//               labelText:'Person name/group chat name',
//              ),
            ),
            SizedBox(height: 25.0,),
            Text(
              'Public or private',
              style: TextStyle(
                fontSize: 26.0,
                color:Colors.grey,
              ),
            ),
            TextFormField(
//                    decoration: InputDecoration(
//                        labelText: 'Enter your username'
//                    ),
            ),
            SizedBox(height: 25.0,),
            Text(
              'Max Number of ppl',
              style: TextStyle(
                fontSize: 26.0,
                color:Colors.grey,
              ),
            ),

            SizedBox(height:80.0),
            Center(
              child: MaterialButton(
                child: Text('Create new chat', style: TextStyle(color:Colors.white,
                    fontWeight : FontWeight.bold, fontSize: 25.0)),
                color: Colors.blue[100],
                elevation: 4,
                highlightElevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 40.0, right: 40.0),
                onPressed: () {//does something
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


