// Widget for in-app notifications
import 'package:flutter/material.dart';

class NotificationBanner extends StatelessWidget {
  final String message;
  final VoidCallback? onClose;

  const NotificationBanner({Key? key, required this.message, this.onClose}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialBanner(
      content: Text(message),
      actions: [
        if (onClose != null)
          TextButton(
            onPressed: onClose,
            child: Text('Close'),
          ),
      ],
    );
  }
}
