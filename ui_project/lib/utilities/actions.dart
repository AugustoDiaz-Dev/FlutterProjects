import 'package:flutter/material.dart';

class MyActions extends StatelessWidget {
  final String myActions;

  const MyActions({super.key, required this.myActions});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          myActions,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
