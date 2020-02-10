import 'package:flutter/material.dart';
import 'package:flutter2screens/UI/Free_screen.dart';
import './popular_interests.dart';
import '../Data/category.dart';

class InterestsScreen extends StatefulWidget {
  List<String> popular = List<String>();

  InterestsScreen() {
    popular.add("Sports");
    popular.add("Swim");
    popular.add("Harry Potter");
    popular.add("Flutter");
    popular.add("Dart");
  }

  @override
  State<StatefulWidget> createState() {
    return InterestsScreenState(popular);
  }

}

class InterestsScreenState extends State<InterestsScreen> {
  
  final popular;
  List<Widget> popularWidgets = List<Widget>(); 
  List<String> userInterests = List<String>();
  List<Widget> userWidgets = List<Widget>();

  InterestsScreenState(this.popular) {
    
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    userWidgets = List<Widget>();
    popularWidgets = List<Widget>();    

    for (var item in popular) {
      popularWidgets.add(RaisedButton(
        shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(
                color: Color(0xFF9DC9E9)
                )
            ),
        textColor: Colors.white,
        child: Text(item)
      ));
    }

    
    for (var item in userInterests) {
      userWidgets.add(RaisedButton(
        shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
              side: BorderSide(
                color: Color(0xFF9DC9E9)
                )
            ),
        textColor: Colors.white,
        child: Text(item)
      ));
    }


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
                      'Choose your interests', 
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
                  top: 11,
                  left: width * 0.048,
                  right: width * 0.048
                ),
                child: Container(
                        height: 5,
                        color: Color(0x3D5E5CDB),
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 75
                          ),
                          child: Container(
                            color: Color(0xFF5E5CDB),
                          ),
                        ),
                      )
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left:width * 0.048, right: width * 0.048),
                child: TextField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),                  
                  hintText: "Search",
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(10.0)),                     
                    borderSide: BorderSide(color: Colors.transparent)                                     
                  ),                  
                  filled: true,                                  
                  ),
                  
                  onSubmitted:(String str){
                    setState((){
                      if (userInterests != null) {
        userInterests.add(str); 
      }  
                    });
                  },
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: width * 0.048),
                child: Row(children: <Widget>[
                  Text(
                    "Popular interests",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                  )
                  ]
                ) 
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child:Wrap(
                  children: popularWidgets
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: width * 0.048),
                child: Row(children: <Widget>[
                  Text(
                    "User interests",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                  )
                  ]
                ) 
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child:Wrap(
                  children: userWidgets
                ),
              ),
              Padding(
                      padding: EdgeInsets.only(top: 25),
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
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) {
                                  return FreeScreen();
                                }
                              ));   
                            }                                                       
                          )
                        ],
                      ),
                    )                                  
            ],  
          ),
        ) 
    );
  }
}