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
      padding: EdgeInsets.all(20),
      decoration: const BoxDecoration(color: lightGreen),
      child: const Center(
        child: Text(
          "Complete the form below to include both info ... for both anglers in"
          "a Team event otherwise just Angler 1 is required",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor, fontSize: 13, fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
