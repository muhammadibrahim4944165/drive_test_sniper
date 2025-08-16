// Service for Stripe payment integration (mock for now)
class PaymentService {
  Future<bool> processPayment({required double amount, required String currency}) async {
    // TODO: Integrate with Stripe API
    await Future.delayed(Duration(seconds: 2));
    return true;
  }
}
