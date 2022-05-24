import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';
import 'package:etournament_fishing/Components/Appbar.dart';

class UpcomingDetails extends StatelessWidget {
  UpcomingDetails({Key? key}) : super(key: key);

  Color boxColor = const Color(0xFFF1F1F1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(title: "Upcoming Details"),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      // height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: boxColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                          )
                        ],
                        border: Border.all(color: secondaryColor, width: 0.1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                const Icon(Icons.add_chart),
                                Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "Event Details",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 130,
                                  child: const Text(
                                    "Event Name",
                                    style: TextStyle(
                                        fontSize: 14, color: textColor),
                                  ),
                                ),
                                Container(
                                  // color: Colors.black12,
                                  width: 150,
                                  child: Text(
                                    "Lake Pueblo - Pueblo CO (Walleye)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: textColor.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  width: 150,
                                  child: const Text(
                                    "Event Organization Name",
                                    style: TextStyle(
                                        fontSize: 14, color: textColor),
                                  )),
                              Container(
                                  width: 130,
                                  child: Text(
                                    "Lorem ipsum",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: textColor.withOpacity(0.8),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      // height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: boxColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                          )
                        ],
                        border: Border.all(color: secondaryColor, width: 0.1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                const Icon(Icons.add_chart),
                                Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "Event Scheduled Date",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 130,
                                  child: const Text(
                                    "Event Start Date",
                                    style: TextStyle(
                                        fontSize: 14, color: textColor),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 130,
                                  child: Text(
                                    "April 30",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: textColor.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  width: 150,
                                  child: Text(
                                    "Event End Date",
                                    style: TextStyle(
                                        fontSize: 15, color: textColor),
                                  )),
                              Container(
                                  width: 130,
                                  child: Text(
                                    "May 1, 2022",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: textColor.withOpacity(0.8),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      // height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: boxColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                          )
                        ],
                        border: Border.all(color: secondaryColor, width: 0.1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                const Icon(Icons.add_chart),
                                Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "Event Scheduled Time",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 130,
                                  child: const Text(
                                    "Event Start Time",
                                    style: TextStyle(
                                        fontSize: 14, color: textColor),
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  child: Text(
                                    "07:00 AM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: textColor.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,
                                  width: 150,
                                  child: const Text(
                                    "Event End Time",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: textColor,
                                    ),
                                  )),
                              Container(
                                  width: 130,
                                  child: Text(
                                    "03:30 PM",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: textColor.withOpacity(0.8),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      // height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: boxColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                          )
                        ],
                        border: Border.all(color: secondaryColor, width: 0.1),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                const Icon(Icons.add_chart),
                                Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "Address",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: 130,
                                  child: const Text(
                                    "Street",
                                    style: TextStyle(
                                        fontSize: 14, color: textColor),
                                  ),
                                ),
                                Container(
                                  width: 130,
                                  child: Text(
                                    "680E 47th street",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: textColor.withOpacity(0.8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    width: 150,
                                    child: Text(
                                      "State",
                                      style: TextStyle(
                                          fontSize: 14, color: textColor),
                                    )),
                                Container(
                                    width: 130,
                                    child: Text(
                                      "California(CA)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: textColor.withOpacity(0.8),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    width: 150,
                                    child: Text(
                                      "Country",
                                      style: TextStyle(
                                          fontSize: 14, color: textColor),
                                    )),
                                Container(
                                    width: 130,
                                    child: Text(
                                      "USA",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: textColor.withOpacity(0.8),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    width: 150,
                                    child: const Text(
                                      "Zip code",
                                      style: TextStyle(
                                          fontSize: 14, color: textColor),
                                    )),
                                Container(
                                    width: 130,
                                    child: Text(
                                      "90001",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: textColor.withOpacity(0.8),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Register Events'),
                        style: ElevatedButton.styleFrom(primary: primaryColor),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
