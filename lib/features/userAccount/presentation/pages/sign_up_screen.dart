import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ionicons/ionicons.dart';
import 'package:movie_app/core/global/form_error.dart';
import 'package:movie_app/core/global/loading_indicator.dart';
import 'package:movie_app/core/global/password_text_form.dart';
import 'package:movie_app/core/global/text_form_builder.dart';
import 'package:movie_app/core/global/validation.dart';
import 'package:movie_app/core/strings/constants.dart';
import 'package:movie_app/features/userAccount/presentation/bloc/auth_bloc.dart';
import 'package:movie_app/features/userAccount/presentation/pages/phone/phone_auth_screen.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is Authenticated) {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => PhoneAuthScreen()));
            }
            if (state is Error) {
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            if (state is Loading) {
              return LoadingIndicator();
            }
            return Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's Start Sign Up",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        child: TextFormField(
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
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: "Enter Your Name",
                            prefixIcon: Icon(
                              Ionicons.person,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        child: TextFormField(
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
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            // contentPadding: EdgeInsets.symmetric(vertical: 4),
                            border: InputBorder.none,

                            hintStyle: TextStyle(color: Colors.black),
                            hintText: "Enter Your Email",
                            prefixIcon: Icon(
                              Ionicons.mail_outline,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        child: TextFormField(
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
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            // contentPadding: EdgeInsets.symmetric(vertical: 4),
                            border: InputBorder.none,

                            hintStyle: TextStyle(color: Colors.black),
                            hintText: "Enter Your Password",
                            prefixIcon: Icon(
                              Ionicons.lock_closed,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade300),
                        child: TextFormField(
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
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.black),
                            hintText: "Confirm Your Password",
                            prefixIcon: Icon(
                              Ionicons.lock_closed,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FormError(errors: errors),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
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
                          child:
                              Text("Sign Up", style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Already Have An Account?",
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => SignInScreen()));
                            },
                            child: Text(
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
