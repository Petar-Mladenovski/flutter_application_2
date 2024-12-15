import 'package:flutter/material.dart';

class JokeCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  JokeCard({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0), 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5, 
      color: Colors.green[50],
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15.0), 
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
          child: Center( 
            child: Text(
              title[0].toUpperCase() + title.substring(1), 
              style: TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold, 
                color: Colors.green[800], 
              ),
              textAlign: TextAlign.center, 
            ),
          ),
        ),
      ),
    );
  }
}
