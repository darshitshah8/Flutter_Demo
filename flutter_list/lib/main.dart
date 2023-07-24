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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
    var names = ['Tony','Bruce','Thor','Natasha','Gamore','Groot','Rocket','Loky','Peter','Clynt'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Container"),

      ),
      body: ListView.separated(itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(names[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        );
      },
        itemCount: names.length,
        separatorBuilder: (context, index){
        return Divider(height:20,thickness: 1,);
        },
        scrollDirection: Axis.vertical,
      )

    );
  }
}




//
// ListView(
// //scrollDirection: Axis.vertical,
// //reverse: true,
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text("Tony",style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text("Bruce",style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text("Thor",style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text("Groot",style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text("Natasha",style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text("Gamora",style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),),
// ),
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text("Steave",style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),),
// ),
//
// ],
// )