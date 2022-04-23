import 'package:flutter/material.dart';
import 'package:project_21/pages/buttom_page.dart';
import 'package:project_21/pages/detail_page.dart';
import 'package:project_21/pages/home_page.dart';
import 'package:project_21/pages/part10_page.dart';
import 'package:project_21/pages/part1_page.dart';
import 'package:project_21/pages/part2_page.dart';
import 'package:project_21/pages/part3_page.dart';
import 'package:project_21/pages/part4_page.dart';
import 'package:project_21/pages/part5_page.dart';
import 'package:project_21/pages/part6_page.dart';
import 'package:project_21/pages/part7_page.dart';
import 'package:project_21/pages/part8_page.dart';
import 'package:project_21/pages/part9_page.dart';
import 'package:project_21/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:Part9Page(),
      routes: {
        Part10Page.id:(context)=>Part10Page(),
        Part9Page.id:(context)=>Part9Page(),
        Part8Page.id:(context)=>Part8Page(),
        Part7Page.id:(context)=>Part7Page(),
        Part6Page.id:(context)=>Part6Page(),
        Part5Page.id:(context)=>Part5Page(),
        Part4Page.id:(context)=>Part4Page(),
        Part3Page.id:(context)=>Part3Page(),
        Part2Page.id:(context)=>Part2Page(),
        Part1Page.id:(context)=>Part1Page(),
        SecondPage.id:(context)=>SecondPage(),
        ButtomPage.id:(context)=>ButtomPage(),
        DetailPage.id:(context)=>DetailPage(),
        HomePage.id:(context)=>HomePage()
      },
    );
  }
}

