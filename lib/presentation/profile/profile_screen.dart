import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/application/auth/bloc/auth_bloc.dart';
import 'package:movie_app/application/user_actions/user_actions_bloc.dart';
import 'package:movie_app/helper/global/loading_indicator.dart';
import 'package:movie_app/injection.dart';
import 'package:movie_app/presentation/routes/router.gr.dart';

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
            title: const Text("My Account"),
          ),
          body: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeMap(
                orElse: () {},
                unauthenticated: (_) =>
                    context.replaceRoute(const SignUpScreenRoute())),
            child: BlocBuilder<UserActionsBloc, UserActionsState>(
                builder: (context, state) => state.maybeMap(
                    error: (_) => const Text("Error"),
                    orElse: () => const LoadingIndicator(),
                    loaded: (state) => ListView(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 45,
                                      backgroundImage: NetworkImage(
                                          state.profile.user.photoUrl),
                                    ),
                                    Positioned(
                                        right: 0,
                                        top: 30,
                                        left: 50,
                                        bottom: 0,
                                        child: IconButton(
                                          icon: const Icon(Icons.edit),
                                          onPressed: () {},
                                        ))
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  state.profile.user.username,
                                  style: const TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Card(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: const [
                                  ListTile(
                                    leading: Icon(Ionicons.bookmark_outline),
                                    title: Text("Saved"),
                                  ),
                                  Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.white54,
                                  ),
                                  ListTile(
                                      leading: Icon(
                                          Ionicons.chatbox_ellipses_outline),
                                      title: Text("My Comments")),
                                  Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.white54,
                                  ),
                                  ListTile(
                                      leading:
                                          Icon(Ionicons.notifications_outline),
                                      title: Text("Notifications")),
                                ],
                              ),
                            ),
                            Card(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: const [
                                  ListTile(
                                      leading: Icon(
                                          Ionicons.shield_checkmark_outline),
                                      title: Text("Privacy")),
                                  Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.white54,
                                  ),
                                  ListTile(
                                      leading: Icon(Ionicons.apps_outline),
                                      title: Text("Family Apps")),
                                  Divider(
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.white54,
                                  ),
                                  ListTile(
                                      leading:
                                          Icon(Ionicons.share_social_outline),
                                      title: Text("Share")),
                                ],
                              ),
                            ),
                            Card(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListTile(
                                  onTap: () {
                                    BlocProvider.of<AuthBloc>(context)
                                        .add(const AuthEvent.signOut());
                                  },
                                  leading: const Icon(Ionicons.log_out_outline),
                                  title: const Text("Sign Out")),
                            ),
                          ],
                        ))),
          )),
    );
  }
}
