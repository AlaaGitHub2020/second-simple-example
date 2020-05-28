import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController _nameController = TextEditingController();

  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Second Exampile Flutter App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 28.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(
          15.0,
        ),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
//
            Image.asset(
              'images/myphoto.jpg',
              fit: BoxFit.fill,
              width: 300.0,
              height: 200.0,
            ),

            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                icon: Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            FlatButton(
              color: Colors.deepOrange,
              onPressed: () {
                setState(() {
                  name = _nameController.text;
                });
              },
              child: Text(
                'click me to print your name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Text(
              'Your name will be here: ' + '${name ?? ''}',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
