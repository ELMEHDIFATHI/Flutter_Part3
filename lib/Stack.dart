import 'package:flutter/material.dart';
import 'package:flutter_application_3/text.dart';

class Stack extends StatelessWidget {
  const Stack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  TextStyle s = const TextStyle(color: Colors.yellow, fontSize: 35);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Title"),
        //backgroundColor: Colors.yellowAccent
      ),
      body: Container(),
    );
  }
}
