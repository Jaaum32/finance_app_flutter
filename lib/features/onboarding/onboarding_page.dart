import "package:finance_app_flutter/commom/constants/app_colors.dart";
import "package:finance_app_flutter/commom/constants/app_text_styles.dart";
import "package:flutter/material.dart";

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60.0),
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.iceWhite,
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
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: AppColors.greenGradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent, // remove sombra do ElevatedButton
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Começar',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Text('Já tem uma conta? Login', style: AppTextStyles.smallText.copyWith(
              color: AppColors.grey,
            )),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
