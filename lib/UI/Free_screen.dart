import 'package:flutter/material.dart';
import 'package:flutter2screens/Data/day_model.dart';
import './days_row.dart';

class FreeScreen extends StatefulWidget {
  List<DayModel> days = List<DayModel>();

  FreeScreen() {
    days.add(DayModel("M", false, false, false, false));
    days.add(DayModel("T", false, false, false, false));
    days.add(DayModel("W", false, false, false, false));
    days.add(DayModel("T", false, false, false, false));
    days.add(DayModel("F", false, false, false, false));
    days.add(DayModel("S", false, false, false, false));    
    days.add(DayModel("S", false, false, false, false));    
  }

  @override
  State<StatefulWidget> createState() {
    return FreeScreenState(days);
  }

}

class FreeScreenState extends State<FreeScreen> {
  List<DayModel> days;
  
  FreeScreenState(this.days);

  @override
  Widget build(BuildContext context) {

    
    void clickCallback(DayModel model) {    
      setState(() {
        for (var current in days) {        
        if (current == model) {          
          current.isSelected = true;          
        } else {
          current.isSelected = false;          
        }        
      }
      });      
    }


    void changeMorning() {    
      setState(() {
        for (var current in days) {        
          if (current.isSelected) {          
            current.morning = !current.morning;
          }       
        }
      });      
    }

    void changeAfternoon() {    
      setState(() {
        for (var current in days) {        
          if (current.isSelected) {          
            current.afternoon = !current.afternoon;
          }       
        }
      });      
    }

    void changeEvening() {    
      setState(() {
        for (var current in days) {        
          if (current.isSelected) {          
            current.evening = !current.evening;
          }       
        }
      });      
    }



    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double betweendays = width * 0.034;
    double dayselementWidth = ((width - ((width * 0.068) * 2)) - (betweendays * 6)) / 7;
    double dayselementHeight = dayselementWidth / 0.759;
    
    

    return Scaffold(        
        body: SafeArea(
          child: Column(            
            children: <Widget>[
              Row(                                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.0668),
                    child: const Text(
                      'Choose your free time', 
                      style: TextStyle(
                        color: Color(0xFF5E5CDB),
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                        )
                    )
                  )                  
                ],
              )    ,
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.01,
                  left: width * 0.048,
                  right: width * 0.048
                ),
                child: Container(
                        height: 5,
                        color: Color(0xFF5E5CDB),
                      )
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.0668,                  
                ),
                child: const Text(
                        'When you are free?', 
                        style: TextStyle(
                          color: Color(0xFF5E5CDB),
                          fontSize: 30,
                          fontWeight: FontWeight.w500
                        )
                      )
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.0668,            
                  left: width * 0.175,
                  right: width * 0.175      
                ),
                child: const Text(
                        'To be able to find other wayders we need to know your free time.', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xAA5E5CDB),
                          fontSize: 16,
                          fontWeight: FontWeight.w500                          
                        )
                      )
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.040,
                  left: width * 0.048,
                  right: width * 0.048
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[                    
                    Padding(
                      padding: EdgeInsets.only(right: betweendays),
                      child: SingleDay(dayselementWidth, dayselementHeight, days[0], clickCallback)
                    ),                    
                    Padding(
                      padding: EdgeInsets.only(right: betweendays),
                      child: SingleDay(dayselementWidth, dayselementHeight, days[1], clickCallback)
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: betweendays),
                      child: SingleDay(dayselementWidth, dayselementHeight, days[2], clickCallback)
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: betweendays),
                      child: SingleDay(dayselementWidth, dayselementHeight, days[3], clickCallback)
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: betweendays),
                      child: SingleDay(dayselementWidth, dayselementHeight, days[4], clickCallback)
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: betweendays),
                      child: SingleDay(dayselementWidth, dayselementHeight, days[5], clickCallback)
                    ),
                    SingleDay(dayselementWidth, dayselementHeight, days[6], clickCallback)
                  ],
                ),                                                        
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5
                  ),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          changeMorning();
                        },
                      child:Container(
                        width: width * 0.705,
                        height: height * 0.109,
                        color: Color(0xFFFF8B8B),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6)                          
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround, 
                            children: <Widget>[
                              Text(
                                "Morning",
                                style: TextStyle(color: Colors.white)
                                ),
                              Image(image: AssetImage("assets/Group 250.png"))
                            ]
                          )
                        )
                      ),
                      ),
                      GestureDetector(
                        onTap: () {
                          changeAfternoon();
                        },
                      child:   
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(                        
                          width: width * 0.705,
                          height: height * 0.109,
                          color: Color(0xFFFFC350),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround, 
                              children: <Widget>[
                                Text(
                                  "Afternoon",
                                  style: TextStyle(color: Colors.white)
                                  ),
                                Image(image: AssetImage("assets/Group 252.png"))
                              ]
                            )
                          )
                        ),
                        )
                      ),
                      GestureDetector(
                        onTap: () {
                          changeEvening();
                        },
                      child: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Container(
                            width: width * 0.705,
                            height: height * 0.109,
                            color: Color(0xFFB2B1ED),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround, 
                                children: <Widget>[
                                  Text(
                                    "Evening",
                                    style: TextStyle(color: Colors.white)
                                  ),
                                  Image(image: AssetImage("assets/Group 254.png"))
                                ]
                              )
                            )
                          )
                        )
                      ),                      
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xFF5E5CDB))
                            ), 
                            child: Text("PREV", style: TextStyle(color: Color(0xFF5E5CDB))), 
                            onPressed: () {},                            
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: Color(0xFF5E5CDB))
                            ), 
                            color: Color(0xFF5E5CDB),
                            child: Text("NEXT", style: TextStyle(color: Colors.white)), 
                            onPressed: () {},                            
                          )

                        ],
                      ),
                    )                    
                    ],
                  )
                )                              
            ],  
          ),
        ) 
    );
  

  }
}