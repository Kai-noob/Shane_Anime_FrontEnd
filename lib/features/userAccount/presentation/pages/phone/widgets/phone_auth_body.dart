import 'package:flutter/material.dart';
import 'package:movie_app/features/userAccount/presentation/pages/phone/widgets/otp_form.dart';

import 'otp_form.dart';

class PhoneAuthBody extends StatelessWidget {
  const PhoneAuthBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Text(
              "OTP Verification",
            ),
            Text("We sent your code to +1 898 860 ***"),
            // buildTimer(),
            OtpForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            GestureDetector(
              onTap: () {
                // OTP code resend
              },
              child: Text(
                "Resend OTP Code",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
