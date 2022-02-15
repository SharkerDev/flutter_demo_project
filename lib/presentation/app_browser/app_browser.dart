import 'package:demo_flutter/shared/theme/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_browser/web_browser.dart';

class AppBrowser extends StatelessWidget {
  const AppBrowser({
    required this.url,
    Key? key,
  }) : super(key: key);

  static const String routeName = '/browser';
  final String url;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundBlue,
          leading: IconButton(
            icon: SvgPicture.asset(AppIcons.close),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: WebBrowser(
          initialUrl: url,
          javascriptEnabled: true,
        ),
      ),
    );
  }
}
