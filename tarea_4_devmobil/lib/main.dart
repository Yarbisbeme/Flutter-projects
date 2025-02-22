// Yarbis Beltre Mercedes
// 2022-0907

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<ProfileScreen> {

  late String _currentTime;

  @override
  void initState() {
    super.initState();
    _updateTime();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _updateTime());
  }

  void _updateTime() {
    final update = DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now());
    setState(() {
      _currentTime = update;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 425,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                image: DecorationImage(
                  image: AssetImage('assets/images/yo.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            Text(
              'Yarbis Beltre Mercedes',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue.shade800),
            ),
            Text(
              _currentTime,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

//Yarbis Beltre Mercedes