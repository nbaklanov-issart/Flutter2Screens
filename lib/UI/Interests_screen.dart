import 'package:flutter/material.dart';

class InterestsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InterestsScreenState();
  }

}

class InterestsScreenState extends State<InterestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:  const Text('Interests')),
        body: Column(
          children: <Widget>[
            Text(title: const Text(''))
          ],  
        )
    );
  }
  
}