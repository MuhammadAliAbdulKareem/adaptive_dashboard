import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';

import '../core/utils/app_styles.dart';
import 'my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20(context)),
        MyCardPageView(pageController: pageController),
        DotsIndicator(currentPageIndex: currentIndex),
      ],
    );
  }
}
