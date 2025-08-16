// Widget for payment success dialog
import 'package:flutter/material.dart';

class PaymentSuccessDialog extends StatelessWidget {
  final VoidCallback onClose;

  const PaymentSuccessDialog({Key? key, required this.onClose}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Payment Successful'),
      content: Text('Thank you for your payment!'),
      actions: [
        TextButton(
          onPressed: onClose,
          child: Text('OK'),
        ),
      ],
    );
  }
}
