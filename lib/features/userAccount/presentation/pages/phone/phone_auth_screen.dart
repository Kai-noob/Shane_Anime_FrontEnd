import 'package:flutter/material.dart';
import 'package:movie_app/features/userAccount/presentation/pages/phone/widgets/phone_auth_body.dart';

class PhoneAuthScreen extends StatelessWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignUpBody());
  }
}
