import 'package:get/get.dart';

class StepperController extends GetxController {
  final stepperCount = 1.obs;

  setStepperController(pageCount) {
    stepperCount(pageCount);
  }
}
