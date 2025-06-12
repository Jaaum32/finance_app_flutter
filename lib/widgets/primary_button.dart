import 'package:flutter/material.dart';
import 'package:finance_app_flutter/commom/constants/app_colors.dart';
import 'package:finance_app_flutter/commom/constants/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  static BorderRadius _borderRadius = BorderRadius.circular(30);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.greenGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: _borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 25),
          shape: RoundedRectangleBorder(
            borderRadius: _borderRadius,
          ),
        ),
        child: Text(
          label,
          style: AppTextStyles.smallText.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}