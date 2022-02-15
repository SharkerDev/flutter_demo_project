import 'package:demo_flutter/presentation/egestas_screen/egestas_screen.dart';
import 'package:demo_flutter/presentation/fringilla_screen/fringilla_screen.dart';
import 'package:demo_flutter/shared/theme/export.dart';
import 'package:demo_flutter/shared/ui_kit/export.dart';
import 'package:flutter/material.dart';

class BottomItems extends StatelessWidget {
  const BottomItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sollicitudin in tortor.',
            style: AppFonts.headline3,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Platea sollicitudin platea habitant senectus. Placerat.',
            style: AppFonts.captionLabel.copyWith(
              color: AppColors.textGrey,
            ),
          ),
          AppExpandedButton(
            title: 'Egestas scleri',
            onTap: () => Navigator.pushNamed(context, EgestasScreen.routeName),
          ),
          AppExpandedButton(
            title: 'Consectur',
            onTap: () =>
                Navigator.pushNamed(context, FringillaScreen.routeName),
          ),
        ],
      ),
    );
  }
}
