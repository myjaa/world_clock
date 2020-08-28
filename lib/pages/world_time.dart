import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location,time,url;
  bool isDay;

  WorldTime({this.location,this.url});

  Future<void> getData() async{

    Response response=await get('http://worldtimeapi.org/api/timezone/$url');
    Map data=jsonDecode(response.body);
//    print(data);

    String datetime = data['datetime'];
    String offset=data['utc_offset'].substring(1,3);
    String offset2=data['utc_offset'].substring(4,6);

//    print("$offset $datetime");
    DateTime now=DateTime.parse(datetime);
    now=now.add(Duration(hours: int.parse(offset), minutes: int.parse(offset2)));
//    print(now);

    isDay=now.hour>6 && now.hour<20 ? true : false;
    time=DateFormat.jm().format(now);
    print(time);
  }
}
