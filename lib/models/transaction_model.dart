class TransactionModel {
  String firstName,
      profileImage,
      date,
      secondName,
      cardTypeImageUrl,
      cardNumber;

  bool isCredit;

  double amountSent;

  TransactionModel(
      {this.firstName,
      this.profileImage,
      this.isCredit,
      this.date,
      this.amountSent,
      this.secondName,
      this.cardNumber,
      this.cardTypeImageUrl});
}
