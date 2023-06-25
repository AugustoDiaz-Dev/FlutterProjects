import 'package:flutter/material.dart';

class Tiles extends StatelessWidget {
  final icon;
  final String name;
  final int number;
  final color;

  const Tiles(
      {super.key,
      required this.icon,
      required this.name,
      required this.number,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      color: color,
                      child: Icon(icon, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        number.toString() + ' Exercises',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]),
                      ),
                    ],
                  )
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
      ),
    );
  }
}
