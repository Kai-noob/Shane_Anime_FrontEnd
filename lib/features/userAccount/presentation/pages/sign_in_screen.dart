import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ionicons/ionicons.dart';
import 'package:movie_app/features/home/presentation/view/pages/controll_screen.dart';
import 'package:movie_app/features/userAccount/presentation/auth/auth_bloc.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_up_screen.dart';
import '../../../../core/global/form_error.dart';
import '../../../../core/global/loading_indicator.dart';
import '../../../../core/strings/constants.dart';
import '../../../home/presentation/view/pages/home/home_screen.dart';

import '../../../injector.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => sl<AuthBloc>(),
        child: Scaffold(
          body: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is SignInSuccess) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => ControlView()));
              }
              if (state is SignInError) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.message)));
              }
            },
            builder: (context, state) {
              if (state is Loading) {
                return const LoadingIndicator();
              }
              return Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: const Text(
                            "Sign In",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        TextFormField(
                          onSaved: (value) => email = value,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              removeError(error: kEmailNullError);
                            } else if (emailValidatorRegExp.hasMatch(value)) {
                              removeError(error: kInvalidEmailError);
                            }
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              addError(error: kEmailNullError);
                              return "";
                            } else if (!emailValidatorRegExp.hasMatch(value)) {
                              addError(error: kInvalidEmailError);
                              return "";
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            // contentPadding: EdgeInsets.symmetric(vertical: 4),

                            hintStyle: TextStyle(color: Colors.white),
                            hintText: "Enter Your Email",
                            prefixIcon: Icon(
                              Ionicons.mail_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          onSaved: (value) => password = value,
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              removeError(error: kPassNullError);
                            } else if (value.length >= 8) {
                              removeError(error: kShortPassError);
                            }
                            password = value;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              addError(error: kPassNullError);
                              return "";
                            } else if (value.length < 8) {
                              addError(error: kShortPassError);
                              return "";
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            // contentPadding: EdgeInsets.symmetric(vertical: 4),

                            hintStyle: TextStyle(color: Colors.white),
                            hintText: "Enter Your Password",
                            prefixIcon: Icon(
                              Ionicons.lock_closed_outline,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FormError(errors: errors),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 55,
                          child: MaterialButton(
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Colors.red,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                BlocProvider.of<AuthBloc>(context)
                                    .add(SignInWithEmail(email!, password!));
                              }
                            },
                            child: const Text("Sign In",
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              style: TextStyle(color: Colors.red, fontSize: 15),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            SignUpScreen()));
                              },
                              child: const Text(
                                "SignUp",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
