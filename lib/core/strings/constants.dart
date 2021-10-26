import 'package:flutter/material.dart';

const String userNotFoundFirebaseException = 'user-not-found';
const String userPasswordFirebaseException = 'wrong-password';
const String invalidEmailFirebaseException = 'invalid-email';
const String userDisabledFirebaseException = 'user-disabled';
const String tooManyRequestFirebaseException = 'too-many-requests';
const String offlineFirebaseException = 'network-request-failed';
const String objectNotFoundFirebaseException = 'object-not-found';
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kNameNullError = "Please Enter your name";
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kShortNameError = "UserName is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
const kTextColor = Color(0xFF757575);

const String serverMessage = "Something went wrong";

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(1),
    borderSide: const BorderSide(color: kTextColor),
  );
}
