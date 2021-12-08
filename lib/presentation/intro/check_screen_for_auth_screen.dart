import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/bloc/auth_bloc.dart';
import '../../helper/global/loading_indicator.dart';
import '../auth/signup/sign_up_screen.dart';
import '../layout/bottom_navigation.dart';

class CheckScreen extends StatelessWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) => const SignUpScreen())),
            authenticated: (_) => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const BottomNavigationScreen())));
      },
      child: const Scaffold(
        body: Center(
          child: LoadingIndicator(),
        ),
      ),
    );
  }
}
