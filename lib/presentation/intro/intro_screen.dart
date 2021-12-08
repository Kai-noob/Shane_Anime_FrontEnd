import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../helper/global/cutom_error_widget.dart';
import '../../helper/global/loading_indicator.dart';
import 'check_screen_for_auth_screen.dart';
import 'pwlogin_screen.dart';
import 'web_view_screen.dart';

import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shane Manga MM"),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection("setting")
                .doc("setting")
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingIndicator();
              } else if (snapshot.hasError) {
                return const CustomError(
                    errorMessage: "Something Wrong",
                    errorImage: "assets/logo/error.svg");
              } else if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      buildCard(
                          snapshot.data!["button_one"],
                          snapshot.data!["link_one"],
                          () => Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => WebViewScreen(
                                  url: snapshot.data!["link_one"])))),
                      buildCard(
                          snapshot.data!["button_two"],
                          snapshot.data!["link_two"],
                          () => Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => WebViewScreen(
                                  url: snapshot.data!["link_two"])))),
                      buildCard(snapshot.data!["button_three"],
                          snapshot.data!["link_three"], () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        bool? login = prefs.getBool("login");
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => login == null
                                ? PwLoginScreen(
                                    pw: snapshot.data!['password'],
                                    isShow: snapshot.data!['isShow'],
                                  )
                                : const CheckScreen()));

                        //         : CheckScreen()));
                      }),
                    ],
                  ),
                );
              }
              return const SizedBox();
            }),
      ),
    );
  }

  Widget buildCard(String label, String link, VoidCallback onTap) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          height: 130.h,
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r)),
            color: const Color(0xFF1B2C3B),
            child: Center(
                child: Text(label,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ))),
          ),
        ),
      );
}
