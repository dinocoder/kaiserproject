import 'package:flutter/material.dart';

class OpenChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.green[200],
                height:170,
                width: 800,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: (){}, icon:Icon(Icons.arrow_back),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(70,50,130,50),
                          child: Container(
                            child: Text('Open Chats', style: TextStyle(
                              fontFamily:'Oswald',
                              fontSize:30.0,
                            ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
      ),
    );
  }
}

