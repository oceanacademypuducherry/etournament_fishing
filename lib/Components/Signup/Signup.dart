import 'package:flutter/material.dart';
import '../style.dart';
import '../Components/CustomTextField.dart';

class Components.Signup extends StatelessWidget {
  const Components.Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          // color: Colors.grey,
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 25),
                        child: const Text(
                          "Create Account",
                          style: TextStyle(color: primaryColor, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                    hintText: "",
                    labelText: "First Name",
                    onChange: (e) {
                      print(e);
                    },
                  ),
                  CustomTextField(
                    hintText: "",
                    labelText: "Last Name",
                    onChange: (e) {
                      print(e);
                    },
                  ),
                  CustomTextField(
                    hintText: "",
                    labelText: "Email",
                    onChange: (e) {
                      print(e);
                    },
                  ),
                  CustomTextField(
                    hintText: "",
                    labelText: "Mobile Number",
                    onChange: (e) {
                      print(e);
                    },
                  ),
                  CustomTextField(
                    flag: true,
                    hintText: "",
                    labelText: "Password",
                    onChange: (e) {
                      print(e);
                    },
                  ),
                  CustomTextField(
                    flag: true,
                    hintText: "",
                    labelText: "Confirm Password",
                    onChange: (e) {
                      print(e);
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Register"),
                      style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                      ),
                    ),
                  ),
                  // Image.asset('assets/images/or.png'),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Login"),
                      style: ElevatedButton.styleFrom(
                        primary: secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}