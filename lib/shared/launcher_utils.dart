
import 'package:active_loan/features/data/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrl(String url) async {
  if (await canLaunch(url)) {
    launch(url, forceWebView: true, enableJavaScript: true);
  }
}


Future<void> launchUrlExternal(String url) async {
  if (await canLaunch(url)) {
    launch(url);
  }
}

void launchFAQsUrl()  => launchUrl(Constants.bpFAQsUrl);

void launchTCUrl() => launchUrl(Constants.termsAndConditionsUrl);