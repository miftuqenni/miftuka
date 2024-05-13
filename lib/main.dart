import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'counter demo',
      home: HomePageState(),
    ),
  );
}

class HomePageState extends StatefulWidget {
  const HomePageState({super.key});
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<HomePageState> {
  int counter = 0;
  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  void decreamentCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'counter demo',
          style:
              TextStyle(color: Color.fromARGB(255, 11, 14, 13), fontSize: 30.3),
        ),
        backgroundColor: Color.fromARGB(255, 2, 110, 233),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('last/imge/r.jpg'),
                scale: 1.0,
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("counter$counter"),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: decreamentCounter,
            tooltip: 'decreament',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: increamentCounter,
            tooltip: 'increament',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
