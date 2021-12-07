// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

import 'package:movie_app/application/auth/bloc/auth_bloc.dart';
import 'package:movie_app/application/user_actions/user_actions_bloc.dart';
import 'package:movie_app/helper/global/cutom_error_widget.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/injection.dart';
import 'package:movie_app/presentation/auth/signup/sign_up_screen.dart';
import 'package:movie_app/presentation/intro/web_view_screen.dart';
import 'package:movie_app/presentation/profile/components/change_image_screen.dart';
import 'package:movie_app/presentation/profile/components/commentscreen.dart';
import 'package:share/share.dart';

import 'components/change_name_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<UserActionsBloc>()..add(const UserActionsEvent.fetchProfile()),
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: const Text("More"),
          ),
          body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeMap(
                orElse: () {},
                unauthenticated: (_) => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const SignUpScreen()))),
            child: BlocBuilder<UserActionsBloc, UserActionsState>(
                buildWhen: (previous, current) => previous != current,
                builder: (context, state) => state.maybeMap(
                    error: (error) => CustomError(
                        errorMessage: error.failure.maybeMap(
                            unableToFetch: (_) => "Unexcepted Error occured.",
                            notFound: (_) => "No Saved Mangas",
                            orElse: () => "Unknown Error"),
                        errorImage: "assets/logo/error.svg"),
                    orElse: () => const LoadingIndicator(),
                    profileLoaded: (state) => ListView(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 45.r,
                                  backgroundImage:
                                      NetworkImage(state.profile.photoUrl),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  child: Text(
                                    state.profile.username,
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Card(
                              color: const Color(0xff1B2C3B),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 10.w),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Column(
                                children: [
                                  ListTile(
                                    onTap: () => Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                BlocProvider(
                                                  create: (context) =>
                                                      getIt<UserActionsBloc>(),
                                                  child:
                                                      const ChangeImageScreen(),
                                                ))),
                                    leading: const Icon(Icons.emoji_emotions),
                                    title: const Text("Change Avatar"),
                                  ),
                                  const Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.white54,
                                  ),
                                  ListTile(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  BlocProvider(
                                                    create: (context) => getIt<
                                                        UserActionsBloc>(),
                                                    child:
                                                        const ChangeNameScreen(),
                                                  )));
                                    },
                                    leading: const Icon(Icons.edit),
                                    title: const Text("Change Your Name"),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              color: const Color(0xff1B2C3B),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 10.w),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: Column(
                                children: [
                                  ListTile(
                                      onTap: () => Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const CommentHistory(
                                                    isComment: false,
                                                  ))),
                                      leading:
                                          const Icon(Ionicons.bookmark_outline),
                                      title: const Text("Saved")),
                                  const Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.white54,
                                  ),
                                  ListTile(
                                      onTap: () => Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const CommentHistory(
                                                    isComment: true,
                                                  ))),
                                      leading: const Icon(
                                          Ionicons.chatbox_ellipses_outline),
                                      title: const Text("Comments History")),
                                  const Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.white54,
                                  ),
                                  ListTile(
                                      onTap: () => Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) => const WebViewScreen(
                                                  url:
                                                      'https://shanemmtranslations.blogspot.com/'))),
                                      leading:
                                          const Icon(Ionicons.shield_outline),
                                      title: const Text("Privacy")),
                                  const Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.white54,
                                  ),
                                  ListTile(
                                      onTap: () => _onShare(context),
                                      leading: const Icon(Icons.share_outlined),
                                      title: const Text("Share")),
                                ],
                              ),
                            ),
                            Card(
                              color: const Color(0xff1B2C3B),
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 10.w),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListTile(
                                  onTap: () {
                                    BlocProvider.of<AuthBloc>(context)
                                        .add(const AuthEvent.signOut());
                                  },
                                  leading: const Icon(Icons.logout_outlined),
                                  title: const Text("Sign Out")),
                            ),
                          ],
                        ))),
          )),
    );
  }

  _onShare(BuildContext context) async => await Share.share(
      'https://play.google.com/store/apps/details?id=com.shaneMangaMM.reader');
}
