import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kaiserproject/models/user_information.dart';
import 'package:kaiserproject/screens/home/user_list.dart';
import 'package:kaiserproject/screens/shared/shared_elements.dart';
import 'package:kaiserproject/services/database.dart';
import 'package:provider/provider.dart';

class Portal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<UserInformation>>.value(
      value: DatabaseService().users,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            //alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              children: <Widget>[
                Text(
                  'welcome, <user>',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                Divider(height: 50),
                Row(
                  children: <Widget>[
                    SizedBox(width: 10),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Column(

                            children: <Widget>[
                              MaterialButton(
                                child: Text('Your Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                                color: Colors.pink[200],
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0, right: 30.0),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/all_about_you');
                                },
                              ),
                              SizedBox(height: 100),
                              MaterialButton(
                                child: Text('Personalized Suggestions', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black)),
                                color: Colors.amber,
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0, right: 30.0),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/general');
                                },
                              ),
                              SizedBox(height: 100),
                              MaterialButton(
                                child: Text('Resources', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                                color: Colors.purple[200],
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0, right: 30.0),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/resources');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              MaterialButton(
                                child: Text('Survey', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                                color: Colors.cyan[100],
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0, right: 30.0),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/survey');
                                },
                              ),
                              SizedBox(height: 50),
                              MaterialButton(
                                child: Text('New Chat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                                color: Colors.grey,
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0, right: 30.0),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/new_chat');
                                },
                              ),
                              SizedBox(height: 50),
                              MaterialButton(
                                child: Text('Open Chats', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                                color: Colors.green[200],
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0, right: 30.0),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/open_chats');
                                },
                              ),
                              SizedBox(height: 50),
                              MaterialButton(
                                child: Text('Contact A Therapist', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black)),
                                color: Colors.red[200],
                                elevation: 8,
                                highlightElevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 30.0, right: 30.0),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/contact_us');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                UserList()
              ]
            ),
          ),
          appBar: defaultAppBar(isPortal: true)
        ),


    );
  }
}
