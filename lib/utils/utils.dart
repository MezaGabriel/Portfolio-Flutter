import 'package:flutter/material.dart';
import 'package:qrscanner/models/scan_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

launchUrl(BuildContext context, ScanModel scan) async {
  // Website
  final url = scan.value;
  if (scan.type == 'http') {
    if (await canLaunchUrlString(url!)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  } else {
    Navigator.pushNamed(context, 'map', arguments: scan);
  }
}
