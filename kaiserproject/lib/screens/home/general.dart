
import 'package:flutter/material.dart';
import 'package:kaiserproject/services/auth.dart';

//i would personally suggest making this the hub for every other feature to be accessed

class General extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.amber,
              height:150,
              width: 420,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: (){}, icon:Icon(Icons.arrow_back),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0,50,160,20),
                    child: Container(
                      child: Text('general', style: TextStyle(
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
              padding: const EdgeInsets.fromLTRB(10,35,10,35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Transform.rotate(
                    angle: 45,
                    child: MaterialButton(
                      color: Colors.amber[100],
                      onPressed: (){
                        Navigator.pushNamed(context, '/school'); //this screen doesn't actually exist yet
                      },
                      minWidth: 70,
                      height: 70,
                      child: Transform.rotate(
                        angle:-45,
                        child:Text(
                          'school',
                          style: TextStyle(fontFamily: 'Oswald',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                      ),
                    ),
                    height: 100,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 5, 60, 5),
                        ),
                        Text(
                          '   adult problems',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '   social problems',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '   stress from work',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10,35,10,35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Transform.rotate(
                    angle: 45,
                    child: MaterialButton(
                      color: Colors.amber[100],
                      onPressed: (){
                        Navigator.pushNamed(context, '/school');
                      },
                      minWidth: 70,
                      height: 70,
                      child: Transform.rotate(
                        angle:-45,
                        child:Text(
                          'lifestyle',
                          style: TextStyle(fontFamily: 'Oswald',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                      ),
                    ),
                    height: 100,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 5, 60, 5),
                        ),
                        Text(
                          '   activities',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '   socialization',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(10,35,10,35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Transform.rotate(
                    angle: 45,
                    child: MaterialButton(
                      color: Colors.amber[100],
                      onPressed: (){
                        Navigator.pushNamed(context, '/school');
                      },
                      minWidth: 70,
                      height: 70,
                      child: Transform.rotate(
                        angle:-45,
                        child:Text(
                          'home',
                          style: TextStyle(fontFamily: 'Oswald',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                      ),
                    ),
                    height: 100,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(60, 5, 60, 5),
                        ),
                        Text(
                          '   communication problems',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '   understanding',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
        appBar: AppBar(
        title: Text('Kaiser Project'),
          actions: <Widget>[
            FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('logout'),
                onPressed: () async {
                  await _auth.signOutAccount();
    })
          ]
    ),
    );






  }
}