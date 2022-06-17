import 'package:etournament_fishing/Components/DirectorDashboard/DirectorDashboard.dart';
import 'package:etournament_fishing/style.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Components/DirectorDashboard/Controllers/StepperController.dart';
import 'Components/UpcomingEvents/UpcomingEventsDataCollection.dart';

void main() {
  Get.lazyPut(() => StepperController());
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
        body: DirectorDashboard(),
      ),
    );
  }
}
