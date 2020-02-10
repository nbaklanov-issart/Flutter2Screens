import 'package:flutter/material.dart';
import './popular_interests.dart';
import '../Data/category.dart';

class InterestsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InterestsScreenState();
  }

}

class InterestsScreenState extends State<InterestsScreen> {
  


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                  left: 20,
                  right: 20
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
                padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                child: TextField(decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),                  
                  hintText: "Search",
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(10.0)),                     
                    borderSide: BorderSide(color: Colors.transparent)                                     
                  ),                  
                  filled: true,                
                  )
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 4),
                child: PopularInterests(),
                )              
            ],  
          ),
        ) 
    );
  }

  Future<List<Category>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Category(
        "Title : $search $index",        
      );
    });
  } 
  
}