import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../helper/global/cutom_error_widget.dart';
import '../../helper/global/loading_indicator.dart';
import 'check_screen_for_auth_screen.dart';
import 'pwlogin_screen.dart';
import 'web_view_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:movie_app/ad_helper.dart';

import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // Banner ads
  late BannerAd _bannerAd;

  // Add _interstitialAd
  InterstitialAd? _interstitialAd;
  bool _isInterstitialAdReady = false;

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;

          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {},
          );

          _isInterstitialAdReady = true;
        },
        onAdFailedToLoad: (err) {
          print('Failed to load an interstitial ad: ${err.message}');
          _isInterstitialAdReady = false;
        },
      ),
    );
  }

  @override
  void initState() {
    //Initialize _bannerAd
    super.initState();
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {});
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    );
    _bannerAd.load();
    _loadInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shane Manga MM"),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection("setting")
                .doc("setting")
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const LoadingIndicator();
              } else if (snapshot.hasError) {
                return const CustomError(
                    errorMessage: "Something Wrong",
                    errorImage: "assets/logo/error.svg");
              } else if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      buildCard(snapshot.data!["button_one"],
                          snapshot.data!["link_one"], () {
                        if (_isInterstitialAdReady) {
                          _interstitialAd?.show();
                        }
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => WebViewScreen(
                                url: snapshot.data!["link_one"])));
                      }),
                      buildCard(snapshot.data!["button_two"],
                          snapshot.data!["link_two"], () {
                        if (_isInterstitialAdReady) {
                          _interstitialAd?.show();
                        }
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => WebViewScreen(
                                url: snapshot.data!["link_two"])));
                      }),
                      buildCard(snapshot.data!["button_three"],
                          snapshot.data!["link_three"], () async {
                        if (_isInterstitialAdReady) {
                          _interstitialAd?.show();
                        }
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        bool? login = prefs.getBool("login");
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => login == null
                                ? PwLoginScreen(
                                    pw: snapshot.data!['password'],
                                    isShow: snapshot.data!['isShow'],
                                  )
                                : const CheckScreen()));

                        //         : CheckScreen()));
                      }),
                    ],
                  ),
                );
              }
              return const SizedBox();
            }),
      ),
      // banner : use bottom navigator
      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.white,
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: _bannerAd.size.width.toDouble(),
            height: _bannerAd.size.height.toDouble(),
            child: AdWidget(ad: _bannerAd),
          ),
        ),
      ),
    );
  }

  Widget buildCard(String label, String link, VoidCallback onTap) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          height: 130.h,
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r)),
            color: const Color(0xFF1B2C3B),
            child: Center(
                child: Text(label,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ))),
          ),
        ),
      );
}
