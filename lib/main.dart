import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REMAR iOS App',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green, // Replace with your desired color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Padding(
              padding: const EdgeInsets.all(8.0),
              // Replace with your actual logo or use Text as a placeholder
              child: Text(
                'REMAR_CITIZEN',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Text(
              'Monitoring Mass Mating Events of Mangrove Crabs',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            // Placeholder for splash screen image
            Image.asset('assets/crabs.png'),
            Column(
              children: <Widget>[
                // Replace with your bottom images or widgets
                Image.asset('assets/logos1.png', fit: BoxFit.fitWidth),
                Image.asset('assets/logos2.png', fit: BoxFit.fitWidth),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
