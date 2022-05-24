import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  CustomDropdown({
    Key? key,
    required this.values,
  }) : super(key: key);

  List values;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 10),
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black38, width: 1),
        borderRadius: BorderRadius.circular(2),
      ),
      child: DropdownButton<dynamic>(
        hint: const Text("Select any option"),
        // value: "United Kingdom",
        items: [
          for (var i in values)
            DropdownMenuItem(
              child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("$i"),
                    ],
                  )),
              value: i,
            ),
        ],
        onChanged: (value) {
          //get value when changed
          print("You have selected $value");
        },
        icon: Container(
          width: 60,
          height: 50,
          decoration: const BoxDecoration(
              // color: Colors.blue,
              border: Border(left: BorderSide(color: Colors.grey, width: 1))),
          child: const Icon(Icons.arrow_drop_down),
        ),
        // iconEnabledColor: Colors.white, //Icon color
        style: const TextStyle(
          color: Colors.black54, //Font color
          fontSize: 12,
        ),

        dropdownColor: Colors.white, //dropdown background color
        underline: Container(), //remove underline
        isExpanded: true, //make true to make width 100%
      ),
    );
  }
}
