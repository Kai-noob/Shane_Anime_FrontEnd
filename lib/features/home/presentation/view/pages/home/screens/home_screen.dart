import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:movie_app/features/home/presentation/view/pages/home/widgets/home_body.dart';
import 'package:new_version/new_version.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _checkVersion();
  }

  _checkVersion() async {
    try {
      final newVersion = NewVersion(androidId: "com.shanemangareader");
      final status = await newVersion.getVersionStatus();

      newVersion.showUpdateDialog(
          allowDismissal: true,
          context: context,
          versionStatus: status!,
          dialogTitle: "Shane Manga MM Version 2",
          dialogText:
              "New Features - Comment,Login,Notification,Save Chapter,Group Chat,You can also change animation Profile",
          dismissAction: () {
            SystemNavigator.pop();
          },
          updateButtonText: "Update Now");
    } catch (e) {
      debugPrint("error=====>${e.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeBody());
  }
}
