// ignore: implementation_imports
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';

import 'package:movie_app/application/auth/bloc/auth_bloc.dart';
import 'package:movie_app/application/sign_in/bloc/signin_bloc.dart';
import 'package:movie_app/injection.dart';
import 'package:movie_app/presentation/layout/bottom_navigation.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SigninBloc>(),
        child: BlocConsumer<SigninBloc, SigninState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (e) => e.fold(
                (failure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.black,
                      content: Text(
                        failure.map(
                            cancelledByUser: (_) => 'Cancelled',
                            serverError: (_) => 'Server Error',
                            accontExists: (_) =>
                                "Already registred with other social accounts by same email."),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
                (_) {
                  context
                      .read<AuthBloc>()
                      .add(const AuthEvent.authCheckRequested());
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          BottomNavigationScreen()));
                },
              ),
            );
          },
          builder: (context, state) {
            return SafeArea(
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
                        height: 250.h,
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
                        "Sign In With Your Social Accounts",
                        style: TextStyle(
                            fontSize: 13.sp, fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    InkWell(
                      onTap: () => context.read<SigninBloc>()
                        ..add(const SigninEvent.signInWithGoogle()),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: Colors.red)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Ionicons.logo_google,
                              color: Colors.red,
                              size: 30.w,
                            ),
                            Text(
                              "Sign In With Google",
                              style: TextStyle(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    InkWell(
                      onTap: () => context.read<SigninBloc>()
                        ..add(const SigninEvent.signInWithFacebook()),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.h),
                        height: 60.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(color: Colors.blue)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Ionicons.logo_facebook,
                              color: Colors.blue,
                              size: 35.w,
                            ),
                            Text(
                              "Sign In With Facebook",
                              style: TextStyle(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
