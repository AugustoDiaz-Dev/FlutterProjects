import 'package:flutter/material.dart';
import 'package:flutter_application_3/services/world_time.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Salta',
        flag: 'argentina.png',
        url: 'America/Argentina/Salta');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
