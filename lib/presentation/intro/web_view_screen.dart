import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  final String url;
  WebViewScreen({Key? key, required this.url}) : super(key: key);

  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
          // _controller.complete(webViewController);
        },
        onProgress: (int progress) {
          print("WebView is loading (progress : $progress%)");
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');

          // Removes header and footer from page
          _webViewController
              .runJavascript("javascript:(function() { "
                  "var head = document.getElementsByTagName('header')[0];"
                  "head.parentNode.removeChild(head);"
                  "var footer = document.getElementsByTagName('footer')[0];"
                  "footer.parentNode.removeChild(footer);"
                  "})()")
              .then((value) => debugPrint('Page finished loading Javascript'))
              .catchError((onError) => debugPrint('$onError'));
        },
      ),
    );
  }
}
