import 'package:etournament_fishing/Components/Appbar.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/Address.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/Address2.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/Codirector.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/Controllers/StepperController.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/DirectorDashboardBottombar.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/DirectorDashboardDescription.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/EventDetails.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/EventDocs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Stepper/Stepper.dart';

class DirectorDashboard extends StatelessWidget {
  DirectorDashboard({Key? key}) : super(key: key);

  StepperController stepperController = Get.find<StepperController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Appbar(
          title: 'Director Dashboard',
        ),
        bottomNavigationBar: DirectorDashboardBottombar(),
        body: Stack(
          children: [
            Column(
              children: [
                const DirectorDashboardDescription(),
                Obx(() => CustomStepper(
                      page: stepperController.stepperCount.value,
                      step1: "Co-director",
                      step2: "Event details",
                      step3: "Address",
                      step4: "Address 2",
                      step5: "Event docs",
                    )),
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
                        if (stepperController.stepperCount.value == 4)
                          Address2(),
                        if (stepperController.stepperCount.value == 5)
                          EventDocs(),
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
