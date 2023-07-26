import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key : key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Current time  is ${DateFormat('jms').format(time)}"),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: (){
              setState(() {
              });
            },
            child: Text("Check"),
          ),
        ],
      ),


    );
  }
}