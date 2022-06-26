import 'package:flutter/material.dart';
import 'package:obasspresentation/UI/pages/Contact.page.dart';
import 'package:obasspresentation/UI/pages/References.page.dart';
import 'package:obasspresentation/UI/pages/home.page.dart';
import 'package:obasspresentation/UI/pages/projets.page.dart';

import 'UI/pages/about.page.dart';
import 'UI/pages/service.page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OBAAS Consulting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/":(context)=>const HomeScreen(),
        "/projets":(context)=>SolutionsPage(),
        "/services":(context)=>ServicePage(),
        "/contact":(context)=>ContactPage(),
        "/reference":(context)=>ReferencesPage(),
        "/about":(context)=>AboutPage(),
      },
    );
  }




}
