import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),

      ),
      body: Center(
        child: Container(

          width: 200,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20) ,
                          topRight: Radius.circular(20),
                          bottomRight: Radius.elliptical(30, 20)),
            border: Border.all(
                          color: Colors.black,
                          width: 2
            ),
              boxShadow: [
                BoxShadow(
                  color: Colors.tealAccent,
                  blurStyle: BlurStyle.normal,
                  blurRadius: 10,
                  spreadRadius: 1
                )
              ]
          ),
          child: const Center(
              child:
                Text(
                    "Keshari",
                ),
                )),
        ),
      
    );
  }
}
