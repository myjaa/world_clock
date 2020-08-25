import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Location!'),
    );
  }
}
