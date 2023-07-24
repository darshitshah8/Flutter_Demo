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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
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
      body: Container(
        child: Column(
          children: [
            TextButton(
              child: Text("Flat Button"),
              onPressed: (){
                print("Clicked");
              },
              onLongPress: (){
                print("Long Pressed");
              },
            ),
            ElevatedButton(

                onPressed: (){
                    print("Elevated button clicked");
                              },
                onLongPress: (){
                   print("Elevated Button long pressed");
                },
                child: Text("Elevated Button")),
            OutlinedButton(
                onPressed: (){
                  print("Outline button clicked");
                },
                onLongPress: (){
                  print("Outline button long Pressed");
                },

                child: Text("Outline Button"))
          ],
        ),
      ),

    );
  }
}