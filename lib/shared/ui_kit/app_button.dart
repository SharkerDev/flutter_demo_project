import 'package:demo_flutter/shared/theme/export.dart';
import 'package:flutter/cupertino.dart';

class AppButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback? onPressed;
  const AppButton({
    required this.onPressed,
    required this.buttonTitle,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Container(
          alignment: Alignment.center,
          height: 46,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primaryBlue,
            ),
          ),
          child: Text(
            buttonTitle,
            style: AppFonts.subtitleButton,
          ),
        ),
      ),
    );
  }
}
