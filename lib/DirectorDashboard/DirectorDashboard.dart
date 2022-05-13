import 'package:etournament_fishing/Components/Appbar.dart';
import 'package:etournament_fishing/Components/CustomTextField.dart';
import 'package:etournament_fishing/DirectorDashboard/DirectorDashboardDescription.dart';
import 'package:etournament_fishing/DirectorDashboard/Stepper.dart';
import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';

class DirectorDashboard extends StatelessWidget {
  const DirectorDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: const Appbar(
          title: 'Director Dashboard',
        ),
        body: Stack(
          children: [
            Column(
              children: const [
                DirectorDashboardDescription(),
                CustomStepper(),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 150),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(
                                text: 'Event End Time ',
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: requiredColor)),
                                ],
                              )),
                              CustomTextField(
                                hintText: "hd",
                                labelText: "",
                                flag: false,
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
                                text: 'Event Time Zone ',
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: requiredColor)),
                                ],
                              )),
                              CustomTextField(
                                hintText: "hd",
                                labelText: "",
                                flag: false,
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
                                text: "Event Geo-Location Time ",
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: requiredColor)),
                                ],
                              )),
                              CustomTextField(
                                hintText: "hd",
                                labelText: "",
                                flag: false,
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
                                text: "Species ",
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: requiredColor)),
                                ],
                              )),
                              CustomTextField(
                                hintText: "hd",
                                labelText: "",
                                flag: false,
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
                                text: "Placement Ranking Type ",
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: requiredColor)),
                                ],
                              )),
                              CustomTextField(
                                hintText: "hd",
                                labelText: "",
                                flag: false,
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
                                text: "Weight Conversion ",
                                style: DefaultTextStyle.of(context).style,
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '*',
                                      style: TextStyle(color: requiredColor)),
                                ],
                              )),
                              CustomTextField(
                                hintText: "hd",
                                labelText: "",
                                flag: false,
                                onChange: null,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: primaryColor),
                                // ignore: prefer_const_constructors
                                child: Text(
                                  "CONTINUE",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
