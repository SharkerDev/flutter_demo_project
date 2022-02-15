import 'package:demo_flutter/shared/theme/export.dart';
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({Key? key}) : super(key: key);

  @override
  Divider build(BuildContext context) {
    return const Divider(
      color: AppColors.cardGrey,
    );
  }
}
