// ignore: implementation_imports
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movie_app/application/auth/bloc/auth_bloc.dart';

import 'package:movie_app/application/sign_in/bloc/signin_bloc.dart';

import 'package:movie_app/presentation/auth/signup/sign_up_screen.dart';
import 'package:movie_app/presentation/routes/router.gr.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign In",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
        ),
        elevation: 0.0,
      ),
      body: BlocConsumer<SigninBloc, SigninState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold((failure) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(failure.map(
                            cancelledByUser: (_) => 'Cancelled',
                            serverError: (_) => 'Server Error',
                            emailAlreadyInUse: (_) => 'Email Already in Use',
                            invalidEmailAndPasswordCombination: (_) =>
                                'Invalid Email And Password Combination'))));
                  }, (_) {
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                    context.replaceRoute(const BottomNavigationScreenRoute());
                  }));
        },
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.15),
                        ),
                        child: const Icon(
                          Ionicons.logo_google,
                          color: Colors.red,
                          size: 35,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        width: 200,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.15),
                        ),
                        child: const Icon(
                          Ionicons.logo_facebook,
                          color: Colors.blue,
                          size: 35,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Email",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<SigninBloc>()
                      .add(SigninEvent.emailChanged(value)),
                  validator: (_) => context
                      .read<SigninBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              invalidEmail: (_) => "Invalid Email",
                              orElse: () => null),
                          (_) => null),
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Enter your Email"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<SigninBloc>()
                      .add(SigninEvent.passwordChanged(value)),
                  validator: (_) => context
                      .read<SigninBloc>()
                      .state
                      .password
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              shortPassword: (_) => "Short Password",
                              orElse: () => null),
                          (_) => null),
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                      hintText: "Enter your Password"),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<SigninBloc>()
                        .add(const SigninEvent.signInWithEmailAndPassword());
                  },
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        child: const Text("Sign Up"))
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
