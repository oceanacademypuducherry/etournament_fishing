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
  const CustomStepper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 53,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Co-director",
                  style: currentScreen,
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
                const Text(
                  "Event details",
                  style: unSelected,
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
                  style: unSelected,
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
                  style: unSelected,
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
                  style: unSelected,
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
        ],
      ),
    );
  }
}
