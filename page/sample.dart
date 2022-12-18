import 'package:flutter/material.dart';

class PeriodTracker extends StatefulWidget {
  const PeriodTracker({super.key});

  @override
  State<PeriodTracker> createState() => _PeriodTrackerState();
}

class _PeriodTrackerState extends State<PeriodTracker> {
  DateTime selectedDate = DateTime.now();
  Future<DateTime?> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
    return picked;
  }

  @override
  Widget build(BuildContext context) {
    DateTime nextPeriodDate = selectedDate.add(const Duration(days: 28));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          const Text("Pick the day when you last had your period"),
          SizedBox(
            height: 10,
          ),
          TextField(
            readOnly: true,
            onTap: _selectDate,
            decoration: InputDecoration(
              hintText: selectedDate.toString().substring(0, 10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              "Your next period would be on: ${nextPeriodDate.toString().substring(0, 10)}"),
        ],
      ),
    );
  }
}
