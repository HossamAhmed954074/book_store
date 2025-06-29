import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> urlLancherBookPrivew(BuildContext context, String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    if (context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not launch $url')));
    }
  }
}
