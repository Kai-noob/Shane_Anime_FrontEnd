import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:movie_app/core/services/theme_service.dart';
import 'package:movie_app/core/strings/strings.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_in_screen.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_up_screen.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Account"),
            centerTitle: true,
            elevation: 0.0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.person_circle_outline,
                    size: 28,
                  ))
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              left: 10,
            ),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Ionicons.person,
                      size: 32,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Guest",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            sliver: SliverToBoxAdapter(
                child: MaterialButton(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Get.isDarkMode ? Colors.white : Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                showMaterialModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 4,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Hi !",
                            style: TextStyle(fontSize: 19),
                          ),
                          Text("Sign In to unlock another features"),
                          Container(
                            margin:
                                EdgeInsets.only(top: 40, left: 20, right: 20),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)),
                            child: ListTile(
                              leading: Icon(
                                Ionicons.logo_google,
                                color: Colors.red,
                              ),
                              title: Text("Continue with Google"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 20, left: 20, right: 20, bottom: 40),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)),
                            child: ListTile(
                              onTap: () {
                                Get.to(() => SignInScreen());
                              },
                              leading: Icon(
                                Ionicons.mail_outline,
                                color: Colors.red,
                              ),
                              title: Text("Continue with Email"),
                            ),
                          )
                        ],
                      );
                    });
              },
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 20),
              ),
            )),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            sliver: SliverToBoxAdapter(
                child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xfffa411b),
              onPressed: () {
                showMaterialModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 4,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Hi !",
                            style: TextStyle(fontSize: 19),
                          ),
                          Text("Sign up to unlock another features"),
                          Container(
                            margin:
                                EdgeInsets.only(top: 40, left: 20, right: 20),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)),
                            child: ListTile(
                              leading: Icon(
                                Ionicons.logo_google,
                                color: Colors.red,
                              ),
                              title: Text("Continue with Google"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: 20, left: 20, right: 20, bottom: 40),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15)),
                            child: ListTile(
                              onTap: () {
                                Get.to(() => SignUpScreen());
                              },
                              leading: Icon(
                                Ionicons.mail_outline,
                                color: Colors.red,
                              ),
                              title: Text("Continue with Email"),
                            ),
                          )
                        ],
                      );
                    });
              },
              textColor: Colors.white,
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 20),
              ),
            )),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: Text("Settings", style: TextStyle(fontSize: 22)),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                      tileColor: context.theme.backgroundColor,
                      onTap: () => ThemeService().swithTheme(),
                      leading:
                          Icon(Get.isDarkMode ? Ionicons.sunny : Ionicons.moon),
                      title: Text(Get.isDarkMode ? "Dark Mode" : "Light Mode"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
