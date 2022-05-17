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
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black38, width: 1),
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: DropdownButton(
                      value: "United Kingdom",
                      items: [
                        DropdownMenuItem(
                          child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              // color: Colors.white,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text("Select any option"),
                                ],
                              )),
                          value: "United Kingdom",
                        ),
                        DropdownMenuItem(
                          child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              // color: Colors.white,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text("Lorem"),
                                ],
                              )),
                          value: "Lorem",
                        ),
                        DropdownMenuItem(
                          child: Container(
                              margin: const EdgeInsets.only(left: 15),
                              // color: Colors.white,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border(
                                  right:
                                      BorderSide(width: 1, color: Colors.grey),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text("Lorem ipsum"),
                                ],
                              )),
                          value: "Lorem ipsum",
                        ),
                      ],
                      onChanged: (value) {
                        //get value when changed
                        print("You have selected $value");
                      },
                      icon: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Icon(Icons.arrow_drop_down),
                      ),
                      // iconEnabledColor: Colors.white, //Icon color
                      style: const TextStyle(
                        color: Colors.black54, //Font color
                        fontSize: 12,
                      ),

                      dropdownColor: Colors.white, //dropdown background color
                      underline: Container(), //remove underline
                      isExpanded: true, //make true to make width 100%
                    ),
                  )
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
                    text: "Placement Ranking Type ",
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
                    text: "Weight Conversion ",
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
