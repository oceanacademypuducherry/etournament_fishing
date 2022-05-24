import 'package:etournament_fishing/Components/DirectorDashboard/Controllers/StepperController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Appbar.dart';
import '../DirectorDashboard/DirectorDashboardBottombar.dart';
import '../DirectorDashboard/DirectorDashboardDescription.dart';
import '../Stepper/Stepper.dart';
import 'UpcomingEventStep1.dart';
import 'UpcomingEventStep2.dart';
import 'UpcomingEventStep3.dart';
import 'UpcomingEventStep4.dart';

class UpcomingEventsDataCollection extends StatelessWidget {
  UpcomingEventsDataCollection({Key? key}) : super(key: key);

  StepperController stepperController = Get.find<StepperController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Appbar(
          title: 'Upcoming Event',
        ),
        body: Stack(
          children: [
            Column(
              children: [
                const DirectorDashboardDescription(),
                Obx(() => CustomStepper(
                      page: stepperController.stepperCount.value,
                      step1: "Step1",
                      step2: "Step2",
                      step3: "Step3",
                      step4: "Step4",
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
                          UpcomingEventStep1(),
                        if (stepperController.stepperCount.value == 2)
                          UpcomingEventStep2(),
                        if (stepperController.stepperCount.value == 3)
                          UpcomingEventStep3(),
                        if (stepperController.stepperCount.value == 4)
                          UpcomingEventStep4(),
                        if (stepperController.stepperCount.value == 5)
                          UpcomingEventStep4(),
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
