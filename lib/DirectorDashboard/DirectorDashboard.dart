import 'package:etournament_fishing/Components/Appbar.dart';
import 'package:etournament_fishing/Components/CustomTextField.dart';
import 'package:etournament_fishing/DirectorDashboard/Address.dart';
import 'package:etournament_fishing/DirectorDashboard/Codirector.dart';
import 'package:etournament_fishing/DirectorDashboard/DirectorDashboardDescription.dart';
import 'package:etournament_fishing/DirectorDashboard/EventDetails.dart';
import 'package:etournament_fishing/DirectorDashboard/Stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controllers/StepperController.dart';

class DirectorDashboard extends StatelessWidget {
  DirectorDashboard({Key? key}) : super(key: key);

  StepperController stepperController = Get.find<StepperController>();

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
                Obx(() =>
                    CustomStepper(page: stepperController.stepperCount.value)),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 153),
              child: Stack(
                children: [
                  Obx(
                    () => ListView(
                      children: [
                        if (stepperController.stepperCount.value == 1)
                          Codirector(),
                        if (stepperController.stepperCount.value == 2)
                          EventDetails(),
                        if (stepperController.stepperCount.value == 3)
                          Address(),
                      ],
                    ),
                  ),
                  // EventDetails(),
                ],
              ),
            )
          ],
        ));
  }
}
