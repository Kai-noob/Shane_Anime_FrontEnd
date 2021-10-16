import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_up_screen.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sign In", style: TextStyle(fontSize: 30)),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Enter your phone number to  login or create account",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300),
            child: TextField(
              style: TextStyle(color: Colors.black),
              textInputAction: TextInputAction.search,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 4),
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.black),
                hintText: "Enter Your Name",
                prefixIcon: Icon(
                  Ionicons.person,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Or",
            style: TextStyle(fontSize: 15),
          ),
          buildFooter(context),
          buildFooterText()
        ],
      ),
    );
  }

  Padding buildFooterText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Text(
          "By using our mobile app,you agree to our \n Terms of Use and Privacy Policy",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20)),
    );
  }

  Row buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Colors.grey.shade200,
          onPressed: () {
            Navigator.of(context).push(
                (MaterialPageRoute(builder: (context) => SignUpScreen())));
          },
          child: Icon(Icons.email, color: Colors.red, size: 30),
        ),
        FloatingActionButton(
          elevation: 0.0,
          backgroundColor: Colors.grey.shade200,
          onPressed: () {},
          child: Icon(
            Icons.facebook,
            color: Colors.blue,
            size: 30,
          ),
        ),
      ],
    );
  }
}
