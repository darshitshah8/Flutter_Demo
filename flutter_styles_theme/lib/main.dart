import 'package:flutter/material.dart';
import 'package:flutter_styles_theme/ui_helper/util.dart';

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
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,),
        headlineSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        )
        ),

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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Container"),

        ),
        body: Center(
          child: Column(
            children: [
              Text(
                  "Hello",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.deepOrange),),
              Text(
                  "Hello",
              style: Theme.of(context).textTheme.headlineSmall),
              Text(
                  "Hello",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.deepOrange),),
              Text(
                  "Hello",
              style: myTextStyle10()),
            ],
          ),
        )

    );
  }
}