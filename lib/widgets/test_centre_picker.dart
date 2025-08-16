// Widget for picking test centres
import 'package:flutter/material.dart';
import '../models/test_centre_model.dart';

class TestCentrePicker extends StatelessWidget {
  final List<TestCentreModel> centres;
  final List<String> selectedIds;
  final ValueChanged<List<String>> onChanged;

  const TestCentrePicker({
    Key? key,
    required this.centres,
    required this.selectedIds,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: centres.map((centre) {
        return CheckboxListTile(
          title: Text(centre.name),
          subtitle: Text(centre.address),
          value: selectedIds.contains(centre.id),
          onChanged: (checked) {
            final newSelected = List<String>.from(selectedIds);
            if (checked == true) {
              newSelected.add(centre.id);
            } else {
              newSelected.remove(centre.id);
            }
            onChanged(newSelected);
          },
        );
      }).toList(),
    );
  }
}
