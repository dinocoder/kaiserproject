import 'package:flutter/material.dart';
import 'package:kaiserproject/screens/shared/shared_elements.dart';
import 'package:kaiserproject/screens/shared/shared_elements.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
//        body: Padding(
//          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 20.0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
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
                  padding: const EdgeInsets.fromLTRB(10.0,50,150,20),
                  child: Container(
                    child: Text('Contact A Therapist', style: TextStyle(
                      fontFamily:'Oswald',
                      fontSize:30.0,
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 500,
            height: 40,
//            height: MediaQuery.of(context).copyWith().size.height / 7,
            margin: EdgeInsets.fromLTRB(35, 20, 35, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: Text('Name:',
              style: TextStyle(fontSize: 20.0,),
//                textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 500,
            height: 40,
//            height: MediaQuery.of(context).copyWith().size.height / 7,
            margin: EdgeInsets.fromLTRB(35, 20, 35, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: Text('Email:',
              style: TextStyle(fontSize: 20.0,),
//                textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 500,
            height: 200,
//            height: MediaQuery.of(context).copyWith().size.height / 7,
            margin: EdgeInsets.fromLTRB(35, 20, 35, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: Text('Message:',
              style: TextStyle(fontSize: 20.0,),
//                textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,30,30,30),
            child: MaterialButton(
              color: Colors.blue[100],
              onPressed: (){},
              child: Text(
                'send',
                style: TextStyle(fontFamily: 'Oswald',
                ),
              ),
            ),
          ),

        ],
      ),
        appBar: defaultAppBar()
    );
  }
}

