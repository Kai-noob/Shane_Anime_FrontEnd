import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/userAccount/presentation/controllers/auth_controller.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AuthController _authController = Get.find<AuthController>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Let's Start Sign Up",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300),
                child: TextField(
                  controller: nameController,
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
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300),
                child: TextField(
                  controller: emailController,
                  style: TextStyle(color: Colors.black),
                  textInputAction: TextInputAction.search,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "Enter Your Email",
                    prefixIcon: Icon(
                      Ionicons.mail_outline,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300),
                child: TextField(
                  controller: passwordController,
                  style: TextStyle(color: Colors.black),
                  textInputAction: TextInputAction.search,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 4),
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: "Enter Your Password",
                    prefixIcon: Icon(
                      Ionicons.lock_closed,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.grey.shade300),
              //   child: TextField(
              //     style: TextStyle(color: Colors.black),
              //     textInputAction: TextInputAction.search,
              //     cursorColor: Colors.black,
              //     decoration: const InputDecoration(
              //       contentPadding: EdgeInsets.symmetric(vertical: 4),
              //       border: InputBorder.none,
              //       hintStyle: TextStyle(color: Colors.black),
              //       hintText: "Confirm Your Password",
              //       prefixIcon: Icon(
              //         Ionicons.lock_closed,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 55,
                child: MaterialButton(
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.red,
                  onPressed: () {
                    _authController.signUp(nameController.text,
                        emailController.text, passwordController.text);
                  },
                  child: Text("Sign Up", style: TextStyle(fontSize: 20)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
