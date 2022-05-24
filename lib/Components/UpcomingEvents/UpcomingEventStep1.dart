import 'package:etournament_fishing/Components/CustomTextField.dart';
import 'package:etournament_fishing/Components/DirectorDashboard/Controllers/StepperController.dart';
import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../CustomDropdown.dart';

class UpcomingEventStep1 extends StatelessWidget {
  UpcomingEventStep1({Key? key}) : super(key: key);

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
                  text: 'Organization Name ',
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
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: 'Event Name ',
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
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Angler 1 First Name ",
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
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Angler 1 Last Name ",
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
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Angler 1 Mobile Number ",
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
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Angler 1 Email ",
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
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Angler 1 Address_1 ",
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
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    stepperController.setStepperController(2);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor, fixedSize: const Size(120, 40)),
                  child: const Text(
                    "Continue",
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
