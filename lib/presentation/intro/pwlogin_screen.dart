import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'check_screen_for_auth_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PwLoginScreen extends StatelessWidget {
  final String pw;
  final bool isShow;
  PwLoginScreen({Key? key, required this.pw, required this.isShow})
      : super(key: key);

  final pwContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/logo/signup.svg",
                  height: 230.h,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Shane Manga MM",
                style: TextStyle(
                    color: const Color(0xFFFF6366),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: Text(
                  "You need to login to continue to the app",
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: TextField(
                  controller: pwContoller,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r))),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Visibility(
                visible: isShow ? true : false,
                child: Center(
                  child: Text("Hint Password- $pw",
                      style: TextStyle(fontSize: 15.sp)),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () async {
                  if (pw == pwContoller.text) {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.setBool('login', true);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CheckScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.black,
                        content: Text(
                          "Invalid Password",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  height: 60.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFF6366),
                      borderRadius: BorderRadius.circular(12.r)),
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
