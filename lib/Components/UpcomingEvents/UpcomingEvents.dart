import 'package:flutter/material.dart';
import '../../style.dart';
import '../Appbar.dart';
import '../CustomTextField.dart';

const double horizontalSpace = 20;

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(
        title: "Upcoming Event",
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 50,
              left: horizontalSpace,
              right: horizontalSpace,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: 'Search ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                CustomTextField(
                    hintText: "Search with name, zip, state",
                    labelText: "",
                    onChange: null),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                for (var i = 0; i < 10; i++) const UpcomingEventsCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UpcomingEventsCard extends StatelessWidget {
  const UpcomingEventsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: horizontalSpace),
      // height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 15),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/fish.png",
                    // fit: BoxFit.cover,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 160,
                      child: const Text(
                        "Lake Pueblo - Pueblo CO",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      width: 160,
                      child: const Text(
                        "Format: Team",
                        style: TextStyle(
                          fontSize: 12,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      width: 160,
                      child: const Text(
                        "07:00 AM - 03:30 PM",
                        style: TextStyle(
                          fontSize: 12,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      width: 160,
                      child: const Text(
                        "April 30 - May 1, 2022",
                        style: TextStyle(
                          fontSize: 12,
                          color: secondaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.chevron_right,
                color: secondaryColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
