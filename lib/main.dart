import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:injectable/injectable.dart';

import 'injection.dart';

import 'presentation/app.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  MobileAds.instance.initialize();
  // await Firebase.initializeApp(
  //     options: const FirebaseOptions(
  //         apiKey: "AIzaSyCW3jXh02GHTLw7Bp2PbtccHqGk7u9FuX",
  //         appId: "1:1083688049259:android:22ad37b9ee721aa849af2e",
  //         messagingSenderId: "1083688049259",
  //         projectId: "shanemanga-e59fb"));
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);

  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  configureInjection(Environment.prod);

  runApp(const App());
}
