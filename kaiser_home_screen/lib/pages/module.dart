import 'package:flutter/material.dart';

class Module extends StatefulWidget {
  @override
  _ModuleState createState() => _ModuleState();
}

class _ModuleState extends State<Module> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'School',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[300],
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-0.95,-0.80),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: Ink(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0),
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(1000.0),
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: (){},
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.95,0),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: Ink(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0),
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(1000.0),
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: (){},
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.95,0.80),
            child: Container(
              height: 100.0,
              width: 100.0,
              child: Ink(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0),
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(1000.0),
                  child: Padding(
                    padding: EdgeInsets.all(1.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: (){},
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160,90,30,30),
            child: Container(
              child: Text(
                'Stress From Work',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160,290,30,30),
            child: Container(
              child: Text(
                'Social Problems',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160,495,30,30),
            child: Container(
              child: Text(
                'Problem Adults',
                style: TextStyle(
                    fontSize: 25.0
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

