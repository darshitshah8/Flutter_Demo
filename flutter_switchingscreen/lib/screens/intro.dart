import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switchingscreen/main.dart';

class Introduction extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcom to the app",
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage(),)
              );
            }, child: Text("HomePage")),
          ],
        ),
      ),
    );
  }
  
}