import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp_localdatabase_hive/screens/home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    "Plan IT",
                    style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w900,color: Colors.black),
                  ),

                ],
              ),
            ),
            SizedBox(height: 500,),
            Text("Your Personal task management and planning solution", style: TextStyle(color: Colors.lightBlue)),
           SizedBox(
             height: 20.0,
           ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
              },
              child: Container(
                height: 45,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text("Let's get started",style: TextStyle(color: Colors.lightBlue),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
