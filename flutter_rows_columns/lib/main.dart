import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Container"),
      ),
      body: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Container(

          child: SingleChildScrollView(

            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    child: Text("Rows 1"),
                    onPressed: (){
                      print("Button Clicked");
                    }),
                  ElevatedButton(
                    child: Text("Rows 2"),
                    onPressed: (){
                      print("Button Clicked");
                    }),
                  Text("Rows 2"),
                  Text("Rows 3"),
                  Column(
                    children: [
                      Text("Column  1"),
                      Text("Column  1"),
                      Text("Column  1")
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}