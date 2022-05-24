import 'package:etournament_fishing/Components/CustomDropdown.dart';
import 'package:etournament_fishing/Components/CustomTextField.dart';
import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controllers/StepperController.dart';

class Codirector extends StatelessWidget {
  Codirector({Key? key}) : super(key: key);

  StepperController stepperController = Get.find<StepperController>();
  final eventTimeZone = FocusNode();

  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
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
                    text: 'Event End Time ',
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: '*', style: TextStyle(color: requiredColor)),
                    ],
                  )),
                  CustomTextField(
                    focusNode: eventTimeZone,
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
                    text: 'Event Time Zone ',
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: '*', style: TextStyle(color: requiredColor)),
                    ],
                  )),
                  CustomTextField(
                    focusNode: eventTimeZone,
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
                    text: "Event Geo-Location Time ",
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: '*', style: TextStyle(color: requiredColor)),
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
                    text: "Species ",
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: '*', style: TextStyle(color: requiredColor)),
                    ],
                  )),
                  CustomDropdown(values: ["android", "IOS", "Desktop", "Web"]),
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
                    text: "Placement Ranking Type ",
                    style: DefaultTextStyle.of(context).style,
                    children: const <TextSpan>[
                      TextSpan(
                          text: '*', style: TextStyle(color: requiredColor)),
                    ],
                  )),
                  CustomDropdown(values: ["android", "IOS", "Desktop", "Web"]),
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
                      TextSpan(
                          text: '*', style: TextStyle(color: requiredColor)),
                    ],
                  )),
                  CustomDropdown(
                      values: const ["android", "IOS", "Desktop", "Web"]),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      stepperController.setStepperController(2);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor, fixedSize: Size(120, 40)),
                    child: const Text(
                      "CONTINUE",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
