import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';

class DirectorDashboardBottombar extends StatelessWidget {
  DirectorDashboardBottombar({Key? key}) : super(key: key);

  double height = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 50,
            decoration: const BoxDecoration(
              color: primaryColor,
              border: Border(
                left: BorderSide(
                  color: primaryColor,
                  width: 0.2,
                ),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Tournament Setup",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                right: BorderSide(
                  color: primaryColor,
                  width: 0.2,
                ),
              ),
            ),
            child: const Center(
                child: Text(
              "Scheduled  Events",
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w500,
                fontSize: 10,
              ),
            )),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: height,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Center(
                child: Text(
              "Tournament Day",
              style: TextStyle(
                color: primaryColor,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
