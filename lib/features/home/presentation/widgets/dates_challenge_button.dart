import 'package:ch_centre/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DatesChallengeButton extends StatelessWidget {
  const DatesChallengeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(10),
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Row(
          spacing: 5,
          mainAxisAlignment: .end,
          children: [
            Expanded(
              child: const Text(
                'ഈത്തപ്പഴ ചലഞ്ചില്‍ പങ്കെടുക്കുക',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16,),textAlign: TextAlign.end,
              ),
            ),
            Icon(Icons.arrow_circle_right_outlined, color: AppColors.whiteColor, size: 54),
          ],
        ),
      ),
    );
  }
}
