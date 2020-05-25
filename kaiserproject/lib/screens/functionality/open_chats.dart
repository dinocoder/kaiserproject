import 'package:flutter/material.dart';
import 'package:kaiserproject/screens/shared/shared_elements.dart';

class OpenChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              defaultScreenNameBar("Open Chats", Colors.green[200]),
              Align(
                alignment: Alignment(-1,-1),
                child: FlatButton(
                  onPressed: () {},
                  color:Colors.green[200],
                  child: Text('Chat #1',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 25.0
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1,0),
                child: FlatButton(
                  onPressed: () {},
                  color:Colors.green[200],
                  child: Text('Chat #2',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 25.0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-1,1),
                child: FlatButton(
                  onPressed: () {},
                  color:Colors.green[200],
                  child: Text('Chat #3',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 25.0),
                  ),
                ),
              ),
            ],
          ),
        ),
          appBar: defaultAppBar()

    );
  }
}

