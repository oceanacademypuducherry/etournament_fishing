import 'package:etournament_fishing/style.dart';
import 'package:flutter/material.dart';
import '../Bottombar.dart';
import 'ExpandableCard.dart';
import 'CardDesign.dart';
import 'Titlebar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      appBar: AppBar(
        actions: [
          IconButton(icon: const Icon(Icons.person_pin), onPressed: () {}),
        ],
        leading: IconButton(
            icon: const Icon(Icons.menu_open_rounded), onPressed: () {}),
        title: const Text(
          "e-Tournament-Fishing",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "PENDING - 2",
                              style: cardTitleStyle,
                            ),
                            Text(
                              "50lbs",
                              style: cardTitleStyle,
                            ),
                          ],
                        ),
                      ),
                      const CardDesign(),
                      const CardDesign(),
                      const SizedBox(
                        height: 30,
                        child: Center(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 0.2,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "APPROVED - 3",
                              style: cardTitleStyle,
                            ),
                            Text(
                              "75lbs",
                              style: cardTitleStyle,
                            ),
                          ],
                        ),
                      ),
                      const ExpandableCard(),
                      const ExpandableCard(),
                      const ExpandableCard(),
                      const SizedBox(
                        height: 30,
                        child: Center(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 0.2,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "REJECTED - 2",
                              style: cardTitleStyle,
                            ),
                            Text(
                              "50lbs",
                              style: cardTitleStyle,
                            ),
                          ],
                        ),
                      ),
                      const ExpandableCard(),
                      const ExpandableCard(),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Titlebar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
