// Widget to display a DVSA slot
import 'package:flutter/material.dart';
import '../models/slot_model.dart';

class SlotCard extends StatelessWidget {
  final SlotModel slot;
  final VoidCallback? onTap;

  const SlotCard({Key? key, required this.slot, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('${slot.dateTime}'),
        subtitle: Text('Centre: ${slot.centreId}'),
        trailing: slot.isBooked ? Icon(Icons.check, color: Colors.green) : null,
        onTap: onTap,
      ),
    );
  }
}
