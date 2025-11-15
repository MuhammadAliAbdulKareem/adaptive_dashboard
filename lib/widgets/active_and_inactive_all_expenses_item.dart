import 'package:flutter/material.dart';

import '../core/utils/app_styles.dart';
import '../models/all_expenses_item_model.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.0, color: Color(0xffF1F1F1)),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          AllExpensesItemHeader(imgPath: itemModel.imgPath),
          const SizedBox(height: 34.0),
          Text(itemModel.title, style: AppStyles.styleSemiBold16),
          const SizedBox(height: 8.0),
          Text(itemModel.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 16.0),
          Text("\$${itemModel.amount}", style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imgPath: itemModel.imgPath,
            iconColor: const Color(0xffFFFFFF),
            iconBackgroundColor: Colors.white.withAlpha(26),
          ),
          const SizedBox(height: 34.0),
          Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(
              color: const Color(0xffFFFFFF),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: const Color(0xffFAFAFA),
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            "\$${itemModel.amount}",
            style: AppStyles.styleSemiBold24.copyWith(
              color: const Color(0xffFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
