import 'package:etournament_fishing/Components/Appbar.dart';
import 'package:etournament_fishing/Components/CustomTextField.dart';
import 'package:etournament_fishing/DirectorDashboard/Codirector.dart';
import 'package:etournament_fishing/DirectorDashboard/DirectorDashboardDescription.dart';
import 'package:etournament_fishing/DirectorDashboard/EventDetails.dart';
import 'package:etournament_fishing/DirectorDashboard/Stepper.dart';
import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';

class DirectorDashboard extends StatelessWidget {
  const DirectorDashboard({Key? key}) : super(key: key);

  final int page = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Appbar(
          title: 'Director Dashboard',
        ),
        body: Stack(
          children: [
            Column(
              children: [
                const DirectorDashboardDescription(),
                CustomStepper(page: page),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: Stack(
                children: [
                  ListView(
                    children: [
                      if (page == 1) Codirector(),
                      if (page == 2) EventDetails(),
                    ],
                  ),
                  // EventDetails(),
                ],
              ),
            )
          ],
        ));
  }
}
