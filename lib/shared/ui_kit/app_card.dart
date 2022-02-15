import 'package:demo_flutter/shared/theme/export.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final int index;
  const AppCard({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: AppColors.greyWithOpacity,
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          color: AppColors.cardGrey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                index.toString(),
                style: AppFonts.display,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Center(
                child: Image.asset(
                  'assets/images/image2.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text(
                'Lorem Ipsum',
                style: AppFonts.headline3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Text(
                'Dui mattis risus elit purus feugiat quis in sit.',
                style: AppFonts.bodyRegular,
              ),
            ),
            Text(
              'Egestas scelerisque vel.',
              style: AppFonts.captionLabel.copyWith(color: AppColors.linkBlue),
            ),
          ],
        ),
      ),
    );
  }
}
