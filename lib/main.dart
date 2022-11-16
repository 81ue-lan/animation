import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animated Example'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: AirplanePath(),
        ),
      ),
    );
  }
}

class AirplanePath extends StatefulWidget {
  @override
  AirplaneState createState() {
    return AirplaneState();
  }
}

class AirplaneState extends State<AirplanePath> {
  var _alignment = Alignment.bottomCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        padding: EdgeInsets.all(10.0),
        duration: Duration(seconds: 5),
        alignment: _alignment,
        child: Container(
          height: 80,
          child: Icon(
            Icons.airplanemode_active,
            size: 55,
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
      FloatingActionButton.extended(
        elevation: 10,
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
            _alignment = Alignment.topCenter;
          });
        },
        icon: Icon(Icons.airplanemode_active),
        label: Text("起飛"),
      ),

    );
  }
}


