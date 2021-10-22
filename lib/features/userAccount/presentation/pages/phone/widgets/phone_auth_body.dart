import 'package:flutter/material.dart';
import 'otp_form.dart';

import 'otp_form.dart';

class PhoneAuthBody extends StatelessWidget {
  const PhoneAuthBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Text(
            "OTP Verification",
          ),
          const Text("We sent your code to +1 898 860 ***"),
          // buildTimer(),
          const OtpForm(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          GestureDetector(
            onTap: () {
              // OTP code resend
            },
            child: const Text(
              "Resend OTP Code",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
