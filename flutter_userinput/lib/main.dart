import 'package:flutter/material.dart';
import 'package:flutter_userinput/ui_helper/util.dart';

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
  var emailText = TextEditingController();
  var phoneText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),

      ),
      body: Center(
        child: Container(
          width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                      controller: emailText,
                      decoration: UserInputDecoration()!.copyWith(
                        hintText: "Enter Email",
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.email)),
                          )),


                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: phoneText,
                  decoration: UserInputDecoration()!.copyWith(
                      hintText: "Enter phone number",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.phone)),
                      )),


                ),
                SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: passText,
                  decoration: UserInputDecoration()!.copyWith(
                    hintText: "Enter password",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.password)),
                      ),
                    suffixIcon:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: (){},
                      icon: Icon(Icons.remove_red_eye)),
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                ElevatedButton(
                    onPressed: (){
                  String userEmail = emailText.text.toString();
                  print(userEmail);
                  }, child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Sign Up"),
                  ))
              ],
            )),
      ),
    );
  }
}