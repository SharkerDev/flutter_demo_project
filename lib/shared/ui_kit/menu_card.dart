import 'package:demo_flutter/data/models/browser_link/browser_link.dart';
import 'package:demo_flutter/presentation/app_browser/app_browser.dart';
import 'package:demo_flutter/shared/theme/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    required this.link,
    Key? key,
  }) : super(key: key);

  final BrowserLink link;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        link.nativeBrowser
            ? Navigator.pushNamed(
                context,
                AppBrowser.routeName,
                arguments: link.url,
              )
            : await launch(link.url);
      },
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(vertical: 8),
        color: const Color.fromRGBO(126, 126, 126, 0.15),
        child: Row(
          children: [
            Flexible(
              child: Text(
                link.title,
                style: AppFonts.headline4,
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            SvgPicture.asset(AppIcons.arrowRight),
          ],
        ),
      ),
    );
  }
}
