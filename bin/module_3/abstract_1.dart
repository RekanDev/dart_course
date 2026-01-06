void main() {
  List<PaymentMethod> paymentMethods = [
    MasterCard(),
    PayPal(),
  ];

  for (var method in paymentMethods) {
    print('Balance: ${method.balance}');
    method.pay(100);
  }
}

abstract class PaymentMethod {
  abstract final double balance;

  void pay(double amount);
}

class MasterCard implements PaymentMethod {
  @override
  double get balance => 1000;

  @override
  void pay(double amount) {
    print('Pay $amount with MasterCard');
  }
}

class PayPal implements PaymentMethod {
  @override
  double get balance => 400;

  @override
  void pay(double amount) {
    print('Pay $amount with PayPal');
  }
}
