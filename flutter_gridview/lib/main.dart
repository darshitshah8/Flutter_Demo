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

    var colorBox = [
      Colors.indigo,
      Colors.deepOrange,
      Colors.pinkAccent,
      Colors.yellow,
      Colors.green,
      Colors.red,
      Colors.blueGrey,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),

      ),
      body: GridView.builder(itemBuilder: (context, index) {
        return Container(color: colorBox[index],);
      },
        itemCount: colorBox.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
      )

    );
  }
}



//Code
// GridView.count(
// crossAxisCount: 5,
// mainAxisSpacing: 10,
// crossAxisSpacing: 10,
// children: [
// Container(color: colorBox[1],),
// Container(color: colorBox[2],),
// Container(color: colorBox[0],),
// Container(color: colorBox[3],),
// Container(color: colorBox[4],),
// Container(color: colorBox[5],),
// Container(color: colorBox[6],),
// ],
// ),