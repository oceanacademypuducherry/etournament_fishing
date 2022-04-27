import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';

class Titlebar extends StatelessWidget {
  const Titlebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width - 127;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 28),
      width: width,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(color: primaryColor, width: 0.6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 50,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: width / 2 - 2,
            height: MediaQuery.of(context).size.height,
            child: const Center(
              child: Text(
                "DAY 1 - April 21",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            width: width / 2 - 2,
            height: 34,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(color: primaryColor, width: 0.5),
            ),
            child: const Center(
              child: Text(
                "DAY 2 - April 22",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
