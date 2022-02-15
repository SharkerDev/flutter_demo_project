import 'package:demo_flutter/shared/theme/export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'app_card.dart';

class AppCarousel extends StatelessWidget {
  final PageController _controller = PageController(
    initialPage: 0,
    viewportFraction: 0.9,
  );

  AppCarousel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Suspendisse vel.',
                style: AppFonts.headline3,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1),
                child: SmoothPageIndicator(
                  effect: const SlideEffect(
                    dotColor: Color(0xff71747B),
                    activeDotColor: AppColors.primaryBlue,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1,
                    dotHeight: 6,
                    dotWidth: 6,
                  ),
                  controller: _controller,
                  count: 3,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            height: 600,
            child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, int index) {
                return AppCard(
                  index: index + 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
