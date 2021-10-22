import 'package:flutter/material.dart';
import 'widgets/phone_auth_body.dart';

class PhoneAuthScreen extends StatelessWidget {
  const PhoneAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: PhoneAuthBody());
  }
}
