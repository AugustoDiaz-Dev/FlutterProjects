import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  void getTime() async {
    // Make the request
    Response response = await get(Uri.parse(
        'http://worldtimeapi.org/api/timezone/America/Argentina/Salta'));
    Map data = jsonDecode(response.body);
    // print(data);
    // Get properties from data
    String datetime = data['datetime'];
    // print(dateTime);

    // Create a datetime object
    DateTime now = DateTime.parse(datetime.substring(0, 26));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('Loading Screen'));
  }
}
