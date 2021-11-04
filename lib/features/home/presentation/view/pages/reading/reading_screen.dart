import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/local/shared_pref_helper.dart';
import '../../../../data/models/recent_episode_model.dart';
import 'package:provider/provider.dart';
import '../../../../../injector.dart';
import '../../../../domain/entities/episodes.dart';
import '../../../bloc/details/details_bloc.dart';

import 'widgets/reading_view.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:movie_app/ad_helper.dart';

class ReadingScreen extends StatefulWidget {
  final Episode episodes;

  const ReadingScreen({Key? key, required this.episodes}) : super(key: key);

  @override
  State<ReadingScreen> createState() => _ReadingScreenState();
}

class _ReadingScreenState extends State<ReadingScreen> {
  // Banner ads
  late BannerAd _bannerAd;
  bool _isBannerAdReady = false;

  // Add _interstitialAd
  InterstitialAd? _interstitialAd;
  bool _isInterstitialAdReady = false;

  // Implement _loadInterstitialAd()
  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          this._interstitialAd = ad;

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
    _bannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBannerAdReady = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('Failed to load a banner ad: ${err.message}');
          _isBannerAdReady = false;
          ad.dispose();
        },
      ),
    );

    _bannerAd.load();

    _loadInterstitialAd();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Provider.of<SharedPrefHelper>(context, listen: false).addToLocal(
            EpisodeModel(
                comicId: widget.episodes.comicId,
                episodeName: widget.episodes.episodeName,
                title: widget.episodes.title,
                coverPhoto: widget.episodes.coverPhoto,
                episodeNumber: widget.episodes.episodeNumber));
        //full screen ads : on back click
        if (_isInterstitialAdReady) {
          _interstitialAd?.show();
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
              "${widget.episodes.episodeName}${widget.episodes.episodeNumber.toString()}"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Provider.of<SharedPrefHelper>(context, listen: false).addToLocal(
                  EpisodeModel(
                      comicId: widget.episodes.comicId,
                      episodeName: widget.episodes.episodeName,
                      title: widget.episodes.title,
                      coverPhoto: widget.episodes.coverPhoto,
                      episodeNumber: widget.episodes.episodeNumber));
              Navigator.of(context).pop();
              //full screen ads : on back click
              if (_isInterstitialAdReady) {
                _interstitialAd?.show();
              }
            },
          ),
        ),
        body: BlocProvider(
          create: (context) => DetailsBloc(sl(), sl(), sl(), sl())
            ..add(CheckPdfOrImagesEvent(widget.episodes.comicId,
                widget.episodes.episodeName, widget.episodes.episodeNumber)),
          child: ReadingView(
            episodes: widget.episodes,
          ),
        ),
        // banner : use bottom navigator
        bottomNavigationBar: Container(
          height: 50.0,
          color: Colors.white,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: _bannerAd.size.width.toDouble(),
              height: _bannerAd.size.height.toDouble(),
              child: AdWidget(ad: _bannerAd),
            ),
          ),
        ),
      ),
    );
  }
}
