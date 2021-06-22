import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/themes/appcollors.dart';

class SocialButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.shape,
          borderRadius: BorderRadius.circular(5),
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.stroke),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 56,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: AppColors.stroke),
                ),
              ),
              child: Image.asset(AppImages.google),
            ),
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Entrar com Google",
                    style: AppTextStyles.buttonGray,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
