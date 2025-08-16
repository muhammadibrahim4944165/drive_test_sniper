// Widget for picking a date range
import 'package:flutter/material.dart';

class DateRangePickerWidget extends StatelessWidget {
  final DateTimeRange? selectedRange;
  final ValueChanged<DateTimeRange?> onChanged;

  const DateRangePickerWidget({
    Key? key,
    required this.selectedRange,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final picked = await showDateRangePicker(
          context: context,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(Duration(days: 365)),
        );
        onChanged(picked);
      },
      child: Text(selectedRange == null ? 'Pick Date Range' : '${selectedRange!.start} - ${selectedRange!.end}'),
    );
  }
}
