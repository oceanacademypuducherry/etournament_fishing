import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 17),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                maximumSize: const Size(200.0, 45.0),
                primary: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                  "Send a Fish",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.grey.withOpacity(0.2),
            width: double.infinity,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const Center(
                      child: Text(
                    "Past Event",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(
                        color: primaryColor,
                        width: 0.2,
                      ),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    "Upcoming Event",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ),
                Stack(
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
                      child: const Center(
                        child: Text(
                          "Event Day",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width / 3,
                      height: 50,
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
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
