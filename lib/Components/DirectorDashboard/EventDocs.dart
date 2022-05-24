import 'package:etournament_fishing/Components/CustomTextField.dart';
import 'package:etournament_fishing/style.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'Controllers/StepperController.dart';
import 'dart:io';

class EventDocs extends StatefulWidget {
  EventDocs({Key? key}) : super(key: key);

  @override
  State<EventDocs> createState() => _EventDocsState();
}

class _EventDocsState extends State<EventDocs> {
  StepperController stepperController = Get.find<StepperController>();

  String fileType = 'Image';

  FilePickerResult? result;

  PlatformFile? file;

  double uploadIconSize = 25;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  text: 'Event Description Upload ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12.0,
                            )
                          ]),
                      child: GestureDetector(
                        onTap: () {
                          print("---------------");
                          viewFile(file!);
                        },
                        child: Center(
                          child: Container(
                              height: uploadIconSize,
                              width: uploadIconSize,
                              child: file != null
                                  ? Image.file(File(file!.name))
                                  : SvgPicture.asset("assets/upload.svg",
                                      color: secondaryColor,
                                      semanticsLabel: 'Acme Logo')),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            fixedSize: const Size(100, 40)),
                        child: const Text(
                          "Upload",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
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
                  text: 'Event Rules Upload ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                            )
                          ]),
                      child: Center(
                        child: Container(
                          height: uploadIconSize,
                          width: uploadIconSize,
                          child: SvgPicture.asset("assets/upload.svg",
                              color: secondaryColor,
                              semanticsLabel: 'Acme Logo'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            fixedSize: const Size(100, 40)),
                        child: const Text(
                          "Upload",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
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
                  text: 'Event Logo Upload ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: '*', style: TextStyle(color: requiredColor)),
                  ],
                )),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10.0,
                            )
                          ]),
                      child: Center(
                        child: Container(
                          height: uploadIconSize,
                          width: uploadIconSize,
                          child: SvgPicture.asset("assets/upload.svg",
                              color: secondaryColor,
                              semanticsLabel: 'Acme Logo'),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            fixedSize: const Size(100, 40)),
                        child: const Text(
                          "Upload",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Colors.grey.shade300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Director Note",
                        style: TextStyle(color: textColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.grey.withOpacity(0.1),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Permitted for up to 50 boats!"),
                    minLines:
                        8, // any number you need (It works as the rows for the textarea)
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: ElevatedButton(
                  onPressed: () {
                    stepperController.setStepperController(4);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: secondaryColor, fixedSize: const Size(120, 40)),
                  child: const Text(
                    "BACK",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {
                    print('--------------------');
                    print(file);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: primaryColor, fixedSize: const Size(120, 40)),
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void pickFiles(String? filetype) async {
    switch (filetype) {
      case 'Image':
        result = await FilePicker.platform.pickFiles(type: FileType.image);
        if (result == null) return;
        file = result!.files.first;
        setState(() {});
        break;
    }
  }

  void viewFile(PlatformFile file) {
    OpenFile.open(file.path);
  }
}
