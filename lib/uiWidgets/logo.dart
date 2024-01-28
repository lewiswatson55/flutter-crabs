import 'package:flutter/material.dart';

class RemarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DebugView()),
        );
      },
      child: Container(
        color: Colors.transparent, // You can set a background color if needed
        child: const Row(
          mainAxisSize: MainAxisSize.min, // Control the size of the Row
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'REMAR',
              style: TextStyle(
                fontSize: 34, // Adjust font size as needed
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min, // Control the size of the Column
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: 8.0), // Adjust the padding value as needed
                  child: Text(
                    '_CITIZEN',
                    style: TextStyle(
                      fontSize: 18, // Adjust font size as needed
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DebugView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug View'),
      ),
      body: const Center(
        child: Text('This is the Debug View'),
      ),
    );
  }
}
