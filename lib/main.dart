import 'package:flutter/material.dart';
import 'uiWidgets/logo.dart';
import 'animations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'REMAR App',
      home: SplashScreen(), //
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2, milliseconds: 10), () {
      Navigator.pushAndRemoveUntil(
        context,
        //MaterialPageRoute(builder: (context) => MainMenu()),
        FadeRoute(page: MainMenu()),
        (Route<dynamic> route) =>
            false, // This condition prevents any routes from being retained in the nav stack.
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green, // Todo: Should be exact REMAR green
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              // Replace with your actual logo or use Text as a placeholder
              child: RemarLogo(),
            ),
            const Text(
              'Monitoring Mass Mating Events of\nMangrove Crabs',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/crabs.png'),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  // Replace with your bottom images or widgets
                  Image.asset('assets/logos1.png', fit: BoxFit.fitWidth),
                  Image.asset('assets/logos2.png', fit: BoxFit.fitWidth),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RemarLogo(),
      ),
      body: const Center(
        child: Text(
            'Welcome to the Placeholder Main Menu!\nThis is where the user will select which mode to start.'),
      ),
    );
  }
}
