import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ionicons/ionicons.dart';
import '../../../../controll_screen.dart';
import '../../../../core/global/form_error.dart';
import '../../../../core/global/loading_indicator.dart';
import '../../../../core/strings/constants.dart';
import '../auth/auth_bloc.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? password;
  // ignore: non_constant_identifier_names
  String? conform_password;
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
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is SignUpSuccess) {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const ControlView()));
            }
            if (state is SignUpError) {
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
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 30),
                        ),
                        // child: CircleAvatar(
                        //     radius: 50,
                        //     backgroundColor: Colors.white,
                        //     backgroundImage:
                        //         AssetImage("assets/logo/logo.png")),
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        onSaved: (value) => name = value,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            removeError(error: kNameNullError);
                          } else if (value.length >= 8) {
                            removeError(error: kShortNameError);
                          }
                          password = value;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            addError(error: kNameNullError);
                            return "";
                          } else if (value.length < 8) {
                            addError(error: kShortNameError);
                            return "";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Enter Your Name",
                          prefixIcon: Icon(
                            Ionicons.person_outline,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
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
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Enter Your Password",
                          prefixIcon: Icon(
                            Ionicons.lock_closed_outline,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        obscureText: true,
                        onSaved: (value) => conform_password = value,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            removeError(error: kPassNullError);
                          } else if (value.isNotEmpty &&
                              password == conform_password) {
                            removeError(error: kMatchPassError);
                          }
                          conform_password = value;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            addError(error: kPassNullError);
                            return "";
                          } else if ((password != value)) {
                            addError(error: kMatchPassError);
                            return "";
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Confirm Your Password",
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
                              BlocProvider.of<AuthBloc>(context).add(
                                  CreateAccountWithEmail(
                                      name!, email!, conform_password!));
                            }
                          },
                          child: const Text("Sign Up",
                              style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already Have An Account?",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => const SignInScreen()));
                            },
                            child: const Text(
                              "Login",
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
    );
  }
}
