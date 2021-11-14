import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:injectable/injectable.dart';

import 'package:movie_app/injection.dart';

import 'presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  configureInjection(Environment.prod);

  runZonedGuarded(
    () => runApp(App()),
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
