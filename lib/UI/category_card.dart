
import '../Data/category.dart';
import 'package:flutter/material.dart';

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Category choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
        return Card(
          color: Colors.white,
          child: Center(child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[                
                Text(choice.title, style: textStyle),
          ]
        ),
      )
    );
  }
}