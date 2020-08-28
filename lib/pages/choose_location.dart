import 'package:flutter/material.dart';
import 'package:worldclock/pages/world_time.dart';


class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi'),
    WorldTime(url: 'America/Chicago', location: 'Chicago'),
    WorldTime(url: 'America/New_York', location: 'New York'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul'),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata'),
  ];

  void updateTime(index) async{
    WorldTime instance= locations[index];
    await instance.getData();
    Navigator.pop(context,{
      'location':instance.location,
      'time':instance.time,
      'isDay':instance.isDay,
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical:4.0,horizontal:8.0),
              child: Card(
                child:ListTile(
                  onTap: (){
                    updateTime(index);
                  },
                  title:Text(locations[index].location),
                )
              ),
            );
          },
      )
    );
  }
}
