import 'package:flutter/material.dart';

import '../core/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.0, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          const Text('Monthly', style: AppStyles.styleMedium16),
          const SizedBox(width: 18.0),
          Transform.rotate(
            angle: -1.5707,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xff064060),
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
