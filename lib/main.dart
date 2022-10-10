import 'package:flutter/material.dart';
import 'package:flutter_application_3/info.dart';
import 'package:flutter_application_3/text.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const Stackapp());
}

Color w = Colors.white;
Color b = Colors.black;

class Stackapp extends StatelessWidget {
  const Stackapp({Key? key}) : super(key: key);

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
  final List<Info> i = [
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
    Info(name: "mehdi", height: 120, date: DateTime.now()),
  ];

  TextStyle s = const TextStyle(color: Colors.black, fontSize: 35);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Title"),
        //backgroundColor: Colors.yellowAccent
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: b,
        child: ListView(
          children: [
            ...i.map((wal) {
              return Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(wal.name,
                                style: TextStyle(color: w, fontSize: 40)),
                            Text("${wal.height}",
                                style: TextStyle(color: w, fontSize: 40)),
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${wal.date}",
                                  style: TextStyle(color: w, fontSize: 40)),
                            ])
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}




/*

class MyHomePageState extends State<MyHomePage> {
  TextStyle s = const TextStyle(color: Colors.black, fontSize: 35);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Title"),
        //backgroundColor: Colors.yellowAccent
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.lime,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyText("text1", s),
                    MyText("text2", s),
                    MyText("text3", s)
                  ]),
            ),
            /*
            Container(
              width: 200,
              height: 200,
              color: Colors.greenAccent,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
            )
            */
          ],
        ),
      ),
    );
  }
}




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      body: Container(
        color: Colors.redAccent,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.fromLTRB(5, 50, 5, 50),
        //height: double.infinity,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: MyText("AAA", s),
              //  child: Text("AAA",style: s),
            ),
            const Text(
              "data",
              style: TextStyle(color: Colors.black, fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
}
*/
