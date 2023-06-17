import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String? location;
  String time = "";
  String? flag;
  String? url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // Make the request
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    // print(data);
    // Get properties from data
    String datetime = data['datetime'];
    // print(dateTime);

    // Create a datetime object
    DateTime now = DateTime.parse(datetime.substring(0, 26));

    // Set the time property
    time = now.toString();
  }
}
