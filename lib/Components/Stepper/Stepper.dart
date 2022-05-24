import 'package:flutter/material.dart';
import 'Style/StepperStyle.dart';

class CustomStepper extends StatelessWidget {
  CustomStepper({
    Key? key,
    required this.page,
    required this.step1,
    required this.step2,
    required this.step3,
    required this.step4,
    this.step5,
  }) : super(key: key);

  final int page;
  String step1;
  String step2;
  String step3;
  String step4;
  String? step5;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 53,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 1),
          blurRadius: 10,
          spreadRadius: 0.0,
        ),
      ]),
      child: Row(
        mainAxisAlignment: step5 != null
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                step1,
                style: page == 1
                    ? currentScreen
                    : page <= 1
                        ? unSelected
                        : selected,
              ),
              Container(
                width: 20,
                child: const Divider(
                  height: 10,
                  thickness: 1,
                  color: unSelectedColor,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                step2,
                style: page == 2
                    ? currentScreen
                    : page <= 2
                        ? unSelected
                        : selected,
              ),
              Container(
                width: 20,
                child: Divider(
                  height: 10,
                  thickness: 1,
                  color: unSelectedColor,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                step3,
                style: page == 3
                    ? currentScreen
                    : page <= 3
                        ? unSelected
                        : selected,
              ),
              Container(
                width: 20,
                child: Divider(
                  height: 10,
                  thickness: 1,
                  color: unSelectedColor,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                step4,
                style: page == 4
                    ? currentScreen
                    : page <= 4
                        ? unSelected
                        : selected,
              ),
              Container(
                width: 20,
                child: Divider(
                  height: 10,
                  thickness: 1,
                  color: unSelectedColor,
                ),
              )
            ],
          ),
          if (step5 != null)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  step5!,
                  style: page == 5
                      ? currentScreen
                      : page <= 5
                          ? unSelected
                          : selected,
                ),
                Container(
                  width: 20,
                  child: const Divider(
                    height: 10,
                    thickness: 1,
                    color: unSelectedColor,
                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}
