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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select Date"),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async{
              DateTime? datepicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2050));

              if(datepicked!=null){
                print('Date Selected : ${datepicked.day}/${datepicked.month}/${datepicked.year}');
              }
            }, child: Text("Select Date")),
            SizedBox(height: 20,),
            Text("Select Date"),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () async{
              TimeOfDay? timePicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input
              );
              if(timePicked!=null){
                print('Date Selected : ${timePicked.hour}:${timePicked.minute}');
              }
            }, child: Text("Select Time"))
          ],
        ),
      ),
    );
  }
}