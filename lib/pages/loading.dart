import 'package:flutter/material.dart';
import 'package:worldclock/pages/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

//  String time='loading';

  void getWorldTime() async{
    WorldTime instance=WorldTime(location:'Kolkata',url:'Asia/Kolkata');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home',arguments:{
      'location':instance.location,
      'time':instance.time,
      'isDay':instance.isDay,
    });
//    print(instance.time);
//    setState(() {
//      time=instance.time;
//    });
  }

  @override
  void initState() {
    super.initState();
    getWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body:Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}
