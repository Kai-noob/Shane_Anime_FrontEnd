import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:movie_app/core/services/theme_service.dart';
import 'package:movie_app/core/strings/strings.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_in_screen.dart';
import 'package:movie_app/features/userAccount/presentation/pages/sign_up_screen.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Account"),
            centerTitle: true,
            elevation: 0.0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.person_circle_outline,
                    size: 28,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
