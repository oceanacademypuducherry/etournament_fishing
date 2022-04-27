import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      width: width,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 30,
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        // border: Border.all(color: const Color(0xff3A9B49), width: 0.5),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "14 Inch - 25lbs",
                  style: cardHeader1Style,
                ),
                Text(
                  "04/14/22 - 07:23:10 CST",
                  style: cardHeader2Style,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
