import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/userAccount/presentation/auth/auth_bloc.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_in_screen.dart';
import 'package:movie_app/features/userAccount/presentation/user/user_bloc.dart';

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
                  overflow: Overflow.visible,
                  children: [
                    Image(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/manga.jpg'),
                    ),
                    Positioned(
                      left: 20,
                      bottom: -60,
                      height: 120,
                      width: 120,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Color(0xfffa411b).withOpacity(0.6),
                        backgroundImage: AssetImage('assets/images/manga.jpg'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                ListTile(
                  leading: Icon(Ionicons.person),
                  title: Text(state.user.userName),
                ),
                ListTile(
                  leading: Icon(Ionicons.mail_open),
                  title: Text(state.user.email),
                ),
                BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is SignOutSuccess) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => SignInScreen()));
                    }
                  },
                  builder: (context, state) {
                    return ListTile(
                      onTap: () {
                        BlocProvider.of<AuthBloc>(context)..add(SignOut());
                      },
                      leading: Icon(Ionicons.log_out_outline),
                      title: Text("Log Out"),
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
