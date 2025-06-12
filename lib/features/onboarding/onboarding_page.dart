import "dart:developer";

import "package:finance_app_flutter/commom/constants/app_colors.dart";
import "package:finance_app_flutter/commom/constants/app_text_styles.dart";
import "package:finance_app_flutter/widgets/primary_button.dart";
import "package:flutter/material.dart";

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60.0),
            Expanded(
              child: Container(
                child: Image.asset('assets/images/man.png'),
              ),
            ),
            const SizedBox(height: 10.0),
            Text('Spend Smart', style: AppTextStyles.mediumText.copyWith(
              color: AppColors.secondary,
            )),
            Text('Save More', style: AppTextStyles.mediumText.copyWith(
              color: AppColors.secondary,
            )),
            const SizedBox(height: 10.0),
            PrimaryButton(
              label: 'Começar',
              onPressed: () {},
            ),
            const SizedBox(height: 10.0),
            TextButton(
              onPressed: () => log('message'),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Já tem uma conta? ', style: AppTextStyles.smallText.copyWith(
                    color: AppColors.grey,
                  )),
                  Text('Login', style: AppTextStyles.smallText.copyWith(
                    color: AppColors.secondary,
                  )),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
