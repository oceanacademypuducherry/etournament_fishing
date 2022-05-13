import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';

const unSelectedColor = Color(0xffA3A3A3);

const unSelected = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w600,
  color: unSelectedColor,
);

const selected = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w600,
  color: primaryColor,
);

const currentScreen = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w600,
  color: textColor,
);

class CustomStepper extends StatelessWidget {
  const CustomStepper({Key? key, required this.page}) : super(key: key);

  final int page;

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Co-director",
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
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Event details",
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
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Address",
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
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Address2",
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
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Event docs",
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
            ),
          ),
        ],
      ),
    );
  }
}
