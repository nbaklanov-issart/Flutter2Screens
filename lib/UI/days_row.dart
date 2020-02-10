import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Data/day_model.dart';

class SingleDay extends StatelessWidget {
  final double width;
  final double height;  
  final DayModel model;
  final Function(DayModel) listenerCallback;

  SingleDay(this.width, this.height, this.model, this.listenerCallback);

  Color textColor;
  Color backColor;

  final unselectedColor = Color(0xFF5E5CDB);
  final selectedColor = Colors.white;

  final unselectedBackgroundColor = Color(0xFFF2F2FC);
  final selectedBackgroundColor =  Color(0xFF5E5CDB);

  AssetImage morningAsset;
  AssetImage dayAsset;
  AssetImage nightAsset;

  @override
  Widget build(BuildContext context) {    
    if (model.isSelected) {      
      textColor = selectedColor;
      backColor = selectedBackgroundColor;
    } else {
      textColor = unselectedColor;
      backColor = unselectedBackgroundColor;
    }

    if (model.morning) {
      morningAsset = AssetImage("assets/Ellipse 13.png");
    } else {
      morningAsset = AssetImage("assets/Ellipse 7.png");
    }

    if (model.afternoon) {
      dayAsset = AssetImage("assets/Ellipse 12.png");
    } else {
      dayAsset = AssetImage("assets/Ellipse 7.png");
    }

    if (model.evening) {
      nightAsset = AssetImage("assets/Ellipse 11.png");
    } else {
      nightAsset = AssetImage("assets/Ellipse 7.png");
    }

    return GestureDetector(
      onTap: () {
        print("CLICK");
        listenerCallback(model);
      },
      child: Container(        
      width: width,
      height: height,
      child:  ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
            topLeft: Radius.circular(6),
            topRight: Radius.circular(6)
        ),
        child: Container(
          color: backColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(model.title, style: TextStyle(color: textColor),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,              
                    children: <Widget>[
                    Image(image: morningAsset),
                    Image(image: dayAsset),
                    Image(image: nightAsset)
                    ],
              )

                ],
              )
            ],
          ),
        ),
    ) 
    ),
    );
  }
}