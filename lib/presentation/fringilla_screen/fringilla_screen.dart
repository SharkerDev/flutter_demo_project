import 'package:demo_flutter/mock.dart';
import 'package:demo_flutter/shared/theme/export.dart';
import 'package:demo_flutter/shared/ui_kit/export.dart';
import 'package:flutter/material.dart';

class FringillaScreen extends StatelessWidget {
  const FringillaScreen({Key? key}) : super(key: key);

  static const String routeName = '/fringilla';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60.0,
          left: 24.0,
          right: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Fringilla vulputate.',
                style: AppFonts.headline3,
              ),
            ),
            Text(
              'Massa risus.',
              style: AppFonts.bodyRegular,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: AppMock.linksList.length,
              itemBuilder: (context, index) {
                return MenuCard(
                  link: AppMock.linksList[index],
                );
              },
            ),
            AppButton(
              buttonTitle: 'Lorem Ipsum',
              onPressed: () => {},
            ),
          ],
        ),
      ),
    );
  }
}
