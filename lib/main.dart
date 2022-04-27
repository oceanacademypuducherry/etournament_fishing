import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Components/Bottombar.dart';
import 'Components/Dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          // This will be applied to the "back" icon
          iconTheme: IconThemeData(color: Colors.white),
          // This will be applied to the action icon buttons that locates on the right side
          actionsIconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          elevation: 15,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        bottomNavigationBar: const BottomBar(),
        appBar: AppBar(
          actions: [
            IconButton(icon: const Icon(Icons.person_pin), onPressed: () {}),
          ],
          leading: IconButton(
              icon: const Icon(Icons.menu_open_rounded), onPressed: () {}),
          title: const Text(
            "e-Tournament-Fishing",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
        body: const Dashboard(),
      ),
    );
  }
}
