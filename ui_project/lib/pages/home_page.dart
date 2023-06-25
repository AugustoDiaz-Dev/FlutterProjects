// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_project/utilities/actions.dart';
import 'package:ui_project/utilities/tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        // BOTTOM NAVIGATION BAR
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Articles',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.grey),
              label: 'My Words',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, color: Colors.grey),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school, color: Colors.grey),
              label: 'Cards',
            ),
          ],
          selectedItemColor: Colors.blue[800],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Column(
              children: [
                // HEADER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hola Есения! :)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    Text('June 23rd, 2023',
                        style: TextStyle(color: Colors.blue[200])),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24),
                // SEARCH BAR
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Search',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ]),
                ),
                SizedBox(height: 24),
                // THIRD PART
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Actions',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(width: 8),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 24),
                // ICONS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Column(
                      children: [
                        MyActions(
                          myActions: '📚',
                        ),
                        SizedBox(height: 8),
                        Text('Study',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        MyActions(
                          myActions: '💰',
                        ),
                        SizedBox(height: 8),
                        Text('Buy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        MyActions(
                          myActions: '❔',
                        ),
                        SizedBox(height: 8),
                        Text('Ask',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        MyActions(
                          myActions: '🌎',
                        ),
                        SizedBox(height: 8),
                        Text('Contact',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(24)),
                    child: Container(
                        color: Colors.grey[50],
                        child: Center(
                          child: Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(24, 12, 24, 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text('Exercises',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      )),
                                  Icon(Icons.more_horiz),
                                ],
                              ),

                              // LISTVIEW
                            ),
                            SizedBox(height: 20),
                            Expanded(
                              child: ListView(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Tiles(
                                      icon: Icons.voice_chat,
                                      name: 'Speaking Skills',
                                      number: 8,
                                      color: Colors.pink),
                                  Tiles(
                                      icon: Icons.text_fields,
                                      name: 'Writing Skills',
                                      number: 16,
                                      color: Colors.yellow),
                                  Tiles(
                                      icon: Icons.book,
                                      name: 'Reading Skills',
                                      number: 12,
                                      color: Colors.orange),
                                  Tiles(
                                      icon: Icons.headphones,
                                      name: 'Listening Skills',
                                      number: 20,
                                      color: Colors.green),
                                ],
                              ),
                            )
                          ]),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
