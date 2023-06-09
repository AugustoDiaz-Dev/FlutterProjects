import 'package:flutter/material.dart';

import 'icons.dart';

void main() {
  runApp(const MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My Flutter Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
        // It takes out the drop shadow
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800]),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('/PhotoExAvatar1.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text('NAME',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              SizedBox(
                height: 10,
              ),
              Text(
                'Augusto Diaz',
                style: TextStyle(
                  color: Colors.lightGreenAccent[400],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Likes',
                  style: TextStyle(color: Colors.grey, letterSpacing: 2)),
              Icon(Icons.heart_broken, color: Colors.grey[400]),
              SizedBox(
                height: 10,
              ),
              Text(
                '$counter',
                style: TextStyle(
                  color: Colors.lightGreenAccent[400],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.email, color: Colors.grey[400]),
                  SizedBox(
                    width: 4,
                  ),
                  Text('augustordiaz@gmail.com',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 1,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Icon(MyFlutterApp.github_circled, color: Colors.grey[400]),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Github',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        letterSpacing: 1,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }
}
