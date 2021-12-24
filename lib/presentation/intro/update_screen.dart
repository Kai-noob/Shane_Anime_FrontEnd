import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/helper/global/cutom_error_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../application/auth/bloc/auth_bloc.dart';
import '../../helper/global/loading_indicator.dart';
import '../auth/signup/sign_up_screen.dart';
import '../layout/bottom_navigation.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
      future:
          FirebaseFirestore.instance.collection('update').doc('update').get(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError) {
          return const CustomError(
              errorMessage: "Something Wrong",
              errorImage: "assets/logo/error.svg");
        } else if (snapshot.hasData) {
          if (snapshot.data['showUpdate'] == true) {
            return Scaffold(
              appBar: AppBar(
                elevation: 0.0,
                title: Text("Shane Manga MM"),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15.h),
                    SvgPicture.asset(
                      'assets/logo/update.svg',
                      height: 280,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Update Avaliable",
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.red)),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        snapshot.data['dec'],
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(10),
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () async {
                            final url = snapshot.data['link'];
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text("Unable to launch url")));
                            }
                          },
                          icon: Icon(
                            Icons.upload,
                            color: Colors.white,
                          ),
                          label: Text("Update App",
                              style: TextStyle(color: Colors.white))),
                    )
                  ],
                ),
              ),
            );
          } else {
            return BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                    orElse: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SignUpScreen())),
                    authenticated: (_) => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const BottomNavigationScreen())));
              },
              child: Scaffold(
                body: Center(
                  child: LoadingIndicator(),
                ),
              ),
            );
          }
        } else {
          return Container();
        }
        return Container();
      },
    );
  }
}
