class TransactionItemModel {
  final String title, amount, date;
  final bool isWithdrawal;

  const TransactionItemModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.isWithdrawal,
  });
}
