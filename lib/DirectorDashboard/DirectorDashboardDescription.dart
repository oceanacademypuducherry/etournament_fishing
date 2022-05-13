import 'package:etournament_fishing/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DirectorDashboardDescription extends StatelessWidget {
  const DirectorDashboardDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(15),
      decoration: const BoxDecoration(color: lightGreen),
      child: const Center(
        child: Text(
          "HI Josh, to setup and publish your tournament,"
          " you must update each of the sections above before submitting...",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor, fontSize: 13, fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
