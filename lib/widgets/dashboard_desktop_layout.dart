import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

import 'all_expenses_and_quick_invoice_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.0, bottom: 32),
                    child: AllExpensesAndQuickInvoiceSection(),
                  ),
                ),
                SizedBox(width: 24),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.0, bottom: 20),
                        child: MyCardAndTransactionHistorySection(),
                      ),
                      IncomeSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:responsive_dashboard/widgets/custom_drawer.dart';
// import 'package:responsive_dashboard/widgets/income_section.dart';
// import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

// import 'all_expenses_and_quick_invoice_section.dart';

// class DashboardDesktopLayout extends StatelessWidget {
//   const DashboardDesktopLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Expanded(child: CustomDrawer()),
//         const SizedBox(width: 32),
//         Expanded(
//           flex: 5,
//           child: CustomScrollView(
//             slivers: [
//               SliverFillRemaining(
//                 hasScrollBody: false,
//                 child: Row(
//                   children: [
//                     const Expanded(
//                       flex: 4,
//                       child: Padding(
//                         padding: EdgeInsets.only(top: 40.0, bottom: 32),
//                         child: AllExpensesAndQuickInvoiceSection(),
//                       ),
//                     ),
//                     const SizedBox(width: 24),
//                     Expanded(
//                       flex: 2,
//                       child: LayoutBuilder(
//                         builder: (context, constraints) =>  SizedBox(
//                           height: constraints.maxHeight,
//                           child: const Column(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.only(top: 40.0, bottom: 20),
//                                 child: MyCardAndTransactionHistorySection(),
//                               ),
//                               Expanded(child: IncomeSection()),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
