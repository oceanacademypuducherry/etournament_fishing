import 'package:etournament_fishing/Components/CustomDropdown.dart';
import 'package:etournament_fishing/Components/CustomTextField.dart';
import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/StepperController.dart';

class EventDetails extends StatelessWidget {
  EventDetails({Key? key}) : super(key: key);

  StepperController stepperController = Get.find<StepperController>();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: 'Virtual Livewell Daily Limit ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                CustomDropdown(
                    values: const ["android", "IOS", "Desktop", "Web"]),
              ],
            ),
          ),
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: 'Daily Top "x" Fish 5 ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                CustomTextField(
                  hintText: "",
                  labelText: "",
                  onChange: null,
                ),
              ],
            ),
          ),
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Boat Mfg Incentive Program? ",
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                CustomDropdown(
                    values: const ["android", "IOS", "Desktop", "Web"]),
              ],
            ),
          ),
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Enable Leaderboard Viewability ",
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                CustomTextField(
                  hintText: "",
                  labelText: "",
                  onChange: null,
                ),
              ],
            ),
          ),
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Event Registration Close Date/Time ",
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                CustomDropdown(
                    values: const ["android", "IOS", "Desktop", "Web"]),
              ],
            ),
          ),
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Weight Conversion ",
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                CustomTextField(
                  hintText: "",
                  labelText: "",
                  onChange: null,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    stepperController.setStepperController(1);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: secondaryColor, fixedSize: const Size(120, 40)),
                  child: const Text(
                    "BACK",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    stepperController.setStepperController(3);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor, fixedSize: const Size(120, 40)),
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
