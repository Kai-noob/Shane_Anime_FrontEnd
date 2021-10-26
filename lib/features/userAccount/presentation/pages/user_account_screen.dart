import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import '../auth/auth_bloc.dart';
import 'sign_in_screen.dart';
import '../user/user_bloc.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserProfileSuccess) {
              return ListView(children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3,
                      fit: BoxFit.cover,
                      image: const AssetImage('assets/images/manga.jpg'),
                    ),
                    Positioned(
                      left: 20,
                      bottom: -60,
                      height: 120,
                      width: 120,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor:
                            const Color(0xfffa411b).withOpacity(0.6),
                        backgroundImage:
                            const AssetImage('assets/images/manga.jpg'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                ListTile(
                  leading: const Icon(Ionicons.person),
                  title: Text(state.user.userName),
                ),
                ListTile(
                  leading: const Icon(Ionicons.mail_open),
                  title: Text(state.user.email),
                ),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is SignOutSuccess) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const SignInScreen()));
                    }
                  },
                  builder: (context, state) {
                    return ListTile(
                      onTap: () {
                        BlocProvider.of<AuthBloc>(context).add(SignOut());
                      },
                      leading: const Icon(Ionicons.log_out_outline),
                      title: const Text("Log Out"),
                    );
                  },
                )
              ]);
            }
            return Container();
          },
        ),
      ),
    );
  }
}
