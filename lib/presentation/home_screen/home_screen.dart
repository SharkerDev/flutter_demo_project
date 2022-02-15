import 'package:demo_flutter/presentation/home_screen/widgets/bottom_items.dart';
import 'package:demo_flutter/shared/theme/export.dart';
import 'package:demo_flutter/shared/ui_kit/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/main';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pressedBlue,
        title: const Text('SharkSW Demo Application'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 60.0,
                  left: 24.0,
                  right: 24.0,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(
                        126,
                        126,
                        126,
                        0.15,
                      ),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Text(
                        'Fames volutpat.',
                        style: AppFonts.headline3,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nam',
                          style: AppFonts.captionLabel
                              .copyWith(color: AppColors.textGrey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Euismod.',
                              style: AppFonts.bodyBold,
                            ),
                            IconButton(
                              icon: SvgPicture.asset(AppIcons.edit),
                              onPressed: () => {},
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 8.0,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/image1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(
                        126,
                        126,
                        126,
                        0.15,
                      ),
                    ), //AppColors.cardGrey),
                  ),
                ),
                child: AppCarousel(),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: BottomItems(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
